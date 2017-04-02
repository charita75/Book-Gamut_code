using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using Models;

public partial class Pages_Account_UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();

        userStore.Context.Database.Connection.ConnectionString =
            System.Configuration.ConfigurationManager.
            ConnectionStrings["c563316sp01g3ConnectionString"].ConnectionString;


        UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

        string userId = Context.User.Identity.GetUserId();
        string Email = manager.GetEmail(userId);

        UserDetailModel users = new UserDetailModel();
        UserDetail user = new UserDetail();
        user = users.GetUserInformation(userId);

        txtFirstName.Text = user.FirstName;
        txtLastName.Text = user.LastName;
        txtEmail.Text = user.Email;
        txtAddress.Text = user.Address;
        txtPostalCode.Text = user.PostalCode.ToString();


    }
    protected void Update_Click(object sender, EventArgs e)
    {
        UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();

        userStore.Context.Database.Connection.ConnectionString =
            System.Configuration.ConfigurationManager.
            ConnectionStrings["c563316sp01g3ConnectionString"].ConnectionString;


        UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

        string userId = Context.User.Identity.GetUserId();
        string Email = manager.GetEmail(userId);

        UserDetail userDetail = new UserDetail
        {
            FirstName = txtFirstName.Text,
            LastName = txtLastName.Text,
            Address = txtAddress.Text,
            PostalCode = Convert.ToInt32(txtPostalCode.Text),
            Email = txtEmail.Text
        };

        UserDetailModel model = new UserDetailModel();
        model.updateUserDetail(Email,userDetail);

    }
}