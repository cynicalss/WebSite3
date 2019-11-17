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
        <div>

            <asp:Panel ID="Panel1" runat="server" Width="592px"
             BorderStyle="Dashed" BorderColor="#000066" CssClass="auto-style3" Height="381px">
            </asp:Panel>

            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
            
            

        </div>
</body>




</asp:Content>

