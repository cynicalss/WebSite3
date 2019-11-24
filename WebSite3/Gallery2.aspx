<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Gallery2.aspx.cs" Inherits="Gallery2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <link href="css/gallery.css" rel="stylesheet" type="text/css">

<body>
    <div id="main-container">
    

         <!--begin main content-->

            <div id="container">

            <asp:Button ID="Button2" Text="Back to Gallery" runat="server" onclick="Button1_Click" />
            <div class="gallery-image"><asp:Image ID="Image1" Width="800px" Height="550px" runat="server" /></div>
            <asp:Button ID="Button1" Text="Back to Gallery" runat="server" onclick="Button1_Click" />

        </div></div>
</body>

</asp:Content>

