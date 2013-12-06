<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="AIMERP.UI.Login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="UserControl/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title id="PageTitle" runat="server">AIM Thai Fruit</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!--  HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries  -->
    <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
    <![endif]-->
    <link href="css/AIMERP.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="js/jquery-ui.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="login absolute-center">
                <div class="blurarea">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="float-left">
                                <img src="image/logo.jpg" alt="AIM Thai Fruit" class="logo" /></div>
                            <div class="right">
                                <span class="head">AIM Thai Fruit</span><span>
                                    <asp:Label ID="lblVersion" runat="server"></asp:Label>
                                </span>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="list-group">
                                <div class="list-group-item">
                                    <asp:TextBox ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
                                </div>
                                <div class="list-group-item">
                                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="master right">
                                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary" />
                                <asp:Button ID="btnBypass" runat="server" Text="Demo" CssClass="btn btn-primary" />
                            </div>
                        </div>
                    </div>
                    <div class="center">
                        Copyright © 2013 <span class="brand"><a href="http://SingleSystemService.com" target="_blank">Single System Service.</a></span> All rights reserved.
                    </div>
                </div>
            </div>
            <uc1:MessageBox ID="MessageBox1" runat="server" />
        </ContentTemplate>
    </asp:UpdatePanel>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.placeholder.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("input").tooltip({ html: true });
            $("a").tooltip({ html: true });
            $("img").tooltip({ html: true });
            $('input, textarea').placeholder();
        });
    </script>
    <div class="host-name">
        <asp:Label ID="lblHostName" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
