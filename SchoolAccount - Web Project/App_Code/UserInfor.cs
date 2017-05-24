using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserInfor
/// </summary>
public class UserInfor
{
    public String emailAddress;
    public String password;
    public String firstName;
    public String lastName;
    public String securityQuestion;
    public String securityQuestionAnswer;
    public String stateOrProvince;
    public String schoolDistrictName;
    public List<StudentInfo> myStudents = new List<StudentInfo>();

    public UserInfor()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public String EmailAddress
    {
        get { return emailAddress; }
        set { emailAddress = value; }
    }

    public String Password
    {
        get { return password; }
        set { password = value; }
    }

    public String FirstName
    {
        get { return firstName; }
        set { firstName = value; }
    }

    public String LastName
    {
        get { return lastName; }
        set { lastName = value; }
    }

    public String SecurityQuestion
    {
        get { return securityQuestion; }
        set { securityQuestion = value; }
    }

    public String SecurityQuestionAnswer
    {
        get { return securityQuestionAnswer; }
        set { securityQuestionAnswer = value; }
    }

    public String StateOrProvince
    {
        get { return stateOrProvince; }
        set { stateOrProvince = value; }
    }

    public String SchoolDistrictName
    {
        get { return schoolDistrictName; }
        set { schoolDistrictName = value; }
    }

}