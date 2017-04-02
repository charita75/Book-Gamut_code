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

public partial class Pages_Account_resetPwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void updatePswd_Click(object sender, EventArgs e)
    {
        UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();

        userStore.Context.Database.Connection.ConnectionString =
            System.Configuration.ConfigurationManager.
            ConnectionStrings["c563316sp01g3ConnectionString"].ConnectionString;


        UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

        var user = manager.FindByName(Request.QueryString["uid"]);
        if (pswd.Text == cnfPswd.Text)
        {
            try
            {
                manager.Update(user);
                manager.RemovePassword(user.Id);
                IdentityResult x = manager.AddPassword(user.Id, pswd.Text);
                if (x.Succeeded)
                {
                    LitMsg.Text = @"<font size=4 color=red>Passwords has changed!</font>";
                }
            }
            catch (Exception ex)
            {
                LitMsg.Text = @"<font size=4 color=red>" + ex + "</font>";
            }
        }
        else
        {
            LitMsg.Text = @"<font size=4 color=red>Passwords must match!</font>";
        }

    }
}