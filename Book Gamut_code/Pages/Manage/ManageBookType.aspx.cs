using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Manage_ManageBookType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        BookTypeModel model = new BookTypeModel();
        BookType bt = createBookType();
        
        LblResult.Text = model.InsertBookType(bt);
    }

    private BookType createBookType()
    {
        BookType b = new BookType();
        b.Name = Name.Text;

        return b;
    }
}