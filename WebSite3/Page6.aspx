<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Page6.aspx.cs" Inherits="Page6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <!-- Новини -->

             <!DOCTYPE html>
<html>
    <head>
        <title>Test Case</title>
        <link href="css/Page6.css" rel="stylesheet" type="text/css">
        <link href="css/calendar-blue.css" rel="stylesheet" type="text/css">
    </head>

        <tbody><tr>
            <td align="left">
                <span id="ctl00_mainContent_labelTitle" class="labelTitle">Новини</span>
            </td>
        </tr>
        <tr id="ctl00_mainContent_rowNewsFilter">
	<td align="right">

        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>- месец -</asp:ListItem>
		    <asp:ListItem> Януари  </asp:ListItem>
		    <asp:ListItem> Февруари  </asp:ListItem>
		    <asp:ListItem> Март  </asp:ListItem>
		    <asp:ListItem> Април  </asp:ListItem>
		    <asp:ListItem> Май  </asp:ListItem>
		    <asp:ListItem> Юни  </asp:ListItem>
		    <asp:ListItem> Юли  </asp:ListItem>
		    <asp:ListItem> Август  </asp:ListItem>
		    <asp:ListItem> Септември  </asp:ListItem>
		    <asp:ListItem> Октомври  </asp:ListItem>
		    <asp:ListItem> Ноември  </asp:ListItem>
		    <asp:ListItem> Декември </asp:ListItem>

        </asp:DropDownList>
                

        <asp:DropDownList ID="DropDownList2" runat="server">

	        <asp:ListItem> 2019 </asp:ListItem>
		    <asp:ListItem> 2018 </asp:ListItem>
		    <asp:ListItem> 2017 </asp:ListItem>
    		<asp:ListItem> 2016 </asp:ListItem>
	    	<asp:ListItem> 2015 </asp:ListItem>
    		<asp:ListItem> 2014 </asp:ListItem>
    		<asp:ListItem> 2013 </asp:ListItem>
    		<asp:ListItem> 2012 </asp:ListItem>
    		<asp:ListItem> 2011 </asp:ListItem>
	    	<asp:ListItem> 2010 </asp:ListItem>
    		<asp:ListItem> 2009 </asp:ListItem>
    		<asp:ListItem> 2008 </asp:ListItem>
    		<asp:ListItem> 2007 </asp:ListItem>
    		<asp:ListItem> 2006 </asp:ListItem>
    		<asp:ListItem> 2005 </asp:ListItem>
	    	<asp:ListItem> 2004 </asp:ListItem>

        </asp:DropDownList>



        <!--<select name="ctl00$mainContent$dropdownMonths" id="ctl00_mainContent_dropdownMonths" class="textboxControl">
		<option selected="selected" value="0">- месец -</option>
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
		<option value="12"> Декември </option>-->

	<!--</select>&nbsp;<select name="ctl00$mainContent$dropdownYears" id="ctl00_mainContent_dropdownYears" class="textboxControl" style="width:60px;">
		<option value="2004">2004</option>
		<option value="2005">2005</option>
		<option value="2006">2006</option>
		<option value="2007">2007</option>
		<option value="2008">2008</option>
		<option value="2009">2009</option>
		<option value="2010">2010</option>
		<option value="2011">2011</option>
		<option value="2012">2012</option>
		<option value="2013">2013</option>
		<option value="2014">2014</option>
		<option value="2015">2015</option>
		<option value="2016">2016</option>
		<option value="2017">2017</option>
		<option value="2018">2018</option>
		<option selected="selected" value="2019">2019</option>

	</select>-->

        <asp:Button ID="Button1" runat="server" Text="Покажи" />
                <!--<input type="submit" name="ctl00$mainContent$buttonSearch" value="Покажи" id="ctl00_mainContent_buttonSearch" class="buttonControlNews"></td>-->
</tr>

        
        <tr id="ctl00_mainContent_rowResult">
	<td>
                


<table class="mainTable100">
    <tbody><tr>
        <td>
             <div>
		<table class="GridViewControl" cellspacing="6" cellpadding="6" border="0" id="ctl00_mainContent_contentGridView_mainGridView" style="width:670px;">
			<tbody><tr class="GridViewItems">
				<td align="left"><span>10.09.2019<br></span><a href="javascript:__doPostBack(&#39;ctl00$mainContent$contentGridView$mainGridView$ctl02$ctl01&#39;,&#39;&#39;)"><b>Планирано въвеждане на нова функционалност в информационната система на търговския регистър и регистъра на юридическите </b><br></a><span>Уважаеми потребители,
Поради планирано въвеждане на нова функционалност в информационната система на търговския регистър и регистъра на юридически...</span></td>
			</tr><tr class="AlternateGridViewItems">
				<td align="left"><span>26.07.2019<br></span><a href="javascript:__doPostBack(&#39;ctl00$mainContent$contentGridView$mainGridView$ctl03$ctl01&#39;,&#39;&#39;)"><b>Невярна информация за теч на данни от ТРРЮЛНЦ</b><br></a><span>По повод постъпил сигнал в Агенция по вписванията, относно оплакване, че в Google се откриват индексирани лични данни от сайта на Търговския...</span></td>
			</tr><tr class="GridViewItems">
				<td align="left"><span>20.06.2019<br></span><a href="javascript:__doPostBack(&#39;ctl00$mainContent$contentGridView$mainGridView$ctl04$ctl01&#39;,&#39;&#39;)"><b>Планирано обновяване на Информационната система на ТРРЮЛНЦ</b><br></a><span>Уважаеми потребители,
На 21.06.2019 г. в периода от 21:00 ч. до 21:40 ч., поради планирано обновяване на информационната система, няма да бъдат...</span></td>
			</tr><tr class="AlternateGridViewItems">
				<td align="left"><span>14.06.2019<br></span><a href="javascript:__doPostBack(&#39;ctl00$mainContent$contentGridView$mainGridView$ctl05$ctl01&#39;,&#39;&#39;)"><b>Електронните услуги ще бъдат ограничени на 15.06.2019г.</b><br></a><span>Агенцията по вписванията уведомява всички потребители, че онлайн услугите на Агенцията ще бъдат ограничени на 15.06.2019 в часовия диапазон 12...</span></td>
			</tr><tr class="GridViewItems">
				<td align="left"><span>30.05.2019<br></span><a href="javascript:__doPostBack(&#39;ctl00$mainContent$contentGridView$mainGridView$ctl06$ctl01&#39;,&#39;&#39;)"><b>Агенцията по вписванията започва активно надграждане и оптимизиране на системите</b><br></a><span>Планираните дейности по модернизация на системите ще наложат частични спирания на електронните услуги на Агенцията

До края на годината Агенцията...</span></td>
			</tr><tr class="pager" style="font-weight:bold;text-decoration:none;">
				<td colspan="2"><span style="color:Black;"><br></span>
<div align="right" style="vertical-align:10px">

                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img/first.gif" />
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="img/previous.gif" />

                        <!-- <input type="image" name="ctl00$mainContent$contentGridView$mainGridView$ctl08$ImageButton1" id="ctl00_mainContent_contentGridView_mainGridView_ctl08_ImageButton1" class="imageButton" src="img/first.gif" style="border-width:0px;">
                         <input type="image" name="ctl00$mainContent$contentGridView$mainGridView$ctl08$ImageButton2" id="ctl00_mainContent_contentGridView_mainGridView_ctl08_ImageButton2" class="imageButton" src="img/previous.gif" style="border-width:0px;">
                        -->
                        <span id="ctl00_mainContent_contentGridView_mainGridView_ctl08_labelPages">Страница</span>

                        <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem> 1 </asp:ListItem>
	                            <asp:ListItem> 2 </asp:ListItem>
                                <asp:ListItem> 3 </asp:ListItem>
                        </asp:DropDownList>


                        <!--<select name="ctl00$mainContent$contentGridView$mainGridView$ctl08$ddlPages" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$mainContent$contentGridView$mainGridView$ctl08$ddlPages\&#39;,\&#39;\&#39;)&#39;, 0)" id="ctl00_mainContent_contentGridView_mainGridView_ctl08_ddlPages" class="dropDown" style="width:40px;">
					<option selected="selected" value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>

				</select>-->
                        <span id="ctl00_mainContent_contentGridView_mainGridView_ctl08_label1">От</span> 
                        <span id="ctl00_mainContent_contentGridView_mainGridView_ctl08_lblPageCount">3</span>

                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="img/next.gif" />
                        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="img/last.gif" />

                        <!--<input type="image" name="ctl00$mainContent$contentGridView$mainGridView$ctl08$ImageButton3" id="ctl00_mainContent_contentGridView_mainGridView_ctl08_ImageButton3" class="imageButton" src="img/next.gif" style="border-width:0px;">
                         <input type="image" name="ctl00$mainContent$contentGridView$mainGridView$ctl08$ImageButton4" id="ctl00_mainContent_contentGridView_mainGridView_ctl08_ImageButton4" class="imageButton" src="img/last.gif" style="border-width:0px;">
                           -->
</div>
                 </td>
			</tr>
		</tbody></table>
	</div>
        </td>
    </tr>
</tbody></table>
    <style type="text/css">    
	.pager span { color:#000000;font-weight:bold;}	
  </style>

            </td>
</tr>

        
    </tbody>





    </table>
    </table>
</asp:Content>

