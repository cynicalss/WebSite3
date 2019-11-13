<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Page9.aspx.cs" Inherits="Page9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    
    <!-- Сигнали и предложения -->

                <!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link href="css/Page9.css" rel="stylesheet" type="text/css">
        <link href="css/calendar-blue.css" rel="stylesheet" type="text/css">
    </head>

     <tr id="ctl00_mainContent_rowCheckNumbers">
	<td>
        <table class="mainTable100">
            <tbody><tr>       
        
            <td width="20%">
                <asp:Image ID="Image1" runat="server" Height="46px" ImageUrl="~/img/CaptchaImage.jpg" Width="178px" />
            <!--<img id="ctl00_mainContent_imageCheckNumbers" src="img/CaptchaImage.jpg" style="border-width:0px;vertical-align:-2px;">-->
            </td>
            
            <td valign="bottom">
                <span id="ctl00_mainContent_Label15" class="labelControlBoldSmall">Въведете изобразения код</span>
                <span id="ctl00_mainContent_lblStar3" class="labelControlRequired">*</span>
                <br>
                <input id="Text1" type="text" />
                <!--<input name="ctl00$mainContent$textboxCheckNumbers" type="text" maxlength="10" id="ctl00_mainContent_textboxCheckNumbers" class="textboxControl" style="width:150px;">-->
                
            </td>
            </tr>
        </tbody></table>
    </td>
</tr>
          

    
        <tr>
            <td>
                <br>
                <span id="ctl00_mainContent_Label3" class="labelControl">Име / Фирма / Наименование:</span>
                <span id="ctl00_mainContent_lblStar" class="labelControlRequired">*</span>
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
                <br>
                <asp:TextBox ID="TextBox1" runat="server" Width="218px"></asp:TextBox>
                &nbsp;<!--<input name="ctl00$mainContent$textboxCompanyOrName" type="text" id="ctl00_mainContent_textboxCompanyOrName" class="textboxControl" style="width:500px;">--><span id="ctl00_mainContent_RequiredFieldValidator1" class="labelError" style="color:Red;visibility:hidden;">*</span></td>
        </tr>
        <tr>
            <td>
                <br>
                <span id="ctl00_mainContent_Label5" class="labelControl">Относно:</span>
                <span id="ctl00_mainContent_lblStar1" class="labelControlRequired">*</span></td>
        </tr>
        <tr>
            <td>
                <br>
                <asp:TextBox ID="TextBox2" runat="server" Width="495px"></asp:TextBox>
                <!--<input name="ctl00$mainContent$textboxAbout" type="text" id="ctl00_mainContent_textboxAbout" class="textboxControl" style="width:500px;">-->
                <span id="ctl00_mainContent_RequiredFieldValidator2" class="labelError" style="color:Red;position:relative;visibility:hidden;">*</span></td>
        </tr>
        <tr>
            <td>
                <br>
                <span id="ctl00_mainContent_Label4" class="labelControl">Вашият текст:</span>
                <span id="ctl00_mainContent_lblStar2" class="labelControlRequired">*</span></td>
        </tr>
        <tr>
            <td>
                <br>
                <asp:TextBox ID="TextBox3" runat="server" Height="170px" TextMode="MultiLine" Width="493px"></asp:TextBox>
                <!--<textarea name="ctl00$mainContent$textboxSuggestionText" rows="2" cols="20" id="ctl00_mainContent_textboxSuggestionText" class="textboxControl" style="height:107px;width:500px;"></textarea>-->
                <span id="ctl00_mainContent_RequiredFieldValidator3" class="labelError" style="color:Red;left:0px;position:relative;top:-91px;visibility:hidden;">*</span></td>
        </tr>
        <tr>
            <td>
                <br>
                <asp:Button ID="Button1" runat="server" Text="Изпрати" />
                <asp:Button ID="Button2" runat="server" Text="Покажи всички мнения" />

                <!--<input type="submit" name="ctl00$mainContent$buttonSendSuggestion" value="Изпрати" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$mainContent$buttonSendSuggestion&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="ctl00_mainContent_buttonSendSuggestion" class="buttonControl2">
                <input type="submit" name="ctl00$mainContent$ButtonShowAll" value="Покажи всички мнения" id="ctl00_mainContent_ButtonShowAll" class="buttonControl2"></td>
                 -->       
        </tr>



    <br />
    <br />
</asp:Content>

