using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FillPage();
    }

    private void FillPage()
    {
        BookModel bookModel = new BookModel();
        List<Book> books = bookModel.GetAllBooks();

        if (books != null)
        {
            foreach (Book book in books)
            {
                Panel bookPanel = new Panel();
                ImageButton imageButton = new ImageButton();
                Label lblname = new Label();
                Label lblPrice = new Label();
                ImageModel imgm = new ImageModel();
                Img img1 = new Img();

                img1 = imgm.GetBook(book.ISBN);
                string base64String = Convert.ToBase64String(img1.Images);

                imageButton.ImageUrl = String.Format("data:image/jpg;base64,{0}", base64String);// "~/Handler.ashx?isbn=" + book.ISBN;
                imageButton.CssClass = "productImage";
                imageButton.PostBackUrl = "~/Pages/Book.aspx?ISBN=" + book.ISBN;

                lblPrice.Text = "$" + book.Price;
                lblPrice.CssClass = "productPrice";
                lblname.Text = book.Title;
                lblname.CssClass = "producrTitle";
                
                bookPanel.Controls.Add(imageButton);
                bookPanel.Controls.Add(new Literal{Text ="<br>"});
                bookPanel.Controls.Add(lblname);
                bookPanel.Controls.Add(new Literal{Text ="<br>"});
                bookPanel.Controls.Add(lblPrice);
                bookPanel.Controls.Add(new Literal{Text ="<br>"});

                PanelBooks.Controls.Add(bookPanel);


            }
        }

        else
        {
            PanelBooks.Controls.Add(new Literal { Text = "No products Found!!" });
        }
    }
}