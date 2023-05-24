<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="First_Web_App.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link type="text/css" src="~/Sample.css"/>
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Your application description page.</h3>
        <p>Use this area to provide additional information.</p>
        <p id="sample">hi</p>
        <p><%: DateTime.Now%> </p>
    </main>
    <p id="sample">helo</p>
    <p><a href="~/" runat="server" class="btn btn-success">home</a></p>
</asp:Content>
