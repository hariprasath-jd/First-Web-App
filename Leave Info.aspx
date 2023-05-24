<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Leave Info.aspx.cs" Inherits="First_Web_App.Leave_Info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link rel="stylesheet" type="text/css" href="css/leave_info.css" />
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
        </nav>
        <div>
            <div id="centerdiv">
                <p id="bdHeader">
                    Leave Info For
                    <asp:Label ID="bdName" runat="server">name</asp:Label>
                </p>
            </div>

            <style>
                #LeaveInfo td, th {
                    padding: 5px;
                    border: 2px solid black;
                }
            </style>
            <div>
                <asp:GridView
                    ID="LeaveInfo"
                    runat="server"
                    AutoGenerateColumns="false"
                    Style="text-align: center; position: relative; top: 80px; left: 25%;"
                    BorderStyle="Solid"
                    AlternatingRowStyle-BorderStyle="Solid">
                    <RowStyle />
                    <Columns>
                        <asp:TemplateField HeaderText="Leave ID">
                            <ItemTemplate>
                                <%#Eval("Leave_Id") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="From Date">
                            <ItemTemplate>
                                <%#Eval("From_Date") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="To Date">
                            <ItemTemplate>
                                <%#Eval("To_Date") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Leave Type">
                            <ItemTemplate>
                                <%#Eval("LeaveType") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Reason">
                            <ItemTemplate>
                                <%#Eval("reason") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <%#Eval("Leave_Status") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/Scripts/bootstrap.js") %>
    </asp:PlaceHolder>
</body>
</html>
