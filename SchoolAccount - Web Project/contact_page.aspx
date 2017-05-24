<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact_page.aspx.cs" Inherits="contact_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact info</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <script>
        var xmlhttp;
        var xmlDoc;
        contact_info();
        function contact_info() {
            xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = readData;
            xmlhttp.open("GET", "./contact_info.xml", true);
            xmlhttp.send();
        }
        function readData() {
            if (xmlhttp.readyState == 4) {
                xmlDoc = xmlhttp.responseXML;
                var items = xmlDoc.getElementsByTagName("info");
                var Val1 = items[0].getAttribute("toll_free_phone");
                var Val2 = items[0].getAttribute("direct_phone");
                var Val3 = items[0].getAttribute("fax");
                var Val4 = items[0].getAttribute("email");
                var Val5 = items[0].getAttribute("address_line1");
                var Val6 = items[0].getAttribute("address_line2");
                var Val7 = items[0].getAttribute("city");
                var Val8 = items[0].getAttribute("state");
                var Val9 = items[0].getAttribute("zip");

                document.getElementById("toll_num").innerHTML=Val1;
                document.getElementById("dir_num").innerHTML = Val2;
                document.getElementById("fax").innerHTML = Val3;
                document.getElementById("email").innerHTML = Val4;
                document.getElementById("add_1").innerHTML = Val5;
                document.getElementById("add_2").innerHTML = Val6;
                document.getElementById("city").innerHTML = Val7;
                document.getElementById("state").innerHTML = Val8;
                document.getElementById("zip").innerHTML = Val9;

            }
        }
    </script>
    <div style="background-color:tomato;height:100%">
        <table>
            <tr><td colspan="2"><img src="./images/pic14.png" alt="Gate way banner" /></td></tr>
            <tr style="height:1.2em"></tr>
            <tr class="cont_tab"><td>Toll Free Phone Number</td><td id="toll_num" style="text-decoration:underline;padding-left:3em"></td></tr>
            <tr class="cont_tab"><td>Direct Phone Number</td><td id="dir_num" style="text-decoration:underline;padding-left:3em" ></td></tr>
            <tr class="cont_tab"><td>Fax</td><td id="fax" style="text-decoration:underline;padding-left:3em"></td></tr>
            <tr class="cont_tab"><td>Email</td><td id="email" style="padding-left:3em"></td></tr>
            <tr class="cont_tab"><td>Address Line 1</td><td id="add_1" style="padding-left:3em"></td></tr>
            <tr class="cont_tab"><td>Address Line 2</td><td id="add_2" style="padding-left:3em"></td></tr>
            <tr class="cont_tab"><td>City</td><td id="city" style="padding-left:3em"></td></tr>
            <tr class="cont_tab"><td>State</td><td id="state" style="padding-left:3em"></td></tr>
            <tr class="cont_tab"><td>Zip</td><td id="zip" style="padding-left:3em"></td></tr>
            <tr style="height:1em"></tr>
        </table>
    </div>
        <div style="width:50em;margin-left:30%">
            <input type="button" value="Back to Main Page" style="align-content:center;background-color:blue;color:white;font-size:3.7em;padding:0%;width:70%" onclick="window.location = './Default.aspx'" />
        </div>
    </form>
</body>
</html>
