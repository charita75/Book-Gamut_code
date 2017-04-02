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

public partial class Pages_Account_ChangePswd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        string userId = User.Identity.GetUserId();
        if (userId == null)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
    protected void chngPswd_Click(object sender, EventArgs e)
    {

        string userId = Context.User.Identity.GetUserId();
        UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();

        userStore.Context.Database.Connection.ConnectionString =
            System.Configuration.ConfigurationManager.
            ConnectionStrings["c563316sp01g3ConnectionString"].ConnectionString;


        UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

        var user = manager.FindByName(userId);
        if (newPswd.Text == newRePswd.Text)
        {
            try
            {
                IdentityResult x = manager.ChangePassword(user.Id, crPswd.Text, newPswd.Text);
                //IdentityResult x = manager.AddPassword(user.Id, pswd.Text);
                if (x.Succeeded)
                {
                    litMsg.Text = @"<font size=4 color=red>Passwords has changed!</font>";
                }
            }
            catch (Exception ex)
            {
                litMsg.Text = @"<font size=4 color=red>" + ex + "</font>";
            }
        }
        else
        {
            litMsg.Text = @"<font size=4 color=red>Passwords must match!</font>";
        }
    }
}