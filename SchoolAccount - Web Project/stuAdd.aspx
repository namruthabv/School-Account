<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stuAdd.aspx.cs" Inherits="stuAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Add</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color:tomato;height:100%;width:100%;font-family:Georgia, 'Times New Roman', Times, serif">
        <table>
            <tr><td colspan="2"><img src="./images/pic14.png" alt="Gate way banner" style="height:7em;width:84em"/></td></tr>
            <tr><td><aside><span style="font-size:x-large;color:darkblue;margin-right:42em">My Students</span><asp:Button runat="server" ID="Button2" Text="Add Student" CssClass="addstu" OnClick="disableBut" CausesValidation="false" /></aside></td>
            </tr>
        </table>
    </div>
    <div style="height:100%;width:100%;font-family:Georgia, 'Times New Roman', Times, serif">
        <asp:table runat="server">
            <asp:tablerow><asp:tablecell columnspan ="2" style="font-size:x-large;color:darkblue">New Student Information</asp:tablecell></asp:tablerow>
            <asp:tablerow><asp:tablecell style="background-color:lightgrey;width:2em;">
                    <asp:Image ImageUrl="./images/man-user.png" AlternateText="First Name" style="padding-left:0.4em" runat="server" ToolTip="Parent First Name" /></asp:tablecell>
                <asp:tablecell><asp:TextBox Placeholder="First Name" runat="server" class="crt_text" ID="FirName" style="width:50em" />
                    <asp:RequiredFieldValidator id="FNVal" runat="server"
                                ControlToValidate="FirName"
                                ErrorMessage="First name is a required field *."
                                ForeColor="Red" Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </asp:tablecell>
            </asp:tablerow><asp:tablerow></asp:tablerow>
            <asp:tablerow><asp:tablecell style="background-color:lightgrey;width:2em;">
                    <asp:Image ImageUrl="./images/man-user.png" AlternateText="Last Name" style="padding-left:0.4em" runat="server" ToolTip="Parent Last Name" /></asp:tablecell>
                <asp:tablecell><asp:TextBox Placeholder="Last Name" runat="server" class="crt_text" ID="LasName" style="width:50em" />
                    <asp:RequiredFieldValidator id="LNVal" runat="server"
                                ControlToValidate="LasName"
                                ErrorMessage="Last name is a required field *."
                                ForeColor="Red" Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </asp:tablecell>
            </asp:tablerow><asp:tablerow></asp:tablerow>
            <asp:tablerow><asp:tablecell style="background-color:lightgrey;width:2em;">
                <asp:Image ImageUrl="./images/id-card.png" AlternateText="id card" style="padding-left:0.4em" runat="server" ToolTip="Id card of student containing only digits of length 7."/></asp:tablecell>
                <asp:tablecell><asp:TextBox Placeholder="Student Id" runat="server" class="crt_text" ID="StuId" style="width:50em" />
                    <asp:RequiredFieldValidator id="studentIDVal" runat="server"
                                ControlToValidate="StuId"
                                ErrorMessage="Student ID is a required field *."
                                ForeColor="Red" Display="Dynamic">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="stuValidator" runat="server"     
                                    ErrorMessage="Please enter a valid Student ID containing only digits of length '7' *." Display="Dynamic" Font-Size="Medium"
                                    ControlToValidate="StuId"   ForeColor="red"    
                                    ValidationExpression="^[0-9]{7}$" >
            </asp:RegularExpressionValidator>
                </asp:tablecell>
            </asp:tablerow><asp:tablerow></asp:tablerow>
            <asp:tablerow><asp:tablecell style="background-color:lightgrey;width:2em;">
                <asp:Image ImageUrl="./images/old-school.png" AlternateText="school" style="padding-left:0.4em" runat="server" ToolTip="The name of the School district your child attends"/></asp:tablecell>
                <asp:tablecell><asp:TextBox Placeholder="School District Name" runat="server" class="crt_text" ID="Scl" style="width:50em"/>
                    <asp:RequiredFieldValidator id="schoolVal" runat="server"
                                ControlToValidate="Scl"
                                ErrorMessage="School is a required field *."
                                ForeColor="Red" Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </asp:tablecell>
            </asp:tablerow><asp:tablerow></asp:tablerow>
        </asp:table>
    </div>
    <div style="background-color:tomato;height:100%;width:100%;font-family:Georgia, 'Times New Roman', Times, serif">
        <aside><asp:Button runat="server" Visible="true" Text="Cancel" class="crt_button1" style="margin-right:0.5%;margin-top:0.5em;width:5em;margin-left:22%;margin-bottom:0.2em" OnClick="gotoStuInfo12" CausesValidation="false"/>
        <!-- <asp:Button ID="Button1" runat="server" Visible="true" Text="Add to List" class="crt_button1" style="width:5em" PostBackUrl="~/stuInfo.aspx"/></aside> -->
        <asp:Button ID="Button4" runat="server" Visible="true" Text="Add to List" class="crt_button1" style="width:5em" OnClick="gotoStuInfo"/></aside> 
    </div>
    </form>
</body>
</html>
