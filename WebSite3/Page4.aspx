<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Page4.aspx.cs" Inherits="Page4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <!-- Документи -->
    
    <!DOCTYPE html>
<html>
    <head>
        <title>Test Case</title>
        <link href="css/Main.css" rel="stylesheet" type="text/css">
    </head>

    <table class="mainTable">
                    <tbody><tr>
                        <td>&nbsp;&nbsp;&nbsp;<span id="ctl00_mainContent_Label1" class="labelControl">От</span>
                            <a id="ctl00_mainContent_linkButtonDocuments" class="labelControlBold" href="javascript:__doPostBack('ctl00$mainContent$linkButtonDocuments','')">тук</a>
                            <span id="ctl00_mainContent_Label3" class="labelControl">може да изтеглите:</span></td>
                    </tr>
                    <tr>
                        <td>
                        <span id="ctl00_mainContent_labelDocuments" class="labelControl"> -- А. Заявления за първоначална регистрация, пререгистрация и промяна на основни обстоятелства<br> -- Б. Заявления за вписване на прокура, клон, залог, запор и ликвидация<br> -- В. Заявления за прехвърляне на търговско предприятие, преобразуване и преустройство<br> -- Г. Заявление за обявяване на актове<br> -- Д. Заявление за запазване на фирма<br> -- Ж. Заявление за изпълнение на указанията по чл. 22, ал. 4 от ЗТР<br> -- Е. Заявление за издаване на удостоверение за законосъобразност<br> -- З. Допълнително приложение за заявители<br> -- Декларации<br> -- Молби<br></span>
                        </td>   
                    </tr>
                </tbody></table>
            </td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td>
                <table class="mainTable">
                    <tbody><tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;<span id="ctl00_mainContent_Label2" class="labelControl">От</span>
                            <a id="ctl00_mainContent_linkButtonInstructions" class="labelControlBold" href="javascript:__doPostBack('ctl00$mainContent$linkButtonInstructions','')">тук</a>
                            <span id="ctl00_mainContent_Label4" class="labelControl">може да изтеглите инструкция за интеграция с Търговския регистър</span>
                        </td>
                    </tr>
                </tbody></table>
            </td>
        </tr>
    </tbody></table>

</asp:Content>

