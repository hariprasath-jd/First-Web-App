<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminMaster.Master" CodeBehind="AdminDash.aspx.cs" Inherits="First_Web_App.AdminDash" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="AdminPlace">
    <main>
        <style>
            .dash {
                margin: 15px;
            }
        </style>
        <div id="sidepanel" class="bg-primary" style="position: absolute; left: 0px; width: 215px; height: 735px; border-top: 3px solid White;">
            <asp:HyperLink ID="Link1" runat="server" Text="DashBorad" NavigateUrl="#" Style="text-decoration: none; color: white;"></asp:HyperLink>
            <asp:HyperLink ID="Link2" runat="server" Text="Employee List" NavigateUrl="#" Style="text-decoration: none; color: white;"></asp:HyperLink>
        </div>
        <div id="maincontent" style="display:inline-flex;">
            
                <div id="dashtable1" class="dash" style="background-color: lightcoral; width: 250px; height: 100px; position: relative; left: 20%; top: 40px;">1</div>
                <div id="dashtable2" class="dash" style="background-color: lightgreen; width: 250px; height: 100px; position: relative; left: 18%; top: 40px;">2</div>

                <div id="dashtable3" class="dash" style="background-color: lightblue; width: 250px; height: 100px; position: relative; left: 18%; top: 40px;">3</div>
                <div id="dashtable4" class="dash" style="background-color: lightsalmon; width: 250px; height: 100px; position: relative; left: 18%; top: 40px;">4</div>
            
        </div>
    </main>
</asp:Content>
