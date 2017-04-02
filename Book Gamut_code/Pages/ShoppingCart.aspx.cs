using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

public partial class Pages_ShoppingCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userId = User.Identity.GetUserId();
        GetPurchasesInCart(userId);
    }

    private void GetPurchasesInCart(string userId)                              //Displaying the cart
    {
        CartModel model = new CartModel();
        double subtotal = 0;

        List<Cart> purchaseList = model.GetOrderInCart(userId);
        CreateShopTable(purchaseList,out subtotal);
        if(subtotal != 0)
        { 
            double vat = subtotal * 0.21;
            double totalAmount = subtotal + vat + 15;

            LitTotal.Text = "$" + subtotal;
            LitVAT.Text = "$" + vat;
            Literal2.Text = "$ 15";
            LitTotalAmount.Text = "$" + totalAmount;
        }
    }

    private void CreateShopTable(List<Cart> purchaseList, out double subtotal)          //Creating a Dynamic table for cart and adding books to it.
    {
        subtotal = new Double();
        BookModel model = new BookModel();

        foreach(Cart cart in purchaseList)
        {
            Book book = model.GetBook(cart.BookId);// Retreiving all books information added to his cart,from the database for a particular user

            ImageButton btnImage = new ImageButton
            {
                ImageUrl = string.Format("~/Images/Books/{0}", book.Image),
                PostBackUrl = string.Format("~/Pages/Book.aspx?ISBN={0}", book.ISBN)
            };
            LinkButton lnkButton = new LinkButton
            {
                PostBackUrl = string.Format("~/Pages/ShoppingCart.aspx"),
                Text = "delete Item",
                ID = "del"+cart.Id.ToString() 
            };

            lnkButton.Click += Delete_Item;

            int[] amount = Enumerable.Range(1, 20).ToArray();
            DropDownList ddlAmount = new DropDownList
            {
                DataSource = amount,
                AppendDataBoundItems = true,
                AutoPostBack = true,
                ID = cart.Id.ToString()
            };

            ddlAmount.DataBind();
            ddlAmount.SelectedValue = cart.Price.ToString();
            ddlAmount.SelectedIndexChanged += ddlAmount_SelectedIndexChanged;

            Table table = new Table { CssClass = "cartTable" };
            TableRow a = new TableRow();                                        //Creating a dynamic table to add all the books to the database
            TableRow b = new TableRow();

            TableCell a1 = new TableCell { RowSpan = 2, Width = 50 };
            TableCell a2 = new TableCell
            {
                Text = string.Format("<h4>{0}</h4><break/>{1}<break/>In Stock", book.Title, "ISBN : " + book.ISBN),
                HorizontalAlign = HorizontalAlign.Left,
                Width = 350
            };

            TableCell a3 = new TableCell { Text = "Unit Price<hr/>" };
            TableCell a4 = new TableCell { Text = "Quantity <hr/>" };
            TableCell a5 = new TableCell { Text = "Item Total<hr/>" };
            TableCell a6 = new TableCell { Text = "" };



            TableCell b1 = new TableCell { };
            TableCell b2 = new TableCell { Text = "$" + book.Price };
            TableCell b3 = new TableCell { Text = "" };
            double t = (double)cart.Price * (double)book.Price;
            TableCell b4 = new TableCell { Text = "$" + Math.Round(t, 2) };
            TableCell b5 = new TableCell { Text = "" };
            TableCell b6 = new TableCell { Text = "" };

            a1.Controls.Add(btnImage);
            a6.Controls.Add(lnkButton);
            b3.Controls.Add(ddlAmount);

            a.Cells.Add(a1);                                                            // Adding all the information to the table
            a.Cells.Add(a2);
            a.Cells.Add(a3);
            a.Cells.Add(a4);
            a.Cells.Add(a5);
            a.Cells.Add(a6);

            b.Cells.Add(b1);
            b.Cells.Add(b2);
            b.Cells.Add(b3);
            b.Cells.Add(b4);
            b.Cells.Add(b5);
            b.Cells.Add(b6);

            table.Rows.Add(a);
            table.Rows.Add(b);

            pnlCart.Controls.Add(table);

            subtotal += ((double)cart.Price * (double)book.Price);          //Calculating total price

        }

        Session[User.Identity.GetUserId()] = purchaseList;
             
    }


    private void ddlAmount_SelectedIndexChanged(object sender, EventArgs e)  // Changing price based on the quantity selected
    {
 	    DropDownList selectedList = (DropDownList)sender;
        int quantity = Convert.ToInt32(selectedList.SelectedValue);
        int cartId = Convert.ToInt32(selectedList.ID);
        CartModel model = new CartModel();
        model.UpdateQuantity(cartId, quantity);
        Response.Redirect("~/Pages/ShoppingCart.aspx");
    }

    private void Delete_Item(object sender, EventArgs e)                //Deleting a book from the cart
    {
        LinkButton selectedLink = (LinkButton)sender;
        string s = selectedLink.ID;
        string link = s.Substring(3);
        //string link = selectedLink.ID.Replace("del",);
        int cartId = Convert.ToInt32(link);
        CartModel model = new CartModel();
        model.DeleteCarts(cartId);
        Response.Redirect("~/Pages/ShoppingCart.aspx");

        
    }
}