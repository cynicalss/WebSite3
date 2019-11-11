<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!DOCTYPE html>
<html>
    <head>
        <title>Test Case</title>
        <link href="css/Main.css" rel="stylesheet" type="text/css">
    </head>
    


            <div id="container">
                <table style="vertical-align:top;">
                    <tbody><tr>
                        
                        <td style="vertical-align:top">
                            <div style="margin-left:7px">
                                
    <table class="mainTable100" cellspacing="3">
        <tbody><tr>
            <td colspan="2" align="center">
                <span id="ctl00_mainContent_labelError" class="labelError"></span>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table class="linksTable">
                    <tbody><tr>
                        <td style="width: 50%;" valign="top">
                            <table>
                                <tbody><tr>
                                    <td>
                                        <span id="ctl00_mainContent_Label9" class="labelDefaultTitle">Направете Вашата справка</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        <img id="ctl00_mainContent_Image3" src="img/dot.gif" style="border-width:0px;">
                                        <a id="ctl00_mainContent_linkbuttonPersonReport" class="labelControl" href="javascript:__doPostBack('ctl00$mainContent$linkbuttonPersonReport','')">По физическо или юридическо лице</a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <img id="ctl00_mainContent_Image4" src="img/dot.gif" style="border-width:0px;">
                                        <a id="ctl00_mainContent_linkbuttonCompanies" class="labelControl" href="javascript:__doPostBack('ctl00$mainContent$linkbuttonCompanies','')">Списък на запазени фирми/ наименования</a></td>
                                </tr>
                            </tbody></table>
                        </td>
                        <td style="width: 50%;">
                            <table>
                                <tbody><tr>
                                    <td colspan="2">
                                        <span id="ctl00_mainContent_Label10" class="labelDefaultTitle">Използвайте електронните услуги</span></td>
                                </tr>
                                <tr>
                                    <td colspan="2"> 
                                        <img id="ctl00_mainContent_Image1" src="img/dot.gif" style="border-width:0px;">
                                        <a id="ctl00_mainContent_linkbuttonDeclaration" class="labelControl" href="javascript:__doPostBack('ctl00$mainContent$linkbuttonDeclaration','')">Подаване на заявление по образец</a></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align:baseline" width="10px">
                                        <img id="ctl00_mainContent_Image2" src="img/dot.gif" style="border-width:0px;">
                                     </td>
                                     <td style="vertical-align:baseline">   
                                        <a id="ctl00_mainContent_linkbuttonTranscripts" class="labelControl" href="javascript:__doPostBack('ctl00$mainContent$linkbuttonTranscripts','')">Удостоверения за актуално състояние,  вписвания, обявявания, преписи</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <img id="ctl00_mainContent_Image5" src="img/dot.gif" style="border-width:0px;">
                                        <a id="ctl00_mainContent_linkbuttonCompanyDeclaration" class="labelControl" href="javascript:__doPostBack('ctl00$mainContent$linkbuttonCompanyDeclaration','')">Удостоверения за запазена фирма/наименование</a></td>
                                </tr>
                            </tbody></table>
                        </td>
                    </tr>
                </tbody></table>
            </td>
        </tr>

        <tr>
            <td>
                <!--<table cellspacing="0" cellpadding="0">-->
                <table style="vertical-align:top">
                    <tbody><tr>
                        <td>
                            <div id="tregister">
                    <span id="ctl00_mainContent_Label5" class="labelDefaultTitle">Търговски регистър</span>
                    <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;<a id="ctl00_mainContent_linkTRegister" class="labelControl" href="javascript:__doPostBack('ctl00$mainContent$linkTRegister','')">Вписвания, обявявания, заличавания</a>
                </div>
                        </td>
                    </tr>
                </tbody></table>
            </td>
            <!--<td rowspan="4" valign="top" align="right">-->
            <td rowspan="4"  style="vertical-align:top">
            <!--style="vertical-align:top">-->

                    <a name="Нова тарифа" target="_blank" id="bb">
                    <img id="Img2" alt="" src="img/contact.gif" width="340"height="85" />
                    <img id="Img1" alt="" src="img/tarifa.gif" width="340"height="85" />
</a>
                <br/>
<span id="ctl00_mainContent_Label55" class="labelDefaultTitle">Банкова с/ка:BG36CREX92603114549401</span>
<br>
 <span id="ctl00_mainContent_Label56" class="labelDefaultTitle">ТБ „ТОКУДА БАНК” АД; BIC код: CREXBGSF</span>



                <table cellspacing="0" cellpadding="0">
                    <tbody><tr id="ctl00_mainContent_rowLogin">
	<td align="right">
                            <div id="logIn">
                                <asp:Button ID="Button1" runat="server" Text="ВХОД" OnClick="Button1_Click" PostBackUrl="login.aspx"/>
                                <!--<a id="ctl00_mainContent_linkButtonLogin" class="labelDefaultTitle" href="javascript:__doPostBack('ctl00$mainContent$linkButtonLogin','')">ВХОД</a>-->
                                <br>
                                
                            </div>
            
                            <span id="ctl00_mainContent_Label2" class="labelFont11" style="display:inline-block;width:190px;">За извършване на електронно разплащане през портала е необходима регистрация</span>
                        </td>
</tr>

                    
                    <tr>
                        <td>
                            
                        </td>
                    </tr>
                    
                </tbody></table>
                
            </td>
        </tr>
        <tr>
            <td>
                <div id="documents">
                    <span id="ctl00_mainContent_Label6" class="labelDefaultTitle">Документи</span>
                     <br>
                    <a id="ctl00_mainContent_linkDocuments" class="labelControl" href="javascript:__doPostBack('ctl00$mainContent$linkDocuments','')">Бланки, формуляри и заявления</a>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div id="normBase">
                    <span id="ctl00_mainContent_Label7" class="labelDefaultTitle">Нормативна уредба</span>
                    <br>
			<a href="http://lawdocuments.brra.bg/">Актуална нормативна уредба</a> 
                </div>
            </td>
        </tr>
        
    </tbody></table>

                            </div>
                        </td>
                    </tr>
                </tbody></table>
            </div>



</asp:Content>
