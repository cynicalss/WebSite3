<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Gallery2.aspx.cs" Inherits="Gallery2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<body>
        <div>

            <asp:Button ID="Button2" Text="Back to Gallery" runat="server" onclick="Button1_Click" />
            <br /><br />
            <asp:Image ID="Image1" Width="800px" Height="550px" runat="server" />
            <br /><br />
            <asp:Button ID="Button1" Text="Back to Gallery" runat="server" onclick="Button1_Click" />

        </div>
</body>

</asp:Content>

