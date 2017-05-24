<%@ Page Language="C#" AutoEventWireup="true" CodeFile="support.aspx.cs" Inherits="support" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Support Page</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <script>
        function alertFunction() {
            alert("Work In Progress");
        }
     
    </script>
</head>
<body>
    <form runat="server">
        <div class="banner">
            <!-- For the drop down menu : For parents -->
            <div class="dropdown">
                <button class="dropbtn">For Parents</button><b style="color:black">&#9654</b>
                <div class="dropdown-content" style="background-color:maroon">
                    <asp:HyperLink ID="create_dpd" NavigateUrl="./createAcc.aspx" Text="Create Account" runat="server" /><br/>
                    <asp:LinkButton Id="login_dpd1" OnClick="goToLoginpg" Text="Login" runat="server" CausesValidation="false" /><br/>
                    <asp:HyperLink NavigateUrl="./faq.aspx" Text="Frequently Asked Questions" runat="server" /><br/>
                    <asp:HyperLink NavigateUrl="./support.aspx" Text="Support" runat="server" /><br/> 
                </div>
            </div>

                <aside class="text_content"><span onclick="window:location='./what_do_we_do.aspx'">What Do We Do</span> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <span onclick="window:location='http://www.foodservice.com/blogs/'">Blog</span>   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp </aside>
                <aside class="ban_img">
                <img src="./images/pic11.png" alt=" GatewaySchool.com"/>
                <asp:Button runat="server" ID="create_but" Visible="true" Text="Create Account" Cssclass="ban_button1" OnClick="goToCreateAccPg" CausesValidation="false" />
                <asp:Button runat="server" ID="login_but" Visible="true" Text="Login" Cssclass="ban_button2" OnClick="goToLoginpg" CausesValidation="false" /> </aside>
        </div>

        <div style="margin-left:4em">
            <p><img src="./images/pic3.png" alt="GateWay Icon" height="42"/>
            <span class="faq_tx1">gateWaySchoolAccount Support</span></p>

            <a href="./sup_pdf_v.pdf">View Support in PDF</a><br/>

            <span class="sup_tx3">We like to listen to our users and of course help based on their asks. Here are the most common questions that our support agents 
                field and how you can solve them quickly.</span><br/><br/>

            <span class="faq_tx2">I forgot my user ID and/or password. How can I get them?</span><br/>
            <span class="faq_tx3">Click the Forgot Password? link in the gateWaySchoolAccount.com <asp:HyperLink NavigateUrl="./Login.aspx" Text="login page" runat="server" />. Enter the e-mail address you used when you created your 
                gateWaySchoolAccount.com account and click Retrieve Password. Your password and user ID will be e-mailed to you.</span><br/><br/>

            <span class="faq_tx2">What’s my child eating and how far back can I see information?</span><br/>
            <span class="faq_tx3">Once logged into the site, click “Manage Students” on the main menu bar. From there, click the “VIEW HISTORY” link under the actions 
                section next to the account that you’d like to examine. We display 30 days worth of purchase information, if you require information past the 30 days 
                displayed, you should contact the food service department of your childs school.</span><br/><br/>

            <span class="faq_tx2">Why can't I pay with a credit/debit card?</span><br/>
            <span class="faq_tx3">Your school distirct has chosen to only accept ACH debits. That is an industry term for a "E-Check", a check without the paper. The funds 
                are simply transferred from your bank account to the school, the same as if you had written them a check. You may want to contact the food service department 
                at your local school district for more information about accepting credit cards.</span><br/><br/>

            <span class="faq_tx2">My students balance is not what it should be. What’s the deal?</span><br/>
            <span class="faq_tx3">gateWaySchoolAccount.com is a portal for you to make & view payments, purchases, and transactions. We simply display the information to you 
                that is provided to us by your childs’ school. If you feel there is a descrepency you should contact the food service department of your school.</span><br/><br/> 

            <span class="faq_tx2">Why am I not getting low balance notifications?</span><br/>
            <span class="faq_tx3">When you are in the “Manage my Account” section, make sure that you check the box that states ”Send Low Balance Notification emails”, add an 
                amount at which you would like to be notified and make sure you then check the enabled box. Then save. Most times our users forget to check that 
                enable box.</span><br/><br/> 
        </div>

        <div class="sup_bt1">
            <span style="color:blue;font-size:x-large">Connect With gateWaySchoolAccount.com Support Staff</span><br/><br/>
            <span style="color:darkslateblue;font-size:medium"><asp:HyperLink NavigateUrl="./contact_page.aspx" Text="or click here to Contact Us" runat="server" /></span>              <!--  <a href="./contact_page.aspx" onclick="contact_info()">or click here to Contact Us</a></span> -->
        </div>
        <hr style="margin:0%;color:white"/>
        <asp:Table runat="server" id="sup_tab">
            <asp:TableRow>
                <asp:TableCell style="padding:0px;margin:0px;"><asp:TextBox id="suptx1" placeholder="First Name" runat="server" class="inp_text" ValidationGroup="Validation"> </asp:TextBox>
                    <asp:RequiredFieldValidator id="FnameVal" runat="server"
                                ControlToValidate="suptx1"
                                ErrorMessage="First Name is a required field."
                                ForeColor="Red" Display="none" ValidationGroup="Validation">
                    </asp:RequiredFieldValidator>
                </asp:TableCell>
                <asp:TableCell style="padding:0px;margin:0px;"><asp:TextBox id="suptx2" placeholder="Last Name" runat="server" class="inp_text" ValidationGroup="Validation"></asp:TextBox>
                    <asp:RequiredFieldValidator id="lnameVal" runat="server"
                                ControlToValidate="suptx2"
                                ErrorMessage="Last Name is a required field."
                                ForeColor="Red" Display="none" ValidationGroup="Validation">
                    </asp:RequiredFieldValidator>
                </asp:TableCell>
                <asp:TableCell style="padding:0px;margin:0px;"><asp:TextBox id="suptx3" placeholder="Email Address" runat="server" class="inp_text" ValidationGroup="Validation"> </asp:TextBox>
                    <asp:RequiredFieldValidator id="emailVal" runat="server"
                                ControlToValidate="suptx3"
                                ErrorMessage="Email Address is a required field."
                                ForeColor="Red" Display="none" ValidationGroup="Validation">
                    </asp:RequiredFieldValidator>
                </asp:TableCell>

                <asp:TableCell style="padding:0px;margin:0px;"><asp:TextBox id="suptx4" placeholder="School Name" runat="server" class="inp_text" ValidationGroup="Validation"> </asp:TextBox>
                    <asp:RequiredFieldValidator id="schoolVal" runat="server"
                                ControlToValidate="suptx4"
                                ErrorMessage="School Name is a required field."
                                ForeColor="Red" Display="none" ValidationGroup="Validation">
                    </asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <hr style="margin:0%;color:white"/>
        <div class="sup_bt1">
            <asp:Textbox type="textarea" class="inputsupport" id="comment" placeholder="Type your message here" style="padding:0%;margin:0%;width:93%;height:50px" runat="server" ValidationGroup="Validation" >
            </asp:Textbox>
            <asp:RequiredFieldValidator id="commentVal" runat="server"
                                ControlToValidate="comment"
                                ErrorMessage="Message is a required field."
                                ForeColor="Red" Display="none" ValidationGroup="Validation">
            </asp:RequiredFieldValidator>
        </div>
        <hr style="margin:0%;border-color:white;border-bottom:solid;border-bottom-color:white"/>
        <div style="background-color:tomato">
            <asp:Button runat="server"  id="sup_but" text="Click here to send your message to Support staff" ValidationGroup="Validation" onclick="send_msg"></asp:Button>
        </div>

         <asp:ValidationSummary ID="Valsum1" runat="server" ShowMessageBox="True"
        ShowSummary="False" ValidationGroup="Validation" />

    </form>
</body>
</html>
