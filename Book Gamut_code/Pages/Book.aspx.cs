using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

public partial class Pages_Book : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FillPage();
    }
    private void FillPage()
    {
        if (!String.IsNullOrWhiteSpace(Request.QueryString["ISBN"]))
        {
            string ISBN = Request.QueryString["ISBN"];//Retreive Book's Isbn number from Url
            BookModel bookModel = new BookModel();
            Book book = bookModel.GetBook(ISBN);//Retreive Books information from database
            ImageModel imgm = new ImageModel();
            Img img1 = imgm.GetBook(book.ISBN);//Retreive Book's Image from database

            LabelPrice.Text = "Price per unit: <br/>$"+book.Price;
            lblTitle.Text = book.Title;
            LabelDescription.Text = book.Description;
            lblItemNumber.Text = ISBN;

            string base64String = Convert.ToBase64String(img1.Images);//Converting byte[] string to image

            imgBook.ImageUrl = String.Format("data:image/jpg;base64,{0}", base64String);//Converting byte[] string to image

            //imgBook.ImageUrl = "~/Images/Books/" + book.Image;

            int[] amount = Enumerable.Range(1, 20).ToArray();
            ddlAmount.DataSource = amount;
            ddlAmount.AppendDataBoundItems = true;
            ddlAmount.DataBind();
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)//To add book to the cart
    {
        if (!String.IsNullOrWhiteSpace(Request.QueryString["ISBN"]))
        {
            string userId = Context.User.Identity.GetUserId();
            if (userId != null)
            {
                string ISBN = Request.QueryString["ISBN"];
                int amount = Convert.ToInt32(ddlAmount.SelectedValue);

                Cart cart = new Cart
                {
                    Price = amount,
                    UserId = userId,
                    DatePurchased = DateTime.Now,
                    IsInCart = true,
                    BookId = ISBN

                };

                CartModel model = new CartModel();
                lblResult.Text = model.InsertCarts(cart);
                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
            else
            {
                lblResult.Text = "Please log in to order Books";
            }

        }
    }
}