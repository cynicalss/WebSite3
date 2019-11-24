<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Gallery1.aspx.cs" Inherits="Gallery1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 225;
            margin-top: 97;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<link href="css/gallery.css" rel="stylesheet" type="text/css">

<body>
    <div id="main-container">
    

         <!--begin main content-->

            <div id="container">

            <asp:Panel ID="Panel1" runat="server"  CssClass="gallery-image" >
            </asp:Panel>

            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
            
            

        </div></div>
</body>




</asp:Content>

