using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Pages_Manage_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        BookModel bookModel = new BookModel();
        Book book = AddBook();

        LblResult.Text = bookModel.InsertBook(book);

        Img img = new Img();
        img.ISBN = TxtISBN.Text;
        img.Images = FileUpload1.FileBytes;
        ImageModel imagemodel = new ImageModel();
        imagemodel.InsertImage(img);
    }
    private Book AddBook()
    {
        Book book = new Book();

        book.Title = TxtTitle.Text;
        book.Price = Convert.ToInt32(TxtPrice.Text);
        book.Publication = TxtPublication.Text;
        book.ISBN = TxtISBN.Text;
        book.TypeId = Convert.ToInt32(ddlBookType.SelectedValue);
        book.Description = TxtDescription.Text;
        book.Author = TxtAuthor.Text;
        book.Image = TxtISBN.Text + Path.GetExtension(FileUpload1.FileName);

        string path = Server.MapPath("~/Images/Books/");
        //FileUpload1.SaveAs(path + TxtISBN.Text + Path.GetExtension(FileUpload1.FileName));

       /* byte[] img1 = null;

        string imgLoc = Path.GetFullPath(FileUpload1.FileName);// Path.GetFileNameWithoutExtension(FileUpload1.FileName)+Path.GetExtension(FileUpload1.FileName);
        FileStream fs = new FileStream(imgLoc, FileMode.Open, FileAccess.Read);
        BinaryReader br = new BinaryReader(fs);
        img1 = br.ReadBytes((int)fs.Length);*/

        return book;


    }
}