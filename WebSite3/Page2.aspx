﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Page2.aspx.cs" Inherits="Page2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 238px;
            width: 544px;
        }
        .auto-style4 {
            width: 489px;
            height: 53px;
        }
        .auto-style5 {
            height: 53px;
        }
        .auto-style7 {
            cursor: hand;
            width: 23px;
            height: 15px;
            margin-top: 9;
        }
        .auto-style8 {
            width: 489px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

       <!DOCTYPE html>
<html>
    <head>
        <title>Test Case</title>
        <link href="css/Page2.css" rel="stylesheet" type="text/css">
        <link href="css/calendar-blue.css" rel="stylesheet" type="text/css">
    </head>




   <div id="content" style="width: 770px">
        
<div class="search_panel">
    <h2>
        <span id="ctl00_ContentPlaceHolder1_SearchHomeControl1_lblHeader">Вписвания, заличавания и обявявания</span></h2>
    <div class="search_form">
        <div style="font-size:X-Small;"><span style="margin:5px;float:left;"><img src="img/CaptchaImage.jpg" width="180" height="50" border="0"></span><span style="margin:5px;float:left;">Въведете показания код:<br><input name="ctl00$ContentPlaceHolder1$SearchHomeControl1$CaptchaControl1" type="text" size="5" maxlength="5"></span><br clear="all"></div>
        
        <table cellspacing="10" class="auto-style3">
            <tbody><tr>
                <td style="font-size: x-small" class="auto-style8">
                    текуща дата
                    
<table cellspacing="0" cellpadding="0">
    <tbody><tr>
        <td>
                        <span id="ctl00_ContentPlaceHolder1_SearchHomeControl1_currentDate_lblHintError" class="error"></span></td>
    </tr>
    <tr>
        <td>
            <table cellspacing="0" cellpadding="0">
            
                
                <tbody>
                    <tr valign="top">
                    <td style="padding-right: 5px;">
                        <input id="Text1" type="text" />
                    </td>

                    <td style="padding-left: 5px; padding-right: 5px;">
                        <input id="Text1" type="text" />
                    <td style="padding-left: 5px;">
                        <input id="Text1" type="text" />
                    <td style="padding-left: 5px">
                    </td>
                    <td valign="baseline"><img src="img/datepicker.gif" id="ctl00_ContentPlaceHolder1_SearchHomeControl1_currentDate_triggerIssueDate" style="cursor: hand">
                       </td>
                </tr>               
            </tbody></table>

        </td>
    </tr>
</tbody></table>

<input name="ctl00$ContentPlaceHolder1$SearchHomeControl1$currentDate$hDate" type="text" id="ctl00_ContentPlaceHolder1_SearchHomeControl1_currentDate_hDate" size="10" style="size:10; display: none" class="textBox" onchange="setDateFields(this, document.all.ctl00_ContentPlaceHolder1_SearchHomeControl1_currentDate_tbDateDay,document.all.ctl00_ContentPlaceHolder1_SearchHomeControl1_currentDate_tbDateMnt,document.all.ctl00_ContentPlaceHolder1_SearchHomeControl1_currentDate_tbDateYear)">
<script type="text/javascript">
	Calendar.setup(
	{
	inputField : "ctl00_ContentPlaceHolder1_SearchHomeControl1_currentDate_hDate", // ID of the input field
	ifFormat : "%d.%m.%Y", // the date format
	button : "ctl00_ContentPlaceHolder1_SearchHomeControl1_currentDate_triggerIssueDate" // ID of the button
	}
	);
</script> 

                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td verticale-align="left" class="auto-style4">

                  <asp:DropDownList ID="DropDownList1" runat="server">

                  <asp:ListItem Selected="True" Value="Първа"> Първа </asp:ListItem>
                  <asp:ListItem Value="Втора"> Втора </asp:ListItem>
                  <asp:ListItem Value="Трета"> Трета </asp:ListItem>
                  <asp:ListItem Value="Четвърта"> Четвърта </asp:ListItem>
                  <asp:ListItem Value="Пета"> Пета </asp:ListItem>

                  </asp:DropDownList>
               </td>
                </br>
                <td align="Left" class="auto-style5">
                    </td>
            </tr>
            <tr>
                <td style="font-size: x-small" class="auto-style8">
                    от дата
                    
<table cellspacing="0" cellpadding="0">
    <tbody><tr>
        <td>
                        <span id="ctl00_ContentPlaceHolder1_SearchHomeControl1_fromDate_lblHintError" class="error"></span></td>
    </tr>
    <tr>
        <td>
            <table cellspacing="0" cellpadding="0" border="0">
                
                <tbody><tr valign="top">
                    <td style="padding-right: 5px;">
                        <input id="Text1" type="text" />
                    </td>
                    <td style="padding-left: 5px; padding-right: 5px;">
                        <input id="Text1" type="text" />
                    <td style="padding-left: 5px;">
                        <input id="Text1" type="text" />
                    <td style="padding-left: 5px">
                    </td>
                    <td valign="baseline">
                        <img src="img/datepicker.gif" id="ctl00_ContentPlaceHolder1_SearchHomeControl1_currentDate_triggerIssueDate1" style="cursor: hand"></td>
                </tr>               
            </tbody></table>

        </td>
    </tr>
</tbody></table>

<input name="ctl00$ContentPlaceHolder1$SearchHomeControl1$fromDate$hDate" type="text" id="ctl00_ContentPlaceHolder1_SearchHomeControl1_fromDate_hDate" size="10" style="size:10; display: none" class="textBox" onchange="setDateFields(this, document.all.ctl00_ContentPlaceHolder1_SearchHomeControl1_fromDate_tbDateDay,document.all.ctl00_ContentPlaceHolder1_SearchHomeControl1_fromDate_tbDateMnt,document.all.ctl00_ContentPlaceHolder1_SearchHomeControl1_fromDate_tbDateYear)">
<script type="text/javascript">
	Calendar.setup(
	{
	inputField : "ctl00_ContentPlaceHolder1_SearchHomeControl1_fromDate_hDate", // ID of the input field
	ifFormat : "%d.%m.%Y", // the date format
	button : "ctl00_ContentPlaceHolder1_SearchHomeControl1_fromDate_triggerIssueDate" // ID of the button
	}
	);
</script> 

                    <br/>

                      <asp:DropDownList ID="DropDownList2" runat="server">

                  <asp:ListItem Selected="True" Value="0"> Януари </asp:ListItem>
                  <asp:ListItem Value="2"> Февруари </asp:ListItem>
                  <asp:ListItem Value="3"> Март </asp:ListItem>
                  <asp:ListItem Value="4"> Април </asp:ListItem>
                  <asp:ListItem Value="5"> Май </asp:ListItem>
                  <asp:ListItem Value="6"> Юни </asp:ListItem>
                  <asp:ListItem Value="7"> Юли </asp:ListItem>
                  <asp:ListItem Value="8"> Август </asp:ListItem>
                  <asp:ListItem Value="9"> Септември </asp:ListItem>
                  <asp:ListItem Value="10"> Октомври </asp:ListItem>
                  <asp:ListItem Value="11"> Ноември</asp:ListItem>
                  <asp:ListItem Value="12"> Декември </asp:ListItem>
                  </asp:DropDownList>

<br />
                    <br>
                     <table cellspacing="0" cellpadding="0" border="0">
                
                <tbody><tr valign="top">
                    <td style="padding-right: 5px;">
                        <input id="Text1" type="text" />
                    </td>
                    <td style="padding-left: 5px; padding-right: 5px;">
                        <input id="Text1" type="text" />
                    <td style="padding-left: 5px;">
                        <input id="Text1" type="text" />
                    <td style="padding-left: 5px">
                    </td>
                    <td valign="baseline">
                        <img src="img/datepicker.gif" id="ctl00_ContentPlaceHolder1_SearchHomeControl1_currentDate_triggerIssueDate1" style="cursor: hand"></td>
                </tr>               
            </tbody></table>
                    
                    <br />
    
    
    
        <asp:Button ID="Button1" runat="server" Text="Търси" />
        <asp:Button ID="Button2" runat="server" Text="Изчисти"/>
        
    
    
                    <br />
                    <br />

                </td>
                
               
   

        </td>
    </tr>
</tbody></table>

<input name="ctl00$ContentPlaceHolder1$SearchHomeControl1$toDate$hDate" type="text" id="ctl00_ContentPlaceHolder1_SearchHomeControl1_toDate_hDate" size="10" style="size:10; display: none" class="textBox" onchange="setDateFields(this, document.all.ctl00_ContentPlaceHolder1_SearchHomeControl1_toDate_tbDateDay,document.all.ctl00_ContentPlaceHolder1_SearchHomeControl1_toDate_tbDateMnt,document.all.ctl00_ContentPlaceHolder1_SearchHomeControl1_toDate_tbDateYear)">
<script type="text/javascript">
	Calendar.setup(
	{
	inputField : "ctl00_ContentPlaceHolder1_SearchHomeControl1_toDate_hDate", // ID of the input field
	ifFormat : "%d.%m.%Y", // the date format
	button : "ctl00_ContentPlaceHolder1_SearchHomeControl1_toDate_triggerIssueDate" // ID of the button
	}
	);
</script> 

                </td>
            </tr>
        </tbody></table>

                        <br>
        <span id="ctl00_ContentPlaceHolder1_SearchHomeControl1_lblErrors" style="color:Red;font-size:X-Small;"></span><br>
        <div id="ctl00_ContentPlaceHolder1_SearchHomeControl1_ValidationSummary1" style="color:Red;font-size:X-Small;display:none;">

</div>
    
    
    
</div>

    </div>


     
    </div>


            </asp:Content>

