using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
        if (Session["currentuser"] != null)
        {
            login_dropd();
        }

    }
    protected void goToCreateAccPg(object sender, EventArgs e)
    {
            Server.Transfer("~/createAcc.aspx");
    }
    protected void goToLoginpg(object sender, EventArgs e)
    {
        if(Session["currentuser"]!=null)
        {
            actions();
        }
        else
            Server.Transfer("Login.aspx");
    }
    public void actions()
    {
        login_but.Text = "Login";
        create_but.Enabled = true;
        create_but.Attributes.CssStyle[HtmlTextWriterStyle.Color] = "white";
        create_dpd.Enabled = true;
        login_dpd1.Text = "Login";
        Page.ClientScript.RegisterStartupScript(
                this.GetType(), "Alert", "alert('You are now Logged Out.');", true);
        Session.Abandon();
    }
    protected void login_dropd()
    { 
            login_but.Text = "Logout";
            create_dpd.Enabled = false;
            login_dpd1.Text = "Logout";
            create_but.Enabled = false;
            create_but.Attributes.CssStyle[HtmlTextWriterStyle.Color] = "gray";
    }
    protected void tell_me_more(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(
        this.GetType(), "Alert", "alert('Thank You for your message. An email has been sent to the email address you entered. Please feel free to contact us anytime in the future so we will address your concerns.');", true);

        MailMessage msg = new MailMessage();

        msg.To.Add(Email.Text);
        MailAddress address = new MailAddress("namrathabv91@gmail.com", "Gateway School Account Administration Team");
        msg.From = address;
        msg.Subject = "We have received your message!";
        msg.Body = "Dear Parent,\n"
            + Environment.NewLine + "You are receiving this email because a you contacted us with a comment , question(s) and/or a concern(s).\n"
            + Environment.NewLine + "Our support staff will respond within the next 48 hours.\n"
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