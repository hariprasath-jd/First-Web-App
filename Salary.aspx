<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMaster.Master" CodeBehind="Salary.aspx.cs" Inherits="First_Web_App.Salary" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:BundleReference runat="server" Path="~/Content/css" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark justify-content-center" data-bs-theme="dark">
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
                    <p style="color: white; margin-right: 10px; position: relative; top: 8px;">
                        Welcome
                        <asp:Label ID="navName" ForeColor="white" runat="server" Text="name"></asp:Label>
                    </p>
                    <asp:Button class="btn btn-outline-danger" Style="margin-right: 15px;" runat="server" Text="LogOut" ID="BtnLogOut" OnClick="BtnLogOut_Click" />
                    <img src="image/cat.png" alt="Bootstrap" width="30" height="30" />

                </div>
            </div>
        </nav>--%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <style>
                #Salarycenterdiv {
                    top: 50%;
                    left: 50%;
                    width: 300px;
                    height: 400px;
                    margin-top: -200px;
                    margin-left: -150px;
                    border: 1px solid #666;
                    background-color: lightblue;
                    position: fixed;
                }

                #head {
                    font-size: 38px;
                    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
                    position: relative;
                    top: 30px;
                    left: 10%;
                }

                #Label1 {
                    position: relative;
                    top: 50px;
                    left: 10px;
                }

                #Label2 {
                    position: relative;
                    top: 80px;
                    left: 10px
                }

                #Label3 {
                    position: relative;
                    top: 100px;
                    left: 10px
                }

                #lbCTCPackage {
                    position: relative;
                    top: 50px;
                    left: 90px
                }

                #lbLeaveCount {
                    position: relative;
                    top: 80px;
                    left: 95px;
                }

                #lbThisMonthDispatch {
                    position: relative;
                    top: 100px;
                    left: 30px;
                }
            </style>
        <div id="Salarycenterdiv">
            <asp:Label ID="head" Text="Salary Details" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" Text="CTC Package"></asp:Label>
            <asp:Label ID="lbCTCPackage" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Leave Days"></asp:Label>
            <asp:Label ID="lbLeaveCount" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="This Month Dispatch"></asp:Label>
            <asp:Label ID="lbThisMonthDispatch" runat="server"></asp:Label>
        </div>
    </main>
</asp:Content>
<%--    </form>
</body>
</html>--%>
