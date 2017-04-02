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

public partial class Pages_Account_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void signUp_Click(object sender, EventArgs e)
    {
        UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();

        userStore.Context.Database.Connection.ConnectionString =
            System.Configuration.ConfigurationManager.
            ConnectionStrings["c563316sp01g3ConnectionString"].ConnectionString;


        UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

        var user = new IdentityUser { UserName = txtUsername.Text };

        if (txtPwd.Text == txtCnfPwd.Text)
        {
            try
            {
                IdentityResult result = manager.Create(user, txtPwd.Text);
                manager.SetEmail(user.Id, txtEmail.Text);
                manager.SendEmail(user.Id, "Confirmation mail", "Welcome to BOOK-GAMUT");
                if (result.Succeeded)
                {
                    UserDetail userDetail = new UserDetail
                    {
                        GUID = user.Id,
                        FirstName = txtFirstName.Text,
                        LastName = txtLastName.Text,
                        Address = txtAddress.Text,
                        PostalCode = Convert.ToInt32(txtPostalCode.Text),
                        Email = txtEmail.Text
                    };
                    
                    UserDetailModel model = new UserDetailModel();
                    model.InsertUserDetail(userDetail);

                    //Store user in DB
                    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                    var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                    //If succeedeed, log in the new user and set a cookie and redirect to homepage
                    authenticationManager.SignIn(new AuthenticationProperties(), userIdentity);
                    Response.Redirect("~/Home.aspx");
                }
                else
                {
                    litStatus.Text = result.Errors.FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                litStatus.Text = "Username Already Exist choose a different one";
            }
        }
        else
        {
            litStatus.Text = "Passwords must match!";
        }
    }
}