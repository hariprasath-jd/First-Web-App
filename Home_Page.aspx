<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMaster.Master" CodeBehind="Home_Page.aspx.cs" Inherits="First_Web_App.WebForm1" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:BundleReference runat="server" Path="~/Content/css" />
</head>
<body>--%>
    <asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <main>
            
                <%--<nav class="navbar navbar-expand-lg navbar-dark bg-dark justify-content-center" data-bs-theme="dark">
            <div class="container-fluid ">
                <a class="navbar-brand" href="#">Suzume</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" runat="server" aria-current="page" href="~/Home_Page">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" runat="server" href="~/Leave Info">Emplyee Leave Info</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" runat="server" href="Salary">Salary Info</a>
                        </li>
                    </ul>
                    <p style="color:white;margin-right:10px;position:relative;top:8px;"> Welcome <asp:Label ID="navName" ForeColor="white" runat="server" Text="name"></asp:Label></p>
                    <asp:Button class="btn btn-outline-danger" Style="margin-right: 15px;" runat="server" Text="LogOut" ID="BtnLogOut" OnClick="BtnLogOut_Click" />
                    <img src="image/cat.png" alt="Bootstrap" width="30" height="30" />

                </div>
            </div>
        </nav>--%>
                <style>
                    #tranName {
                        font-size: 100px;
                    }

                    #welcome {
                        font-size: 34px;
                        position: relative;
                        top: 300px;
                        left: 40%;
                    }
                </style>
                <div>
                    <p id="welcome">
                        Welcome
                    <asp:Label ID="tranName" runat="server" Text="name"></asp:Label>
                    </p>
                </div>
        </main>
    </asp:Content>

    <%--    <%-- <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/Scripts/bootstrap.js") %>
    </asp:PlaceHolder>
</body>
</html>--%>
