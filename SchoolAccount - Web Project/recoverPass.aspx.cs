using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class recoverPass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void alertFunction()
    {
        Button1.OnClientClick = "return alertFunction();";
    }
    protected void gotoPrevPage(object sender, EventArgs e)
    {
        Server.Transfer("~/Login.aspx");
    }
    protected void recover_pass(object sender, EventArgs e)
    {
        string emailId = email1.Text;

        List<UserInfor> allUsersList = Application["AllUsersList"] as List<UserInfor>;
        string cur_pass = null;
        if (allUsersList != null)
        {
            var item = allUsersList.FirstOrDefault(p => p.emailAddress == emailId);
            if (item != null)
            {
                //item.myStudents.Add(data1);
                cur_pass = item.password;
            }
        }
        if (cur_pass != null || !string.IsNullOrWhiteSpace(cur_pass))
        {
            Page.ClientScript.RegisterStartupScript(
                this.GetType(), "Alert", "alert('Thank You. An email notification has also been sent to the address we have in our file.');window.location = 'login.aspx';", true);
            send_pass_mail(cur_pass, emailId);
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(
                this.GetType(), "Alert", "alert('Sorry we cannot find a matching email. Please Sign Up. ');window.location = 'createAcc.aspx';", true);
        }

    }
    protected void send_pass_mail(string cur_passwrd, string email)
    {

        MailMessage msg = new MailMessage();

        msg.To.Add(email);
        MailAddress address = new MailAddress("namrathabv91@gmail.com", "Gateway School Account Administration Team");
        msg.From = address;
        msg.Subject = "We have received your message!";
        msg.Body = "Dear Parent,\n"
            + Environment.NewLine + "You are receiving this email because you requested to recover your password. \n"
            + Environment.NewLine + "Your current password is: <" + cur_passwrd  + ">\n"
            + Environment.NewLine + "Thank You."
            + Environment.NewLine + "Gateway School Account Administration Team ";

        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        client.EnableSsl = true;

        NetworkCredential credentials = new NetworkCredential("namrathabv91@gmail.com", "password123");
        client.Credentials = credentials;
        try
        {
            client.Send(msg);

        }
        catch
        {
            Page.ClientScript.RegisterStartupScript(
                this.GetType(), "Alert", "alert('Email is not sent');", true);

        }
    }
}