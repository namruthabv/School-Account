using System;
using System.Collections.Generic;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;



public partial class stuInfo : System.Web.UI.Page
{
    protected void gotoMainPage(object sender, EventArgs e)
    {
        Server.Transfer("~/Default.aspx");
    }
    protected void gotoStuAddPage(object sender, EventArgs e)
    {
        Server.Transfer("~/stuAdd.aspx");
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.PreviousPage != null)
        {
            if (Session["currentuser"] != null)
            {
                UserInfor UserObj1 = (UserInfor)Session["currentuser"];
                string firstname = UserObj1.firstName;
                string lastname = UserObj1.lastName;
                lbname.Text = firstname + " " + lastname;


                UserInfor UserObj = (UserInfor)Session["currentuser"];
                string emailId = UserObj.emailAddress;

                List<UserInfor> allUsersList = Application["AllUsersList"] as List<UserInfor>;
                if (allUsersList != null)
                {
                    var item = allUsersList.FirstOrDefault(p => p.emailAddress == emailId);
                    if (item.myStudents.Count != 0)
                    {
                        foreach (StudentInfo item1 in item.myStudents)
                        {
                            TableRow row = new TableRow();
                            TableCell cell1 = new TableCell();
                            TableCell cell2 = new TableCell();
                            TableCell cell3 = new TableCell();
                            TableCell cell4 = new TableCell();

                            cell1.Text = item1.studentFirstName;
                            cell2.Text = item1.studentLastName;
                            cell3.Text = item1.studentId;
                            cell4.Text = item1.schoolName;

                            row.Cells.Add(cell1);
                            row.Cells.Add(cell2);
                            row.Cells.Add(cell3);
                            row.Cells.Add(cell4);
                            myTable.Rows.Add(row);
                        }

                    }
                    else
                    {
                        TableRow row = new TableRow();
                        TableCell cell1 = new TableCell();
                        cell1.Text = "No Records Found";
                        row.Cells.Add(cell1);
                        myTable.Rows.Add(row);
                    }

                }

            }
        }
    }
}
