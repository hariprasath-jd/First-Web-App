<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="First_Web_App._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        
    </style>
    <script>
        Alert("Hi");
    </script>
    <main>


        <div id="login-div">
            <asp:Label ID="topbanner" runat="server" Text="Login" Style="position: relative; top: 50px; left: 35%; font-size: 38px; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif"></asp:Label>
            <asp:Label ID="Label1" runat="server" Text="UserName" Style="position: relative; top: 110px; left: -70px; color: white; padding-left: 5px;"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Password" Style="position: relative; top: 180px; left: -145px; color: white;"></asp:Label>
            <asp:TextBox ID="UserName" runat="server" Style="border-radius: 8px; position: relative; top: 73px; left: 130px; width: 140px; height: 30px;" BorderStyle="None"></asp:TextBox>
            <asp:TextBox ID="userps" runat="server" TextMode="Password" Style="border-radius: 8px; position: relative; top: 150px; left: -15px; width: 140px; height: 30px;" BorderStyle="None"></asp:TextBox>
            <%--<input id="passwd" type="password" runat="server" style="border-radius:8px;position:relative;top:145px;left:5px; width:140px;height:30px;" BorderStyle="None" />--%>
            <asp:Button ID="login" type="submit" runat="server" Text="Login" class="btn btn-success" OnClick="login_Click" Style="border-style: none; position: relative; top: 200px; left: 80px; width: 150px; color: white" name="login"></asp:Button>
            <asp:Label ID="UserMsg" Style="position: relative; top: 70px; left: -15px; font-size: 12px;" ForeColor="red" runat="server" Text="User Din't Match" Visible="false"></asp:Label>
            <asp:Label ID="PassMsg" runat="server" Style="position: relative; top: 115px; left: 130px; font-size: 14px; color: red;" Text="Password Din't Match" Visible="false"></asp:Label>
            
        </div>
    </main>

</asp:Content>
