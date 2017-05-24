<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color:tomato;height:100%;width:100%;font-family:Georgia, 'Times New Roman', Times, serif">
        <asp:table runat="server">
            <asp:tablerow><asp:tablecell columnspan="2"><img src="./images/pic14.png" alt="Gate way banner" style="height:7em;width:84em"/></asp:tablecell></asp:tablerow>
            <asp:tablerow><asp:tablecell columnspan ="2" style="font-size:x-large;color:darkblue">Login to your account</asp:tablecell></asp:tablerow>
            <asp:tablerow><asp:tablecell style="background-color:lightgrey;width:2.3em;">
                         <asp:Image ImageUrl="./images/email.png" AlternateText="email" style="padding-left:0.4em" runat="server" ToolTip="A valid email address"/>
                         </asp:tablecell><asp:tablecell><asp:TextBox ID="email" Placeholder="Email Address" runat="server" Cssclass="crt_text" style="width:55em" />
                            <asp:RegularExpressionValidator ID="emailexpValidator" runat="server"     
                                    ErrorMessage="Please enter a valid Email Address *" Display="Dynamic" Font-Size="Medium"
                                    ControlToValidate="email"   ForeColor="black"    
                                    ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />
                    <asp:RequiredFieldValidator id="emailValidator" runat="server"
                    ControlToValidate="email"
                     ErrorMessage=" Email Address is a required field *" Font-Size="Medium" Display="Dynamic"
                     ForeColor="Black" >
                    </asp:RequiredFieldValidator>
                    </asp:tablecell></asp:tablerow>
            <asp:tablerow></asp:tablerow>
            <asp:tablerow><asp:tablecell style="background-color:lightgrey;width:2.3em;">
                          <asp:Image ImageUrl="./images/password.png" AlternateText="Password" style="padding-left:0.4em" runat="server" ToolTip="Password must be 8 to 10 characters, contains atleast one digit and one alphabetic character, and must not contain special character."/>
                          </asp:tablecell><asp:tablecell><asp:TextBox ID="password" Placeholder="Password" TextMode="Password" runat="server" Cssclass="crt_text" style="width:55em" />
                              <asp:RequiredFieldValidator id="pwdValidator" runat="server"
                    ControlToValidate="password"
                     ErrorMessage=" Password is a required field *" Font-Size="Medium" Display="Dynamic"
                     ForeColor="black">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="pwdexpValidator" runat="server"     
                                    ErrorMessage="Please enter a valid Password *" Display="Dynamic" Font-Size="Medium"
                                    ControlToValidate="password"   ForeColor="black"    
                                    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,10}$">
                    </asp:RegularExpressionValidator>
                 </asp:tablecell></asp:tablerow>
            <asp:tablerow></asp:tablerow>

        </asp:table>
    </div>
    <aside><asp:Button runat="server" Visible="true" Text="Cancel" class="crt_button1" style="margin-right:0.25em;margin-top:0.5em" OnClick="gotoMainPage" CausesValidation="false" />
    <asp:Button ID="Button1" runat="server" Visible="true" Text="Login" class="crt_button1" OnClick="gotoStuInfo" /> 
    <div style="position:relative;float:right">
        <asp:HyperLink NavigateUrl="./recoverPass.aspx" Text="Forgot your username and password?" runat="server" /><br/>
        <asp:HyperLink NavigateUrl="./createAcc.aspx" Text="Sign up today!" runat="server" style="margin-left:60%" /><br/>
    </div>
    </aside>
    </form>
</body>
</html>
