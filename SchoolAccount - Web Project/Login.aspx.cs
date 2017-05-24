using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void gotoStuInfo(object sender, EventArgs e)
    {
        string emailId = email.Text;
        string pass = password.Text;
        List<UserInfor> allUsersList = Application["AllUsersList"] as List<UserInfor>;
        if (allUsersList != null)
        {
            bool contains = allUsersList.Any(p => p.emailAddress == emailId && p.password == pass);
            bool contains_email = allUsersList.Any(p => p.emailAddress == emailId && p.password != pass);
            var item = allUsersList.FirstOrDefault(p => p.emailAddress == emailId && p.password == pass);
            if(item != null)
            {
                Session["currentuser"] = item;
            }
            if (contains)
            {
                    Server.Transfer("~/stuInfo.aspx");
            }
            else if (contains_email)
            {
                Page.ClientScript.RegisterStartupScript(
                     this.GetType(), "Alert", "alert('Password is Incorrect.');", true);
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(
                    this.GetType(), "Alert", "alert('It appears this user is not in our database. Please go to the Sign Up page');", true);
            }
         }
        else
        {
            Page.ClientScript.RegisterStartupScript(
                   this.GetType(), "Alert", "alert('It appears this user is not in our database. Please go to the Sign Up page');", true);
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void gotoMainPage(object sender, EventArgs e)
    {
        Server.Transfer("~/Default.aspx");
    }
}