using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class createAcc : System.Web.UI.Page
{
    bool a;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        a = this.IsPostBack;
        string b = re_email.Text;
        if (a)
        {
            validate(b);

        }
    }
    protected void gotoMainPage(object sender, EventArgs e)
    {
        Server.Transfer("~/Default.aspx");
    }

    protected void validate(string b)
    {
        List<UserInfor> allUsersList = Application["AllUsersList"] as List<UserInfor>;
        if (allUsersList != null)
        {
            foreach (UserInfor item in allUsersList)
            {
                //list.Add(item.emailAddress);
                if (item.emailAddress == b)
                {

                    Page.ClientScript.RegisterStartupScript(
                    this.GetType(), "Alert", "alert('User " + " " + b + " " + " already exists. Please login');", true);

                } 
            }
        }
    }


    protected void create(object sender, EventArgs e)
    {
       
        List<UserInfor> allUsersList = Application["AllUsersList"] as List<UserInfor>;
        UserInfor data = new UserInfor
        {
            emailAddress = email.Text,
            password = password.Text,
            firstName = first_name.Text,
            lastName = last_name.Text,
            securityQuestion = DropDownList1.Text,
            securityQuestionAnswer = answer.Text,
            stateOrProvince = LocationState.Text,
            schoolDistrictName = district.Text
        };
        allUsersList.Add(data);
        HttpContext.Current.Application["allUsersList"] = allUsersList;

        Page.ClientScript.RegisterStartupScript(
        this.GetType(), "Alert", "alert('Thank you for signing up. You can now login using the Log In option. An email has also been sent to the email address you provided during Sign Up.');window.location = 'Login.aspx';", true);
        string name = data.firstName + " " + data.lastName;
        send_pass_mail(name, data.emailAddress);

        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["wad_db"].ConnectionString);
        try
        {
            conn1.Open();
            string stat2 = "INSERT into BogimanevkN_WADsp17_UserInfor (emailAddress, password, firstName, lastName, securityQuestion, securityQuestionAnswer, stateOrProvince, schoolDistrictName) values ('" + data.emailAddress + "', '" + data.password + "', '" + data.firstName + "', '" + data.lastName + "', '" + data.securityQuestion + "', '" + data.securityQuestionAnswer + "', '" + data.stateOrProvince + "', '" + data.schoolDistrictName + "')";
            SqlCommand sqlCommand1 = new SqlCommand(stat2, conn1);
            sqlCommand1.ExecuteNonQuery();
            //SqlDataReader sqlReader = sqlCommand.ExecuteReader();
        }
        catch (Exception ex1)
        {
            HttpContext.Current.Response.Write(ex1);
        }
        finally
        {
            conn1.Close();
        }
    }
    protected void send_pass_mail(string name_d,string email)
    {
        MailMessage msg = new MailMessage();

        msg.To.Add(email);
        MailAddress address = new MailAddress("namrathabv91@gmail.com", "GateWay School Account Provider");
        msg.From = address;
        msg.Subject = "New sign up notification!";
        msg.Body = "Dear " + name_d + "," + Environment.NewLine + Environment.NewLine + "Thank you for signing up with us."

            + Environment.NewLine + "You can now access your student school account at http://dcm.uhcl.edu/c432017sp01bogimanevijayakn/Login.aspx."
            + Environment.NewLine
            + Environment.NewLine + "Thank you again for signing up. If you have any questions, please contact us at http://dcm.uhcl.edu/c432017sp01bogimanevijayakn/contact_page.aspx."
            + Environment.NewLine + "With Best Wishes,"
            + Environment.NewLine + "Gateway School Account Administration Team";

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