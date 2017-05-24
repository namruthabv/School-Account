<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createAcc.aspx.cs" Inherits="createAcc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Account</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color:tomato;height:100%;width:100%;font-family:Georgia, 'Times New Roman', Times, serif">
        <asp:table runat="server">
            <asp:tablerow><asp:tablecell columnspan="2"><img src="./images/pic14.png" alt="Gate way banner" style="height:5em;width:84em"/></asp:tablecell></asp:tablerow>
            <asp:tablerow><asp:tablecell columnspan ="2" style="font-size:x-large;color:darkblue">Sign Up</asp:tablecell></asp:tablerow>
            <asp:tablerow><asp:tablecell columnspan ="2" style="font-size:large;color:darkcyan">Select state or province of your school district</asp:tablecell></asp:tablerow>
            <asp:tablerow style="height:1em"><asp:tablecell style="background-color:lightgrey;width:2.3em"><asp:Image ImageUrl="./images/global-map.png" AlternateText="states" style="padding-left:0.4em" runat="server" ToolTip="United States postal abbrevations for states" /></asp:tablecell><asp:tablecell>
                <asp:DropDownList ID="LocationState" runat="server" style="height:2.5em;width:50em">
    	            <asp:ListItem Value="nil">Selected State/Province</asp:ListItem>
    	            <asp:ListItem Value="AL">AL</asp:ListItem>
    	            <asp:ListItem Value="AK">AK</asp:ListItem>
    	            <asp:ListItem Value="AZ">AZ</asp:ListItem>
    	            <asp:ListItem Value="AR">AR</asp:ListItem>
    	            <asp:ListItem Value="CA">CA</asp:ListItem>
    	            <asp:ListItem Value="CO">CO</asp:ListItem>
    	            <asp:ListItem Value="CT">CT</asp:ListItem>
    	            <asp:ListItem Value="DC">DC</asp:ListItem>
    	            <asp:ListItem Value="DE">DE</asp:ListItem>
    	            <asp:ListItem Value="FL">FL</asp:ListItem>
    	            <asp:ListItem Value="GA">GA</asp:ListItem>
    	            <asp:ListItem Value="HI">HI</asp:ListItem>
    	            <asp:ListItem Value="ID">ID</asp:ListItem>
    	            <asp:ListItem Value="IL">IL</asp:ListItem>
    	            <asp:ListItem Value="IN">IN</asp:ListItem>
    	            <asp:ListItem Value="IA">IA</asp:ListItem>
    	            <asp:ListItem Value="KS">KS</asp:ListItem>
    	            <asp:ListItem Value="KY">KY</asp:ListItem>
    	            <asp:ListItem Value="LA">LA</asp:ListItem>
    	            <asp:ListItem Value="ME">ME</asp:ListItem>
    	            <asp:ListItem Value="MD">MD</asp:ListItem>
    	            <asp:ListItem Value="MA">MA</asp:ListItem>
    	            <asp:ListItem Value="MI">MI</asp:ListItem>
    	            <asp:ListItem Value="MN">MN</asp:ListItem>
    	            <asp:ListItem Value="MS">MS</asp:ListItem>
    	            <asp:ListItem Value="MO">MO</asp:ListItem>
    	            <asp:ListItem Value="MT">MT</asp:ListItem>
    	            <asp:ListItem Value="NE">NE</asp:ListItem>
    	            <asp:ListItem Value="NV">NV</asp:ListItem>
    	            <asp:ListItem Value="NH">NH</asp:ListItem>
    	            <asp:ListItem Value="NJ">NJ</asp:ListItem>
    	            <asp:ListItem Value="NM">NM</asp:ListItem>
    	            <asp:ListItem Value="NY">NY</asp:ListItem>
    	            <asp:ListItem Value="NC">NC</asp:ListItem>
    	            <asp:ListItem Value="ND">ND</asp:ListItem>
    	            <asp:ListItem Value="OH">OH</asp:ListItem>
    	            <asp:ListItem Value="OK">OK</asp:ListItem>
    	            <asp:ListItem Value="OR">OR</asp:ListItem>
    	            <asp:ListItem Value="PA">PA</asp:ListItem>
    	            <asp:ListItem Value="RI">RI</asp:ListItem>
    	            <asp:ListItem Value="SC">SC</asp:ListItem>
    	            <asp:ListItem Value="SD">SD</asp:ListItem>
    	            <asp:ListItem Value="TN">TN</asp:ListItem>
    	            <asp:ListItem Value="TX">TX</asp:ListItem>
    	            <asp:ListItem Value="UT">UT</asp:ListItem>
    	            <asp:ListItem Value="VT">VT</asp:ListItem>
    	            <asp:ListItem Value="VA">VA</asp:ListItem>
    	            <asp:ListItem Value="WA">WA</asp:ListItem>
    	            <asp:ListItem Value="WV">WV</asp:ListItem>
    	            <asp:ListItem Value="WI">WI</asp:ListItem>
    	            <asp:ListItem Value="WY">WY</asp:ListItem>
                </asp:DropDownList>
                   
<asp:RequiredFieldValidator ID="stateValidator" runat="server" 
             ErrorMessage=" State/Province is the required field *" ControlToValidate="LocationState" Font-Size="Medium" Display="dynamic"
                     ForeColor="black"
             InitialValue="nil"></asp:RequiredFieldValidator>
            </asp:tablecell></asp:tablerow><asp:tablerow></asp:tablerow>

            <asp:tablerow><asp:tablecell style="background-color:lightgrey;width:2em;"><asp:Image ImageUrl="./images/old-school.png" AlternateText="school" style="padding-left:0.4em" runat="server" ToolTip="The name of the School district your child attends"/></asp:tablecell>
                <asp:tablecell><asp:TextBox Placeholder="School District Name" runat="server" class="crt_text" ID="district" style="width:50em" />
                         <asp:RequiredFieldValidator id="districtvalidator" runat="server"
                    ControlToValidate="district"
                     ErrorMessage=" District Name is a required field *" Font-Size="Medium" Display="dynamic"
                     ForeColor="Black" >
</asp:RequiredFieldValidator>
                </asp:tablecell></asp:tablerow><asp:tablerow></asp:tablerow>


            <asp:tablerow><asp:tablecell style="background-color:lightgrey;width:2em;"><asp:Image ImageUrl="./images/man-user.png" AlternateText="First Name" style="padding-left:0.4em" runat="server" ToolTip="Parent First Name" /></asp:tablecell>
                <asp:tablecell><asp:TextBox placeholder="First Name" runat="server" class="crt_text" ID="first_name" style="width:50em" />
                    <asp:RequiredFieldValidator id="firstnameValidator" runat="server"
                    ControlToValidate="first_name"
                     ErrorMessage=" First Name is a required field *" Font-Size="Medium" Display="dynamic"
                     ForeColor="Black">
</asp:RequiredFieldValidator>
                </asp:tablecell></asp:tablerow><asp:tablerow></asp:tablerow>


            <asp:tablerow><asp:tablecell style="background-color:lightgrey;width:2em;"><asp:Image ImageUrl="./images/man-user.png" AlternateText="Last Name" style="padding-left:0.4em" runat="server" ToolTip="Parent Last Name" /></asp:tablecell>
   <asp:tablecell><asp:TextBox placeholder="Last Name" runat="server" class="crt_text" ID="last_name" style="width:50em" />
        <asp:RequiredFieldValidator id="lastnameValidator" runat="server"
                    ControlToValidate="last_name"
                     ErrorMessage=" Last Name is a required field *" Font-Size="Medium" Display="dynamic"
                     ForeColor="Black" >
</asp:RequiredFieldValidator> 
   </asp:tablecell></asp:tablerow><asp:tablerow></asp:tablerow>


            <asp:tablerow><asp:tablecell columnspan ="2" style="font-size:large;color:darkcyan" >NOTE: Your e-mail address will be your username</asp:tablecell></asp:tablerow>
            <asp:tablerow><asp:tablecell style="background-color:lightgrey;width:2em;"><asp:Image ImageUrl="./images/email.png" AlternateText="email" style="padding-left:0.4em" runat="server" ToolTip="A valid email address"/></asp:tablecell>
                <asp:tablecell><asp:TextBox Placeholder="Email Address" runat="server" class="crt_text" ID="email" style="width:50em" />
                     <asp:RegularExpressionValidator ID="emailexpValidator" runat="server"     
                                    ErrorMessage="Please enter a valid Email Address *" Display="Dynamic" Font-Size="Medium"
                                    ControlToValidate="email"   ForeColor="black"    
                                    ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />
                    <asp:RequiredFieldValidator id="emailValidator" runat="server"
                    ControlToValidate="email"
                     ErrorMessage=" Email Address is a required field *" Font-Size="Medium" Display="Dynamic"
                     ForeColor="Black" >
</asp:RequiredFieldValidator>
                </asp:tablecell></asp:tablerow><asp:tablerow></asp:tablerow>


            <asp:tablerow><asp:tablecell style="background-color:lightgrey;width:2em;"><asp:Image ImageUrl="./images/email.png" AlternateText="email" style="padding-left:0.4em" runat="server" ToolTip="Retype the email address entered above"/></asp:tablecell>
            <asp:tablecell><asp:TextBox placeholder="Retype Email Address" runat="server" class="crt_text" id="re_email" style="width:50em" AutoPostBack="true" />
                 <asp:RequiredFieldValidator id="reemailValidator" runat="server"
                    ControlToValidate="re_email"
                     ErrorMessage=" Email Address is a required field *" Font-Size="Medium" Display="Dynamic"
                     ForeColor="black">
</asp:RequiredFieldValidator>
        <asp:CompareValidator runat="server"
            ControlToValidate="re_email"
            ControlToCompare="email" 
            ErrorMessage="Email address do not match."  Font-Size="Medium" Display="Dynamic" ForeColor="black"/>

            </asp:tablecell></asp:tablerow><asp:tablerow></asp:tablerow>

            <asp:tablerow><asp:tablecell style="background-color:lightgrey;width:2em;"><asp:Image ImageUrl="./images/password.png" AlternateText="Password" style="padding-left:0.4em" runat="server" ToolTip="Password must be 8 to 10 characters, contains atleast one digit and one alphabetic character, and must not contain special character. "/></asp:tablecell>
                <asp:tablecell><asp:TextBox placeholder="Password" runat="server" class="crt_text" ID="password" TextMode="Password" style="width:50em" />
                     <asp:RequiredFieldValidator id="pwdValidator" runat="server"
                    ControlToValidate="password"
                     ErrorMessage=" Password is a required field *" Font-Size="Medium" Display="Dynamic"
                     ForeColor="black">
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="pwdexpValidator" runat="server"     
                                    ErrorMessage="Please enter a valid Password *" Display="Dynamic" Font-Size="Medium"
                                    ControlToValidate="password"   ForeColor="black"    
                                    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,10}$" >
            </asp:RegularExpressionValidator>
                </asp:tablecell></asp:tablerow><asp:tablerow></asp:tablerow>

            <asp:tablerow><asp:tablecell style="background-color:lightgrey;width:2em;"><asp:Image ImageUrl="./images/password.png" AlternateText="Password" style="padding-left:0.4em" runat="server" ToolTip="Password must be 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special character "/></asp:tablecell>
                <asp:tablecell><asp:TextBox placeholder="Retype Password" runat="server" TextMode="Password" class="crt_text" ID="re_password" style="width:50em" />
                      <asp:RequiredFieldValidator id="repwdValidator" runat="server"
                    ControlToValidate="re_password"
                     ErrorMessage=" Password is a required field *" Font-Size="Medium" Display="Dynamic"
                     ForeColor="black">
</asp:RequiredFieldValidator>
        <asp:CompareValidator runat="server"
            ControlToValidate="re_password"
            ControlToCompare="password" 
            ErrorMessage="Password do not match."  Font-Size="Medium" Display="Dynamic" ForeColor="black"/>
                </asp:tablecell></asp:tablerow><asp:tablerow></asp:tablerow>

            <asp:tablerow><asp:tablecell columnspan ="2" style="font-size:large;color:darkcyan" >Select the security question </asp:tablecell></asp:tablerow>
            <asp:tablerow style="height:1em"><asp:tablecell style="background-color:lightgrey;width:2.3em"><asp:Image ImageUrl="./images/question.png" AlternateText="states" style="padding-left:0.4em" runat="server" ToolTip="Select a security question"/></asp:tablecell>
                <asp:tablecell><asp:DropDownList ID="DropDownList1" runat="server" style="height:2.5em;width:50em">
                    <asp:ListItem Value="nil">Select a security question</asp:ListItem>
    	            <asp:ListItem Value="q1">What is your mother's maiden name?</asp:ListItem>
    	            <asp:ListItem Value="q2">What was your childhood nickname?</asp:ListItem>
    	            <asp:ListItem Value="q3">What is the name of your favorite childhood friend?</asp:ListItem>
    	            <asp:ListItem Value="q4">What is your favorite sport team?</asp:ListItem>
    	            <asp:ListItem Value="q5">What was the make and model of your first car?</asp:ListItem>
    	            <asp:ListItem Value="q6">What school did you attend for sixth grade?</asp:ListItem>
    	            <asp:ListItem Value="q7">What was the last name of your third grade teacher?</asp:ListItem>
    	            <asp:ListItem Value="q8">In what town was your first job?</asp:ListItem>
                    <asp:ListItem Value="q9">What is your favorite movie?</asp:ListItem>
                    <asp:ListItem Value="q10">Who is your childhood sports hero?</asp:ListItem>
                    <asp:ListItem Value="q11">In what year was your father born?</asp:ListItem>
                </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ErrorMessage=" Security Question is required field *" ControlToValidate="DropDownList1" Font-Size="Medium" Display="dynamic"
                     ForeColor="Black"
             InitialValue="nil"></asp:RequiredFieldValidator>
            </asp:tablecell></asp:tablerow><asp:tablerow></asp:tablerow>

            <asp:tablerow><asp:tablecell style="background-color:lightgrey;width:2em;"><asp:Image ImageUrl="./images/question.png" AlternateText="question" style="padding-left:0.4em" runat="server" ToolTip="Enter an answer to the security question"/></asp:tablecell>
                <asp:tablecell><asp:TextBox Placeholder="Type answer to the security question" runat="server" class="crt_text" id="answer" style="width:50em"/>
                      <asp:RequiredFieldValidator id="ansValidator1" runat="server"
                    ControlToValidate="answer"
                     ErrorMessage=" Answer is a required field *" Font-Size="Medium" Display="Dynamic"
                     ForeColor="Black">
</asp:RequiredFieldValidator>
                </asp:tablecell></asp:tablerow><asp:tablerow></asp:tablerow><asp:tablerow></asp:tablerow>


        </asp:table>

        <aside><asp:Button runat="server" Visible="true" Text="Cancel" class="crt_button1" OnClick="gotoMainPage" style ="margin-left:24%;margin-bottom:0.2em;" CausesValidation="false"/>
        <asp:Button ID="crt_but1" runat="server" Visible="true" Text="Create Account" class="crt_button1" OnClick="create" /> </aside>

    </div>
    </form>
</body>
</html>

