<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="halipinio.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Halipinio</title>
    <link rel="stylesheet" type="text/css" href="css/layout.css" />
    <style type="text/css">   
        
        body
        {
            background-color: #ccc;
        }
             
        div#loginPanel
        {
            border: 1px solid #888;
            display: block;
            position: absolute;
            left: 50%;
            top: 50%;
            margin-left: -250px;
            margin-top: -150px;
            width: 500px;
            height: 300px;
            background-color: #fff;
            -moz-box-shadow: 10px 10px 5px #888;
            -webkit-box-shadow: 10px 10px 5px #888;
            box-shadow: 10px 10px 5px #888;
            -moz-border-radius: 5px;
            border-radius: 5px;
        }
        
        table#loginControls td
        {
            padding: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="loginPanel">
            <table id="loginControls">
                <tr>
                    <td>Username:</td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="buttons">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" 
                            onclick="btnLogin_Click" />
                        <a href="#" title="Forgot Password?">Forgot Password?</a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
