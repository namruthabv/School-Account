using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class what_do_we_do : System.Web.UI.Page
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
        if (Session["currentuser"] != null)
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

}