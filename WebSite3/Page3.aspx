<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Page3.aspx.cs" Inherits="Page3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <!-- Електронни услуги -->

       <!DOCTYPE html>
<html>
    <head>
        <title>Test Case</title>
        <link href="css/Main.css" rel="stylesheet" type="text/css">
        <link href="css/calendar-blue.css" rel="stylesheet" type="text/css">
    </head>

      <table style="width: 780px" cellspacing="0" cellpadding="0" bgcolor="#efefef">
                        <tbody><tr>
                            <td></td>
                            <td style="width: 500px">
                                <span id="ctl00_ContentPlaceHolder1_Label1" class="help">Въведете
                                    Единния идентификационен код (ЕИК) на търговеца/ЮЛНЦ в полето ЕИК. Ако 
                                    подавате заявление за първоначална регистрация на търговец/ЮЛНЦ или за 
                                    запазване на фирма/наименование, оставете полето ЕИК празно. Изберете 
                                    вида на заявлението, което ще подавате и укажете дали заявлението се 
                                    подава за първоначално вписване, промяна на обстоятелства или 
                                    пререгистрация.
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px"></td>
                            <td class="middle500" style="height: 13px">
                                <span id="ctl00_ContentPlaceHolder1_lblFirmError" class="error"></span>
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="left">
                                ЕИК
                            </td>
                            <td>
                                <input id="Text1" type="text" />
                                <!--<input name="ctl00$ContentPlaceHolder1$tbTRFirmEIK" type="text" maxlength="9" id="ctl00_ContentPlaceHolder1_tbTRFirmEIK" class="inpNomer9_frfx">-->
                                <asp:Button ID="Button1" runat="server" Text="Провери" />
                                <!--<input type="submit" name="ctl00$ContentPlaceHolder1$bnCheckEIK" value="Провери" id="ctl00_ContentPlaceHolder1_bnCheckEIK" class="button">-->

                            </td>
                        </tr>
                        <tr>
                            <td class="left" style="padding-bottom: 10px">
                                Фирма/ Наименование
                            </td>
                            <td style="padding-bottom: 10px; padding-top: 7px">
                                <span id="ctl00_ContentPlaceHolder1_lblFirmFromTR" style="font-weight:bold;"></span></td>
                        </tr>
                        <tr>
                            <td class="left" bgcolor="#ffffff"></td>
                            <td bgcolor="#ffffff">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="left" align="right"></td>
                            <td rowspan="1" style="padding-top: 5px" valign="top">
                                <span id="ctl00_ContentPlaceHolder1_lblRegFormError" class="error"></span></td>

                        </tr>
                        <tr>
                            <td class="left" valign="top" align="right">
                                Образец на заявление</td>
                            <td style="padding-top: 7px; padding-bottom: 5px; padding-right: 10px;">&nbsp;&nbsp;  
                                <span id="ctl00_ContentPlaceHolder1_Label2" class="infoMess"> </span>
                                <!--Marti-->
                                <div style="overflow: auto; width: 680px; height: 400px;">
                               
                                    <asp:ListBox ID="ListBox1" runat="server" Height="398px" Width="1081px">
                                 <asp:ListItem>"A1">А1  Заявление за вписване на обстоятелства относно едноличен търговец</asp:ListItem>
	                             <asp:ListItem>"A2">А2  Заявление за вписване на обстоятелства относно събирателно дружество</asp:ListItem>
            	                 <asp:ListItem>"A3">А3  Заявление за вписване на обстоятелства относно командитно дружество</asp:ListItem>
	                             <asp:ListItem>"A4">А4  Заявление за вписване на обстоятелства относно дружество с ограничена отговорност</asp:ListItem>
	                             <asp:ListItem>"A5">А5  Заявление за вписване на обстоятелства относно акционерно дружество</asp:ListItem>
	                             <asp:ListItem>"A6">А6  Заявление за вписване на обстоятелства относно командитно дружество с акции</asp:ListItem>
                 	             <asp:ListItem>"A7">А7  Заявление за вписване на обстоятелства относно кооперация</asp:ListItem>
	                             <asp:ListItem>"A8">А8  Заявление за вписване на обстоятелства относно клон на чуждестранен търговец</asp:ListItem>
	                             <asp:ListItem>"A9">А9  Заявление за вписване на обстоятелства относно търговец, публично предприятие</asp:ListItem>
	                             <asp:ListItem>"A10">А10 Заявление за вписване на обстоятелства относно ЕОИИ</asp:ListItem>
	                             <asp:ListItem>"A11">А11 Заявление за вписване на обстоятелства относно поделение в Р. България на ЕОИИ със седалище в др. държава-членка</asp:ListItem>
	                             <asp:ListItem>"A12">А12 Заявление за вписване на обстоятелства относно европейско дружество</asp:ListItem>
	                             <asp:ListItem>"A13">А13 Заявление за вписване на обстоятелства относно европейско кооперативно дружество</asp:ListItem>
	                             <asp:ListItem>"A14">А14 Заявление за вписване на обстоятелства относно дружество, регистрирано в юрисдикция с преференциален данъчен режим</asp:ListItem>
	                             <asp:ListItem>"A15">A15 Заявление за вписване на обстоятелства относно сдружение</asp:ListItem>
	                             <asp:ListItem>"A16">A16 Заявление за вписване на обстоятелства относно фондация</asp:ListItem>
	                             <asp:ListItem>"A17">A17 Заявление за вписване на обстоятелства относно народно читалище</asp:ListItem>
	                             <asp:ListItem>"A18">A18 Заявление за вписване на обстоятелства относно клон на ЧЮЛНЦ</asp:ListItem>
	                             <asp:ListItem>"B1">Б1  Заявление за вписване на обстоятелства относно прокура</asp:ListItem>
	                 	         <asp:ListItem>"B2">Б2  Заявление за вписване на обстоятелства относно клон</asp:ListItem>
	                          	 <asp:ListItem>"B3">Б3  Заявление за вписване на обстоятелства относно залог на дружествен дял</asp:ListItem>
	                 	         <asp:ListItem>"B4">Б4  Заявление за вписване на обстоятелства относно залог на търговско предприятие</asp:ListItem>
	                 	         <asp:ListItem>"B5">Б5  Заявление за вписване на обстоятелства относно запор върху дружествен дял</asp:ListItem>
	                 	         <asp:ListItem>"B6">Б6  Заявление за вписване на обстоятелства относно прекратяване и ликвидация</asp:ListItem>
	                 	         <asp:ListItem>"B7">Б7 Заявление за вписване на обстоятелства относно действителни собственици</asp:ListItem>
	                             <asp:ListItem>"V1">В1  Заявление за вписване на обстоятелства относно прехвърляне на търговско предприятие</asp:ListItem>
	                             <asp:ListItem>"V21">В21 Заявление за вписване на обстоятелства относно преобразуване на търговски дружества (без разделяне и отделяне)</asp:ListItem>
	                             <asp:ListItem>"V22">В22 Заявление за вписване на обстоятелства относно преобразуване на търговски дружества - разделяне и отделяне</asp:ListItem>
	                        	 <asp:ListItem>"V23">В23 Заявление за спиране на вписването при оспорване на преобразуването</asp:ListItem>
	                        	 <asp:ListItem>"V24">В24 Заявление за вписване на обстоятелства относно преобразуване с участие на дружества от държави-членки на ЕС</asp:ListItem>
	                        	 <asp:ListItem>"V25">В25 Заявление за вписване на обстоятелства относно преобразуване на сдружения, фондации и читалища (без разделяне и отделяне)</asp:ListItem>
	                        	 <asp:ListItem>"V26">В26 Заявление за вписване на обстоятелства относно преобразуване на сдружения, фондации и читалища - разделяне и отделяне</asp:ListItem>
		                         <asp:ListItem>"V31">В31 Заявление за вписване на обстоятелства относно преустройство на кооперации (без разделяне и отделяне)</asp:ListItem>
	                        	 <asp:ListItem>"V32">В32 Заявление за вписване на обстоятелства относно преустройство на кооперации - разделяне и отделяне</asp:ListItem>
	                        	 <asp:ListItem>"V33">В33 Заявление за вписване на обстоятелства относно преобразуване на европейско кооперативно дружество в кооперация</asp:ListItem>
	                        	 <asp:ListItem>"G1">Г1  Заявление за обявяване на актове</asp:ListItem>
		                         <asp:ListItem>"G2">Г2  Заявление за обявяване на годишни финансови отчети</asp:ListItem>
		                         <asp:ListItem>"G3">Г3  Заявление за обявяване на декларация по чл.38, ал.9, т.2 от ЗСч</asp:ListItem>
	                        	 <asp:ListItem>"D1">Д1  Заявление за запазване на фирма/наименование</asp:ListItem>
	                        	 <asp:ListItem>"E1">Е1  Заявление за издаване на удостоверение за законосъобразност</asp:ListItem>
	                        	 <asp:ListItem>"J1">Ж1  Заявление за отстраняване на нередовности</asp:ListItem>
 
                                    </asp:ListBox>
                                    
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="left" bgcolor="#ffffff"></td>
                            <td bgcolor="#ffffff">&nbsp;</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td style="padding-top: 5px">
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="left">
                                <span id="ctl00_ContentPlaceHolder1_lblEntry">Заявлението се подава</span></td>
                            <td valign="middle">
                                <table id="ctl00_ContentPlaceHolder1_rblPackageMode" border="0">
	<tbody><tr>
		<td>
            <asp:RadioButton ID="RadioButton1" runat="server" Text="За първоначално вписване" />


		</td>
        <td>
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Промяна на обстоятелства" />
      

        </td>
        <td>
            <asp:RadioButton ID="RadioButton3" runat="server" Text="Пререгистрация" />
        

        </td>
	
    </tr>
</tbody></table>
                                <br>
                                <span id="ctl00_ContentPlaceHolder1_package_state_info"></span>
                            </td>
                        </tr>
                    </tbody></table>
                
            <table id="ctl00_ContentPlaceHolder1_tblMoveNext" style="margin-right: 60px" align="right">
	<tbody><tr>
		<td id="ctl00_ContentPlaceHolder1_tdMoveNext" style="height: 24px;" align="right">
            <asp:Button ID="Button2" runat="server" Text="Запиши и продължи" BorderStyle="Solid" BorderWidth="4px" Font-Bold="True" />
                        <!--<input type="submit" name="ctl00$ContentPlaceHolder1$btnMoveNext" value="Запиши и продължи" id="ctl00_ContentPlaceHolder1_btnMoveNext" class="button" style="width:130px;">-->
                    </td>
	</tr>
</tbody></table>


</asp:Content>

