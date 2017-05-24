using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class stuAdd : System.Web.UI.Page
{
    protected void gotoStuInfo(object sender, EventArgs e)
    {
        if (Session["currentuser"] != null)
        {
            UserInfor myses = (UserInfor)Session["currentuser"];
            StudentInfo data1 = new StudentInfo
            {
                //emailAddress = email.Text,
                studentFirstName = FirName.Text,
                studentLastName = LasName.Text,
                studentId = StuId.Text,
                schoolName = Scl.Text,
                emailAddress = myses.EmailAddress
            };

           

            UserInfor UserObj = (UserInfor)Session["currentuser"];
            string emailId = UserObj.emailAddress;

            List<UserInfor> allUsersList = Application["AllUsersList"] as List<UserInfor>;
            if (allUsersList != null)
            {
                var item = allUsersList.FirstOrDefault(p => p.emailAddress == emailId);
                if (item != null)
                {
                    item.myStudents.Add(data1);
                }
            }

        }
        update_db();
        Server.Transfer("~/stuInfo.aspx"); 
    }
    protected void gotoStuInfo12(object sender, EventArgs e)
    {
        Server.Transfer("~/stuInfo.aspx");
    }
    protected void disableBut(object sender, EventArgs e)
    {
        Button2.Enabled = false;
        Button2.Attributes.CssStyle[HtmlTextWriterStyle.Color] = "gray";
    }

    protected void update_db()
    {
        UserInfor myses = (UserInfor)Session["currentuser"];
        SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["wad_db"].ConnectionString);
        try
        {
            conn4.Open();
            string stat4 = "INSERT into BogimanevkN_WADsp17_StudentInfo (studentId, emailAddress, studentfirstName, studentLastName, schoolName) values ('" + StuId.Text + "', '" + myses.EmailAddress + "', '" + FirName.Text + "', '" + LasName.Text + "', '" + Scl.Text + "')";
            SqlCommand sqlCommand1 = new SqlCommand(stat4, conn4);
            sqlCommand1.ExecuteNonQuery();
            //SqlDataReader sqlReader = sqlCommand.ExecuteReader();
        }
        catch (Exception ex1)
        {
            HttpContext.Current.Response.Write(ex1);
        }
        finally
        {
            conn4.Close();
        }

        /*UserInfor myses = (UserInfor)Session["currentuser"];
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["wad_db"].ConnectionString);
        try
        {
            conn1.Open();
            string stat2 = "INSERT into BogimanevkN_WADsp17_StudentInfo (studentId, emailAddress, studentFirstName, studentLastName, schoolName) values ('" + StuId.Text + "', '" + myses.EmailAddress + "', '" + FirName.Text + "', '" + LasName.Text + "', '" + Scl.Text + "')";
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
        } */
    } 

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    

}
