using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for StudentInfor
/// </summary>
public class StudentInfo
{
    public StudentInfo()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public String emailAddress; //This email is the same as
    public String studentId; //parents (UserInfor) email.
    public String studentFirstName;
    public String studentLastName;
    public String schoolName;
    public String StudentId
    {
        get { return studentId; }
        set { studentId = value; }
    }

    public String EmailAddress
    {
        get { return emailAddress; }
        set { emailAddress = value; }
    }

    public String StudentFirstName
    {
        get { return studentFirstName; }
        set { studentFirstName = value; }
    }

    public String StudentLastName
    {
        get { return studentLastName; }
        set { studentLastName = value; }
    }

    public String SchoolName
    {
        get { return schoolName; }
        set { schoolName = value; }
    }
}