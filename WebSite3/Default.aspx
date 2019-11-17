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
    <div id="main-container">
    

         <!--begin main content-->

            <div id="container">
          <!-- begin top-left-->    
          <div id="top-center" class="linksTable">   
          	<div class="links">
                   <span id="ctl00_mainContent_Label9" class="labelDefaultTitle">Направете Вашата справка</span><br>

                   <asp:Image ID="Image3" runat="server" ImageUrl="img/dot.gif" BorderWidth="0px"/>
                   <a id="ctl00_mainContent_linkbuttonPersonReport" class="labelControl" href="javascript:__doPostBack('ctl00$mainContent$linkbuttonPersonReport','')">По физическо или юридическо лице</a><br>

                   <asp:Image ID="Image4" runat="server" ImageUrl="img/dot.gif" BorderWidth="0px"/>
                   <!--<img id="ctl00_mainContent_Image4" src="img/dot.gif" style="border-width:0px;">-->
                   <a id="ctl00_mainContent_linkbuttonCompanies" class="labelControl" href="javascript:__doPostBack('ctl00$mainContent$linkbuttonCompanies','')">Списък на запазени фирми/ наименования</a>

</div>
          	<div class="links">

                  <span id="ctl00_mainContent_Label10" class="labelDefaultTitle">Използвайте електронните услуги</span><br>

                  <asp:Image ID="Image5" runat="server" ImageUrl="img/dot.gif" BorderWidth="0px"/>
                  <!--<img id="ctl00_mainContent_Image1" src="img/dot.gif" style="border-width:0px;">-->
                  <a id="ctl00_mainContent_linkbuttonDeclaration" class="labelControl" href="javascript:__doPostBack('ctl00$mainContent$linkbuttonDeclaration','')">Подаване на заявление по образец</a><br>

                  <asp:Image ID="Image6" runat="server" ImageUrl="img/dot.gif" BorderWidth="0px"/>
                  <!--<img id="ctl00_mainContent_Image2" src="img/dot.gif" style="border-width:0px;">-->
                  <a id="ctl00_mainContent_linkbuttonTranscripts" class="labelControl" href="javascript:__doPostBack('ctl00$mainContent$linkbuttonTranscripts','')">Удостоверения за актуално състояние,  вписвания, обявявания, преписи</a><br>

                  <asp:Image ID="Image7" runat="server" ImageUrl="img/dot.gif" BorderWidth="0px"/>
                  <!--<img id="ctl00_mainContent_Image5" src="img/dot.gif" style="border-width:0px;">-->
                  <a id="ctl00_mainContent_linkbuttonCompanyDeclaration" class="labelControl" href="javascript:__doPostBack('ctl00$mainContent$linkbuttonCompanyDeclaration','')">Удостоверения за запазена фирма/наименование</a>
</div>
          </div>

               <div id="top-left">
         
         <!--register-->
                    <div id="tregister">
                    <span id="ctl00_mainContent_Label5" class="labelDefaultTitle">Търговски регистър</span><br>
                    &nbsp;&nbsp;&nbsp;&nbsp;<a id="ctl00_mainContent_linkTRegister" class="labelControl" href="javascript:__doPostBack('ctl00$mainContent$linkTRegister','')">Вписвания, обявявания, заличавания</a>
					<br><br>

                    </div>

         <!--documents-->
                    <div id="documents">
                    <span id="ctl00_mainContent_Label6" class="labelDefaultTitle">Документи</span>
                     <br>
                    <a id="ctl00_mainContent_linkDocuments" class="labelControl" href="javascript:__doPostBack('ctl00$mainContent$linkDocuments','')">Бланки, формуляри и заявления</a>
                </div>
         
         <!--normbase-->
                <div id="normBase">
                    <span id="ctl00_mainContent_Label7" class="labelDefaultTitle">Нормативна уредба</span>
                    <br>
			    <a href="http://lawdocuments.brra.bg/">Актуална нормативна уредба</a> 
                </div>
			</div>
	 <!-- begin top-right-->       

            
     <!-- begin top-right-->       
               <div id="top-right">
             <!--contacts-->
                  <div id="contact" >
                  	<a name="Нова тарифа" target="_blank" id="bb">
                 	<asp:Image ID="Image1" runat="server" ImageUrl="img/contact.gif"  Width="323"/>
                	<asp:Image ID="Image2" runat="server" ImageUrl="img/tarifa.gif" Width="323"/>
                    <!--<img id="Img2" alt="" src="img/contact.gif" width="340"height="85" />
                    <img id="Img1" alt="" src="img/tarifa.gif" width="340"height="85" />--></a>
                <br/>
                  <span id="ctl00_mainContent_Label55" class="labelDefaultTitle">Банкова с/ка:BG36CREX92603114549401</span>
                  <br>
                   <span id="ctl00_mainContent_Label56" class="labelDefaultTitle">ТБ „ТОКУДА БАНК” АД; BIC код: CREXBGSF</span>
                   <div id="logIn">
                  <asp:Button ID="Button1" runat="server" Text="ВХОД" OnClick="Button1_Click" PostBackUrl="login.aspx"/>
                  <!--<a id="ctl00_mainContent_linkButtonLogin" class="labelDefaultTitle" href="javascript:__doPostBack('ctl00$mainContent$linkButtonLogin','')">ВХОД</a>-->
                  <br>
                  </div>
                  <div id="el-razplashtane">
                  <span id="ctl00_mainContent_Label2" class="labelFont11" style="display:inline-block;width:190px;">За извършване на електронно разплащане през портала е необходима регистрация</span>
                  </div>
               </div>
     <!-- end top-right-->       

                        
                </div>

</div>

                            </div>
</asp:Content>
