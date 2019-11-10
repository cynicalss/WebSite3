<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Page2.aspx.cs" Inherits="Page2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
        
        <table cellspacing="10">
            <tbody><tr>
                <td style="width: 300px; font-size: x-small">
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
                <td style="width: 300px" verticale-align="left">

                  <asp:DropDownList ID="DropDownList1" runat="server">

                  <asp:ListItem Selected="True" Value="Първа"> Първа </asp:ListItem>
                  <asp:ListItem Value="Втора"> Втора </asp:ListItem>
                  <asp:ListItem Value="Трета"> Трета </asp:ListItem>
                  <asp:ListItem Value="Четвърта"> Четвърта </asp:ListItem>
                  <asp:ListItem Value="Пета"> Пета </asp:ListItem>

                  </asp:DropDownList>
               </td>
                </br>
                <td align="Left">
                    <select name="ctl00$ContentPlaceHolder1$SearchHomeControl1$ddChooseMonth" id="ctl00_ContentPlaceHolder1_SearchHomeControl1_ddChooseMonth">




	<option selected="selected" value="0">Избери месец </option>
	<option value="1"> Януари  </option>
	<option value="2"> Февруари  </option>
	<option value="3"> Март  </option>
	<option value="4"> Април  </option>
	<option value="5"> Май  </option>
	<option value="6"> Юни  </option>
	<option value="7"> Юли  </option>
	<option value="8"> Август  </option>
	<option value="9"> Септември  </option>
	<option value="10"> Октомври  </option>
	<option value="11"> Ноември  </option>
	<option value="12"> Декември </option>

</select></td>
            </tr>
            <tr>
                <td style="width: 300px;font-size: x-small">
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
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            AlternateText="ImageButton 1"
                        ImageAlign="left"
                        ImageUrl="img/datepicker.gif"/>
                            

                       </td>
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

                </td>
                
                <td style="font-size: x-small">
                    до calendar
          <!--<table cellspacing="0" cellpadding="0">-->
                    <table cellspacing="0" cellpadding="0" border="0">
    <tbody><tr>
        <td>
                        <span id="ctl00_ContentPlaceHolder1_SearchHomeControl1_toDate_lblHintError" class="error"></span></td>
    </tr>
        
    <tr>
        <td>
            

            <table style="vertical-align:top";>
                
                <tbody><tr style="vertical-align:top";>
                     <td style="padding-right: 5px;">
                        <input id="Text1" type="text" />
                    </td>
                    <td style="padding-left: 5px; padding-right: 5px;">
                        <input id="Text1" type="text" />
                    <td style="padding-left: 5px;">
                        <input id="Text1" type="text" />
                    <td style="padding-left: 5px">
                    </td>
                       <asp:ImageButton ID="ImageButton2" runat="server" 
                            AlternateText="ImageButton 1"
                        ImageAlign="left"
                        ImageUrl="img/datepicker.gif"/>
                       </td>
                </tr>               
            </tbody></table>

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

        <asp:Button ID="Button1" runat="server" Text="Търси" />
        <asp:Button ID="Button2" runat="server" Text="Изчисти" />
        
        <br>
        <span id="ctl00_ContentPlaceHolder1_SearchHomeControl1_lblErrors" style="color:Red;font-size:X-Small;"></span><br>
        <div id="ctl00_ContentPlaceHolder1_SearchHomeControl1_ValidationSummary1" style="color:Red;font-size:X-Small;display:none;">

</div>
    
    
    
</div>

    </div>


     
    </div>


            </asp:Content>

