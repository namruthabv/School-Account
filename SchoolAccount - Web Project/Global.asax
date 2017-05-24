<%@ Application Language="C#"%> 
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        Application["AllUsersList"] = new List<UserInfor>();
        // Code that runs on application startup
        List<UserInfor> allUsersList = Application["AllUsersList"] as List<UserInfor>;
        SqlDataAdapter sa = new SqlDataAdapter();

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["wad_db"].ConnectionString);
        string stat = "SELECT * from BogimanevkN_WADsp17_UserInfor";
        SqlCommand sqlCommand = new SqlCommand(stat, conn);
        try
        {
            conn.Open();
            SqlDataReader sqlReader = sqlCommand.ExecuteReader();
            while (sqlReader.Read())
            {
                UserInfor us1 = new UserInfor();
                us1.EmailAddress = ((string)sqlReader["emailAddress"]);
                us1.Password = ((string)sqlReader["password"]);
                us1.FirstName = ((string)sqlReader["firstName"]);
                us1.LastName = ((string)sqlReader["lastName"]);
                us1.SecurityQuestion = ((string)sqlReader["securityQuestion"]);
                us1.SecurityQuestionAnswer = ((string)sqlReader["securityQuestionAnswer"]);
                us1.stateOrProvince = ((string)sqlReader["stateOrProvince"]);
                us1.schoolDistrictName = ((string)sqlReader["schoolDistrictName"]);
                allUsersList.Add(us1);
            }
        }

        catch (Exception ex) {
            HttpContext.Current.Response.Write(ex);
        }
        finally
        {
            conn.Close();
        }

        // For Students :
       
        SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["wad_db"].ConnectionString);
        string stat4 = "SELECT * from BogimanevkN_WADsp17_StudentInfo";
        SqlCommand sqlCommand4 = new SqlCommand(stat4, conn4);
        try
        {
            //UserInfor us1 = new UserInfor();
            conn4.Open();
            SqlDataReader sqlReader1 = sqlCommand4.ExecuteReader();
            while (sqlReader1.Read())
            {
                StudentInfo us1 = new StudentInfo();
                us1.StudentId = ((string)sqlReader1["studentId"]);
                us1.EmailAddress = ((string)sqlReader1["emailAddress"]);
                us1.StudentFirstName = ((string)sqlReader1["studentFirstName"]);
                us1.StudentLastName = ((string)sqlReader1["studentLastName"]);
                us1.SchoolName = ((string)sqlReader1["schoolName"]);
                foreach(UserInfor usr in allUsersList)
                {
                    if (usr.emailAddress == us1.EmailAddress)
                        usr.myStudents.Add(us1);
                }
            }

        }

        catch (Exception ex1) {
            HttpContext.Current.Response.Write(ex1);
        }
        finally
        {
            conn4.Close();
        }

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs<a href="Global.asax">Global.asax</a>

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
