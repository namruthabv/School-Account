<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GW gateway</title>
	<meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>

    
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="banner">
            <!-- For the drop down menu : For parents -->
            <div class="dropdown">
                <button class="dropbtn">For Parents</button><b style="color:black">&#9654</b>
                <div class="dropdown-content">
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
        <div class="outer">
            <div id="inner">
                <img src="./images/business2.png" alt="business image" style="height:95%;width:30%" />
                <span class="heading1"><p style="margin-top:3%;margin-bottom:-1.5%">School Payment Solution for Online Payments and more!</p> <br/>
                <span style="color:blue;font-size:x-large">A complete School Payment Solution for any school, any size! A cashless option for the parents and students. Our online payment portal gives parents the ability to log on to
                their students' accounts and deposit funds for the lunch and other school activities.</span></span>
            </div>
        <!--<div style:"overflow:auto"> -->
            <div id="inner-left" style="height:30.5em">
                <p class="text1" style="font-size:xx-large">With gateWaySchoolAccount Online Payments, School Financial Management Has Never Been Easier!</p>
                <p class="text1" style="font-size:x-large">Improve cash management by giving your parents the ability to make secure deposits into their children's meal accounts.</p>
                <ul class="text1" style="font-size:large">
                    <li>Increase Revenue</li>
                    <li>Collect funds in the centralized portal</li>
                    <li>Speed up lines in your cafeteria</li>
                    <li>Collect funds in the centralized portal</li>
                    <li>Reporting for every activity and department</li>
                    <li>Attract more parents, students and supporters</li>
                    <li>Reduce labor by limiting processes & involvement</li>
                </ul>
            </div>
            <div id="inner-right" style="right:0;width:53.4em;height:30.5em">
                <p style="font-family:'Times New Roman';color:blue;font-size:x-large">To learn more about our Online Payment Portal for Schools, it's features, pricing details, or to schedule a demo, fill out the form below and
                   click the 'Tell Me More' button.A gateWaySchoolAccount representative will be in contact with you within 48 hours.</p>
                <asp:Table border="0" runat="server" style="color:white;font-family:'Times New Roman';margin-top:-0.5%;font-size:large">
                    <asp:TableRow style="height:-1px">
                        <asp:TableCell style="width:15em;vertical-align:top">First Name<span style="color:red"> *</span> </asp:TableCell>
                        <asp:TableCell style="width:20em">
                            <asp:Textbox runat="server" Id="FirstName" style="width:12em"></asp:Textbox>
                            <asp:RequiredFieldValidator id="FNVal" runat="server"
                                ControlToValidate="FirstName"
                                ErrorMessage="First name is a required field."
                                ForeColor="Red" Display="Dynamic" Font-Size="Smaller">
                            </asp:RequiredFieldValidator>
                        </asp:TableCell>
                    </asp:TableRow> 
                    
                    <asp:TableRow>
                        <asp:TableCell style="width:15em;vertical-align:top">Last Name<span style="color:red"> *</span> </asp:TableCell>
                        <asp:TableCell>
                            <asp:Textbox runat="server" Id="LastName" style="width:12em"></asp:Textbox>
                            <asp:RequiredFieldValidator id="LNVal" runat="server"
                                ControlToValidate="LastName"
                                ErrorMessage="Last name is a required field."
                                ForeColor="Red" Display="Dynamic" Font-Size="Smaller">
                            </asp:RequiredFieldValidator>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell style="width:15em;vertical-align:top">Email Address<span style="color:red"> *</span> </asp:TableCell>
                        <asp:TableCell><asp:Textbox runat="server" Id="Email" style="width:12em"></asp:Textbox>
                            <asp:RegularExpressionValidator id="RegExpEmail" runat="server"     
                                    ErrorMessage="Invalid Email Address (Example:namratha@gmail.com)." Display="Dynamic" Font-Size="Smaller"
                                    ControlToValidate="Email"   ForeColor="Red" 
                                    ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" />
                            <asp:RequiredFieldValidator id="emailVal" runat="server"
                            ControlToValidate="Email"  Font-Size="Smaller"
                            ErrorMessage=" Email is a required field." Display="Dynamic"
                            ForeColor="Red">
                            </asp:RequiredFieldValidator>

                        </asp:TableCell>
                    </asp:TableRow> 
                    
                    <asp:TableRow>
                        <asp:TableCell style="width:15em;vertical-align:top">Your or Parent Phone Number <span style="color:red"> *</span></asp:TableCell>
                        <asp:TableCell><asp:Textbox runat="server" Id="Phone" style="width:12em"></asp:Textbox>
                     <asp:RegularExpressionValidator id="PhRegExpVal" runat="server"     
                                    ErrorMessage=" Phone number is Invalid : (Example:346-708-2777)." Display="Dynamic" Font-Size="Smaller"
                                    ControlToValidate="Phone"   ForeColor="Red"   
                                    ValidationExpression="^[0-9]{3}-[0-9]{3}-[0-9]{4}$" />
                     <asp:RequiredFieldValidator id="PhoneVal" runat="server"
                        ControlToValidate="Phone"
                     ErrorMessage="Phone Number is a required field." Display="Dynamic"
                     ForeColor="Red" Font-Size="Smaller">
                    </asp:RequiredFieldValidator>


                        </asp:TableCell>
                    </asp:TableRow> 

                    <asp:TableRow>
                        <asp:TableCell style="width:15em;vertical-align:top">Name of your School or District<span style="color:red"> *</span></asp:TableCell>
                        <asp:TableCell><asp:Textbox runat="server" Id="School" style="width:12em"></asp:Textbox>
                            <asp:RequiredFieldValidator id="schoolVal" runat="server"
                                ControlToValidate="School"
                                ErrorMessage=" School is a required field."
                                ForeColor="Red" Display="Dynamic" Font-Size="Smaller">
                            </asp:RequiredFieldValidator>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell style="width:15em;vertical-align:top">Comments <span style="color:red"> *</span></asp:TableCell>
                        <asp:TableCell><asp:Textbox runat="server" Id="Comments" style="width:12em"></asp:Textbox>
                             <asp:RequiredFieldValidator id="CommentVal" runat="server"
                                ControlToValidate="Comments"
                                ErrorMessage="Comments is a required field."
                                ForeColor="Red" Display="Dynamic" Font-Size="Smaller">
                            </asp:RequiredFieldValidator>
                        </asp:TableCell>
                    </asp:TableRow> 
                </asp:Table>
                <asp:Button ID="Button1" runat="server" Visible="true" Text="Tell Me More" class="tell-button" OnClick="tell_me_more" style="width:8em;height:1.5em" />
            </div>  
            
                <div id="adds" style="position:absolute;bottom:-250px;background-color:whitesmoke">
                    <asp:ScriptManager ID="sm1" runat="server"></asp:ScriptManager>
                    <asp:Timer ID="timer2" Interval="2000" runat="server"></asp:Timer>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="timer2" EventName="Tick" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/advertise.xml" Target =  "_blank" KeywordFilter="img1" Width="12em"/>
                            <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="~/advertise.xml" Target =  "_blank" KeywordFilter="img2" Width="12em"/>
                            <asp:AdRotator ID="AdRotator3" runat="server" AdvertisementFile="~/advertise.xml" Target =  "_blank" KeywordFilter="img3" Width="12em"/>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>             

            </div>
            <!--</div> -->

    </form>
</body>
</html>
