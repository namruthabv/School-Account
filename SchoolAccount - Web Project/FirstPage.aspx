<!DOCTYPE html>
<html>
<head>
    <title>GW gateway</title>
	<meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
</head>
<body>
    <div class="banner">
        <!-- For the drop down menu : For parents -->
        <div class="dropdown">
            <button class="dropbtn">For Parents</button><b style="color:black">&#9654</b>
            <div class="dropdown-content">
                <a href="#">Create Account</a><br/>
                <a href="#">Login</a><br/>
                <a href="./faq.aspx">Frequently Asked Questions</a><br/>
                <a href="./support.aspx">Support</a>
            </div>
        </div>

            <aside class="text_content"><span onclick="window:location='./what_do_we_do.aspx'">What Do We Do</span> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <span onclick="window:location='http://www.foodservice.com/blogs/'">Blog</span>   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp </aside>
            <aside class="ban_img">
            <img src="./images/pic1.png" alt=" GatewaySchool.com"/>
            <button class="ban_button1">Create Account</button>
            <button class="ban_button2">Login</button> </aside>
    </div>
    <div class="outer">
        <div id="inner">
            <img src="./images/business2.png" alt="business image" style="height:95%;width:30%">
            <span class="heading1"><p style="margin-top:3%;margin-bottom:-1.5%">School Payment Solution for Online Payments and more!</p> <br/>
            <span style="color:blue;font-size:x-large">A complete School Payment Solution for any school, any size! A cashless option for the parents and students. Our online payment portal gives parents the ability to log on to
            their students' accounts and deposit funds for the lunch and other school activities.</span></span>
        </div>
        <div id="inner-left">
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
        <div id="inner-right">
            <p style="font-family:'Times New Roman';color:blue;font-size:x-large">To learn more about our Online Payment Portal for Schools, it's features, pricing details, or to schedule a demo, fill out the form below and
               click the 'Tell Me More' button.A gateWaySchoolAccount representative will be in contact with you within 48 hours.</p>
            <table border="0" style="color:white;font-family:'Times New Roman';margin-top:-0.5%;font-size:large">
                <tr>
                    <td>First Name </td><td><input type="text" name="FirstName"></td>
                </tr> <tr></tr><tr></tr>
                <tr>
                    <td>Last Name </td><td><input type="text" name="LastName"></td>
                </tr> <tr></tr><tr></tr>
                <tr>
                    <td>Email Address </td><td><input type="text" name="EmailAddress"></td>
                </tr> <tr></tr><tr></tr>
                <tr>
                    <td>Your or Parent Phone Number </td><td><input type="text" name="PhoneNumber"></td>
                </tr> <tr></tr><tr></tr>
                <tr>
                    <td>Name of your School or District</td><td><input type="text" name="SchoolName"></td>
                </tr> <tr></tr><tr></tr>
                <tr>
                    <td>Comments</td><td><input type="text" name="Comments"></td>
                </tr> <tr></tr><tr></tr>
            </table>
           <button onclick="alertFunction()" class="tell-button">Tell Me More</button>
            <script>
                function alertFunction() {
                    alert("Work In Progress");
                }
            </script>
        </div>
    </div>

</body>
</html>
