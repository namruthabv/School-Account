<%@ Page Language="C#" AutoEventWireup="true" CodeFile="what_do_we_do.aspx.cs" Inherits="what_do_we_do" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>what do we do</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
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
    <div>
        <table style="width:100%;margin-left:2em;font-family:Georgia">
            <tr><td rowspan="4"><span style="color:blue;font-size:medium;background-color:ghostwhite">what do we do</span><br/>
            <span class="faq_tx1" style="background-color:ghostwhite">WE MAKE IT EASY FOR SCHOOLS TO COLLECT PAYMENTS</span><br/>
            <span class="faq_tx1" style="background-color:ghostwhite">ONLINE!</span><br/><br/>
            <span style="color:blue;font-size:x-large;background-color:ghostwhite">How gateWaySchoolAccount works!</span><br/><br/>
            <hr style="margin:0%;color:ghostwhite;width:98%"/>                        
            </td></tr>
        </table>
        <table style="width:98%;margin-left:2em;font-family:Georgia">
            <tr style="color:black;font-size:medium"><td style="width:30%"><b class="sp_bk">Schools....</b></td><td style="width:70%"><b class="sp_bk">For Parents....</b></td></tr>
            <tr style="font-size:large"><td style="width:30%;color:deepskyblue"><span class="sp_bk">1. Easy software installation</span></td>
                <td style="width:70%;color:red"><span class="sp_bk">1. Create an account</span></td></tr>
            
            <tr><td style="width:30%" class="wdw1"><span class="sp_bk">Getting set up is simple. After the setup process is complete, our expert staff will train you so you will have confidence.</span></td>
                <td style="width:70%" class="wdw1"><span class="sp_bk">Once your school has announced you will be using gateWaySchoolAccount to manage your student’s lunch account it’s time to create an account.</span></td></tr>
            
            <tr style="font-size:large"><td style="width:30%;color:deepskyblue"><span class="sp_bk">2. Communicate with parents</span></td><td style="width:70%;color:red"><span class="sp_bk">2. Add students</span></td></tr>
            
            <tr><td style="width:30%" class="wdw1"><span class="sp_bk">Utilize the built in alert banners on myschoolaccount to notify all parents using the service of upcoming events, school closings, and other important notifications.</span></td>
                <td style="width:70%" class="wdw1"><span class="sp_bk">Adding students is easy with their school ID number.</span></td></tr>

            <tr style="font-size:large"><td style="width:30%;color:deepskyblue"><span class="sp_bk">3. Collect payments</span></td><td style="width:70%;color:red"><span class="sp_bk">3. Make a secure deposit</span></td></tr>
            
            <tr><td style="width:30%" class="wdw1"><span class="sp_bk">Utilize the built in alert banners on myschoolaccount to notify all parents using the service of upcoming events, school closings, and other important notifications.</span></td>
                <td style="width:70%" class="wdw1"><span class="sp_bk">Adding students is easy with their school ID number.</span></td></tr>

            <tr style="font-size:large"><td style="width:30%;color:deepskyblue"><span class="sp_bk">4. Generate reports</span></td><td style="width:70%;color:red"><span class="sp_bk">4. Get low balance notifications</span></td></tr>
            
            <tr><td style="width:30%" class="wdw1"><span class="sp_bk">A large variety of essential reports are always available in our admin portal. Generate financial reports that are vital to a healthy school lunch program.</span></td>
                <td style="width:70%" class="wdw1"><span class="sp_bk">Set up a low balance notifications and never have your student miss a day of lunch due to low funds.</span></td></tr>

            <tr style="font-size:large"><td style="width:30%;color:deepskyblue"><span class="sp_bk">5. Benefits for schools</span></td><td style="width:70%;color:red"><span class="sp_bk">5. Benefits for parents</span></td></tr>
            
            <tr><td style="width:30%" class="wdw1">
                <ul>
                    <li>Speed up lines in your cafeteria</li>
                    <li>Increase sales with funds dedicated to cafeteria purchases</li>
                    <li>Nightly updates of student account records</li>
                    <li>Comprehensive Reporting</li>
                    <li>Reduce Labor Costs</li>
                </ul>
                </td>
                <td style="width:70%" class="wdw1">
                    <ul>
                        <li>Convenience of both ACH and Credit Card Transactions</li>
                        <li>24/7 Access</li>
                        <li>Receive low balance notifications via email</li>
                        <li>Quickly view 30 days of detailed purchase history</li>
                        <li>Monitor healthy eating habits</li>
                        <li>Manage multiple students at once</li>
                        <li>Transfer funds between students</li>
                    </ul>
                </td></tr>
            
        </table>
    </div>
           <!--  <div id="adds">
            <asp:ScriptManager ID="sm" runat="server"></asp:ScriptManager>
            <asp:Timer ID="Timer1" Interval="2000" runat="server"></asp:Timer>
            <asp:UpdatePanel ID="up" runat="server" >
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="timer1" EventName="Tick" />
                </Triggers>
                <ContentTemplate>
                    <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/advertise.xml" Target =  "_blank" KeywordFilter="img1"/>
                    <asp:AdRotator ID="AdRotator4" runat="server" AdvertisementFile="~/advertise.xml" Target =  "_blank" KeywordFilter="img2"/>
                    <asp:AdRotator ID="AdRotator5" runat="server" AdvertisementFile="~/advertise.xml" Target =  "_blank" KeywordFilter="img3"/>
                   
                </ContentTemplate>
            </asp:UpdatePanel>
        </div> -->
    </form>
</body>
</html>
