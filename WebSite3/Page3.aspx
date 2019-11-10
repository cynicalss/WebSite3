<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Page3.aspx.cs" Inherits="Page3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

       <!DOCTYPE html>
<html>
    <head>
        <title>Test Case</title>
        <link href="css/Page3.css" rel="stylesheet" type="text/css">
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
пререгистрация.</span>
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
                                <input name="ctl00$ContentPlaceHolder1$tbTRFirmEIK" type="text" maxlength="9" id="ctl00_ContentPlaceHolder1_tbTRFirmEIK" class="inpNomer9_frfx">
                                <input type="submit" name="ctl00$ContentPlaceHolder1$bnCheckEIK" value="Провери" id="ctl00_ContentPlaceHolder1_bnCheckEIK" class="button"></td>
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
                                <div style="overflow: auto; width: 680px; height: 400px;">

                                    <select size="4" name="ctl00$ContentPlaceHolder1$lstRegForms" id="ctl00_ContentPlaceHolder1_lstRegForms" onchange="ListChange(this);" style="height:380px;">
	<option value="A1">А1  Заявление за вписване на обстоятелства относно едноличен търговец</option>
	<option value="A2">А2  Заявление за вписване на обстоятелства относно събирателно дружество</option>
	<option value="A3">А3  Заявление за вписване на обстоятелства относно командитно дружество</option>
	<option value="A4">А4  Заявление за вписване на обстоятелства относно дружество с ограничена отговорност</option>
	<option value="A5">А5  Заявление за вписване на обстоятелства относно акционерно дружество</option>
	<option value="A6">А6  Заявление за вписване на обстоятелства относно командитно дружество с акции</option>
	<option value="A7">А7  Заявление за вписване на обстоятелства относно кооперация</option>
	<option value="A8">А8  Заявление за вписване на обстоятелства относно клон на чуждестранен търговец</option>
	<option value="A9">А9  Заявление за вписване на обстоятелства относно търговец, публично предприятие</option>
	<option value="A10">А10 Заявление за вписване на обстоятелства относно ЕОИИ</option>
	<option value="A11">А11 Заявление за вписване на обстоятелства относно поделение в Р. България на ЕОИИ със седалище в др. държава-членка</option>
	<option value="A12">А12 Заявление за вписване на обстоятелства относно европейско дружество</option>
	<option value="A13">А13 Заявление за вписване на обстоятелства относно европейско кооперативно дружество</option>
	<option value="A14">А14 Заявление за вписване на обстоятелства относно дружество, регистрирано в юрисдикция с преференциален данъчен режим</option>
	<option value="A15">A15 Заявление за вписване на обстоятелства относно сдружение</option>
	<option value="A16">A16 Заявление за вписване на обстоятелства относно фондация</option>
	<option value="A17">A17 Заявление за вписване на обстоятелства относно народно читалище</option>
	<option value="A18">A18 Заявление за вписване на обстоятелства относно клон на ЧЮЛНЦ</option>
	<option value="B1">Б1  Заявление за вписване на обстоятелства относно прокура</option>
	<option value="B2">Б2  Заявление за вписване на обстоятелства относно клон</option>
	<option value="B3">Б3  Заявление за вписване на обстоятелства относно залог на дружествен дял</option>
	<option value="B4">Б4  Заявление за вписване на обстоятелства относно залог на търговско предприятие</option>
	<option value="B5">Б5  Заявление за вписване на обстоятелства относно запор върху дружествен дял</option>
	<option value="B6">Б6  Заявление за вписване на обстоятелства относно прекратяване и ликвидация</option>
	<option value="B7">Б7 Заявление за вписване на обстоятелства относно действителни собственици</option>
	<option value="V1">В1  Заявление за вписване на обстоятелства относно прехвърляне на търговско предприятие</option>
	<option value="V21">В21 Заявление за вписване на обстоятелства относно преобразуване на търговски дружества (без разделяне и отделяне)</option>
	<option value="V22">В22 Заявление за вписване на обстоятелства относно преобразуване на търговски дружества - разделяне и отделяне</option>
	<option value="V23">В23 Заявление за спиране на вписването при оспорване на преобразуването</option>
	<option value="V24">В24 Заявление за вписване на обстоятелства относно преобразуване с участие на дружества от държави-членки на ЕС</option>
	<option value="V25">В25 Заявление за вписване на обстоятелства относно преобразуване на сдружения, фондации и читалища (без разделяне и отделяне)</option>
	<option value="V26">В26 Заявление за вписване на обстоятелства относно преобразуване на сдружения, фондации и читалища - разделяне и отделяне</option>
	<option value="V31">В31 Заявление за вписване на обстоятелства относно преустройство на кооперации (без разделяне и отделяне)</option>
	<option value="V32">В32 Заявление за вписване на обстоятелства относно преустройство на кооперации - разделяне и отделяне</option>
	<option value="V33">В33 Заявление за вписване на обстоятелства относно преобразуване на европейско кооперативно дружество в кооперация</option>
	<option value="G1">Г1  Заявление за обявяване на актове</option>
	<option value="G2">Г2  Заявление за обявяване на годишни финансови отчети</option>
	<option value="G3">Г3  Заявление за обявяване на декларация по чл.38, ал.9, т.2 от ЗСч</option>
	<option value="D1">Д1  Заявление за запазване на фирма/наименование</option>
	<option value="E1">Е1  Заявление за издаване на удостоверение за законосъобразност</option>
	<option value="J1">Ж1  Заявление за отстраняване на нередовности</option>

</select>
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
		<td><input id="ctl00_ContentPlaceHolder1_rblPackageMode_0" type="radio" name="ctl00$ContentPlaceHolder1$rblPackageMode" value="1" onclick="PackageStateChange(this);"><label for="ctl00_ContentPlaceHolder1_rblPackageMode_0">За първоначално вписване</label></td><td><input id="ctl00_ContentPlaceHolder1_rblPackageMode_1" type="radio" name="ctl00$ContentPlaceHolder1$rblPackageMode" value="2" onclick="PackageStateChange(this);"><label for="ctl00_ContentPlaceHolder1_rblPackageMode_1">Промяна на обстоятелства</label></td><td><input id="ctl00_ContentPlaceHolder1_rblPackageMode_2" type="radio" name="ctl00$ContentPlaceHolder1$rblPackageMode" value="3" onclick="PackageStateChange(this);"><label for="ctl00_ContentPlaceHolder1_rblPackageMode_2">Пререгистрация</label></td>
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
                        <input type="submit" name="ctl00$ContentPlaceHolder1$btnMoveNext" value="Запиши и продължи" id="ctl00_ContentPlaceHolder1_btnMoveNext" class="button" style="width:130px;">
                    </td>
	</tr>
</tbody></table>


</asp:Content>

