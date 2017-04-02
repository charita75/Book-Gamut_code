using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System.Net.Mail;
using System.Text;
using System.Web.Mvc;
using Microsoft.Owin.Security.DataProtection;
using Microsoft.AspNet.Identity.Owin;

public partial class Pages_Account_RecoverPwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        
    }
    protected void ForgotPwdBtn_Click(object sender, EventArgs e)
    {
        UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();

        userStore.Context.Database.Connection.ConnectionString =
            System.Configuration.ConfigurationManager.
            ConnectionStrings["c563316sp01g3ConnectionString"].ConnectionString;

        UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);
        var provider = new Microsoft.Owin.Security.DataProtection.DpapiDataProtectionProvider();
        manager.UserTokenProvider = new Microsoft.AspNet.Identity.Owin.DataProtectorTokenProvider<IdentityUser>(provider.Create("uid"));
        

        //var provider = new DpapiDataProtectionProvider()


        var user = manager.FindByName(UserName.Text);
        //var token = manager.GeneratePasswordResetTokenAsync(user.Id);

        if (user != null)
        {
            var token = manager.GeneratePasswordResetTokenAsync(user.Id);

            //string code = await manager.GeneratePasswordResetTokenAsync(user.Id);
            //string x = token.ToString();
            //token = await HttpUtility.UrlEncode(token);


            if (token != null)
            {
                string toMail = manager.GetEmail(user.Id);
                MailMessage mailMsg = new MailMessage();
                mailMsg.From = new MailAddress("kanigiri.15@gmail.com`");
                mailMsg.To.Add(toMail);

                StringBuilder msg = new StringBuilder();

                msg.Append("Dear " + UserName.Text + ";");
                msg.Append("<br/><br/> Please click on the following link to reset your Password:");
                msg.Append("<br/>");
                msg.Append(" http://dcm.uhcl.edu/c563316sp01g3/Pages/Account/resetPwd.aspx?uid=" + UserName.Text);
                msg.Append("<br/><br/><b> BOOK GAMUT<b/>");

                mailMsg.IsBodyHtml = true;

                mailMsg.Body = msg.ToString();
                mailMsg.Subject = "Reset your Password";
                SmtpClient smtpclnt = new SmtpClient();
                smtpclnt.Host = "smtp.gmail.com";
                smtpclnt.Port = 587;
                smtpclnt.UseDefaultCredentials = true;
                smtpclnt.Credentials = new System.Net.NetworkCredential("kudaykumar15@gmail.com", "iam15@kanigiri");
                smtpclnt.EnableSsl = true;
                smtpclnt.Send(mailMsg);

                litMsg.Text = "Reset link Has Be sent to " + toMail;
            }
            else
            {
                litMsg.Text = "Email not found";
            }
        }
        else
        {
            litMsg.Text = "**Oops... Please Enter a valid Username **";
        }
    }

}