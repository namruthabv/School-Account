<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recoverPass.aspx.cs" Inherits="recoverPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recover Password</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <script>
        function alertFunction() {
            alert("Work In Progress");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color:tomato;height:100%;width:100%;font-family:Georgia, 'Times New Roman', Times, serif">
        <asp:table runat="server">
            <asp:tablerow><asp:tablecell columnspan="2"><img src="./images/pic14.png" alt="Gate way banner" style="height:7em;width:84em"/></asp:tablecell></asp:tablerow>
            <asp:tablerow><asp:tablecell columnspan ="2" style="font-size:x-large;color:darkblue">Recover Password</asp:tablecell></asp:tablerow>
            <asp:tablerow><asp:tablecell style="background-color:lightgrey;width:2.3em;">
                <asp:Image ImageUrl="./images/email.png" AlternateText="email" style="padding-left:0.4em" runat="server" ToolTip="A valid email address"/>
                </asp:tablecell><asp:tablecell><asp:TextBox placeholder="Email Address" runat="server" ID="email1" class="crt_text" />
                        <asp:RegularExpressionValidator ID="emExpValidator" runat="server"     
                                    ErrorMessage="Please enter a valid Email Address *" Display="Dynamic" Font-Size="Medium"
                                    ControlToValidate="email1"   ForeColor="black"    
                                    ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator id="emlValidator" runat="server"
                                    ControlToValidate="email1"
                                    ErrorMessage=" Email Address is a required field *" Font-Size="Medium" Display="Dynamic"
                                    ForeColor="Black" >
                        </asp:RequiredFieldValidator>
                </asp:tablecell></asp:tablerow><asp:tablerow></asp:tablerow>
            <asp:tablerow><asp:tablecell columnspan="2" style="font-size:large;color:darkblue">The email you are typing above must match the email in records. If the emails match you will receive an email with login information.</asp:tablecell></asp:tablerow>
        </asp:table>
        <aside><asp:Button runat="server" Visible="true" Text="Cancel and go back" class="crt_button1" style="margin-right:63.5%;margin-top:0.5em;width:10em;margin-left:0.2%" OnClick="gotoPrevPage" CausesValidation="false"/>
        <asp:Button ID="Button1" runat="server" Visible="true" Text="Recover Password" class="crt_button1" style="width:10em" OnClick="recover_pass" /></aside> 
    </div>
    </form>
</body>
</html>
