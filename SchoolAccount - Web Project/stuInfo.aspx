<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stuInfo.aspx.cs" Inherits="stuInfo" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Information:</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color:tomato;height:100%;width:100%;font-family:Georgia, 'Times New Roman', Times, serif">
        <table>
            <tr><td colspan="2"><img src="./images/pic14.png" alt="Gate way banner" style="height:7em;width:84em"/></td></tr>
            <tr><td><aside><span style="font-size:x-large;color:darkblue;margin-right:1em;" >My Students for
                <asp:label runat="server" Id ="lbname" style="font-size:x-large;color:darkblue;"></asp:label></span>
                <asp:Button runat="server" ID="Button2" Text="Add Student" CssClass="addstu" OnClick="gotoStuAddPage" style="position:absolute;right:0;margin-right:1em;margin-bottom:1em" /></aside></td>
               <!-- <td><asp:Button runat="server" ID="Button1" Text="Add Student" CssClass="addstu" /></td> -->
            </tr>
            <tr style="height:0.6em"></tr>
        </table>
        <asp:Table ID="myTable" runat="server" Width="100%" class="add_tab" style="background-color:lightgray;margin-top:0.5em"> 
            <asp:TableRow style="font-weight:bold">
                <asp:TableCell>First Name</asp:TableCell>
                <asp:TableCell>Last Name</asp:TableCell>
                <asp:TableCell>Student Id</asp:TableCell>
                <asp:TableCell>School Name</asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <asp:Button ID="Button3" runat="server" Visible="true" Text="OK" class="crt_button1" style="width:3em;margin-top:0.3em;margin-left:27em" OnClick="gotoMainPage" />
    </div>
    </form>
</body>
</html>
