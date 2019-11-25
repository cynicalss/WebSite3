<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Page7.aspx.cs" Inherits="Page7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <!-- Връзки To do maybe -->
            <!DOCTYPE html>
<html>
    <head>
        <title>Test Case</title>
        <link href="css/Main.css" rel="stylesheet" type="text/css">
        <link href="css/calendar-blue.css" rel="stylesheet" type="text/css">
    </head>
    <div id="main-container">
    

         <!--begin main content-->

            <div id="container">
    <tbody><tr>
        <td>
		<table class="GridViewControl" cellspacing="6" cellpadding="6" border="0" id="ctl00_mainContent_contentGridView_mainGridView" style="width:670px;">
			<tbody><tr class="GridViewItems">
				<td align="left"><a href="http://www.parliament.bg/" target="_blank"><b>Народно събрание на Република България</b> </a></td>
			</tr><tr class="AlternateGridViewItems">
				<td align="left"><a href="http://www.president.bg/" target="_blank"><b>Президент на Република България</b> </a></td>
			</tr><tr class="GridViewItems">
				<td align="left"><a href="http://www.government.bg/" target="_blank"><b>Министерски Съвет</b> </a></td>
			</tr><tr class="AlternateGridViewItems">
				<td align="left"><a href="https://mjs.bg/" target="_blank"><b>Министерство на правосъдието</b> </a></td>
			</tr><tr class="GridViewItems">
				<td align="left"><a href="http://www.mvr.bg/" target="_blank"><b>Министерство на вътрешните работи</b> </a></td>
			</tr><tr class="AlternateGridViewItems">
				<td align="left"><a href="http://www.mfa.bg/" target="_blank"><b>Министерство на външните работи</b> </a></td>
			</tr><tr class="GridViewItems">
				<td align="left"><a href="http://www.minfin.bg/" target="_blank"><b>Министерство на финансите</b> </a></td>
			</tr><tr class="AlternateGridViewItems">
				<td align="left"><a href="http://www.md.government.bg/" target="_blank"><b>Министерство на отбраната</b> </a></td>
			</tr><tr class="GridViewItems">
				<td align="left"><a href="http://www.mi.government.bg/bg" target="_blank"><b>Министерство на икономиката и енергетиката</b> </a></td>
			</tr><tr class="AlternateGridViewItems">
				<td align="left"><a href="http://www.mlsp.government.bg/" target="_blank"><b>Министерство на труда и социалната политика</b> </a></td>
			</tr><tr class="pager" style="font-weight:bold;text-decoration:none;">
				<td colspan="2"><span style="color:Black;"><br></span>
                              <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img/first.gif" />
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="img/previous.gif" />

                         <!--<input type="image" name="ctl00$mainContent$contentGridView$mainGridView$ctl13$ImageButton1" id="ctl00_mainContent_contentGridView_mainGridView_ctl13_ImageButton1" class="imageButton" src="img/first.gif" style="border-width:0px;">
                         <input type="image" name="ctl00$mainContent$contentGridView$mainGridView$ctl13$ImageButton2" id="ctl00_mainContent_contentGridView_mainGridView_ctl13_ImageButton2" class="imageButton" src="img/previous.gif" style="border-width:0px;">
                        -->
                        <span id="ctl00_mainContent_contentGridView_mainGridView_ctl13_labelPages">Страница</span>

                        <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem> 1 </asp:ListItem>
	                            <asp:ListItem> 2 </asp:ListItem>
                                <asp:ListItem> 3 </asp:ListItem>
                        </asp:DropDownList>

                        <!--<select name="ctl00$mainContent$contentGridView$mainGridView$ctl13$ddlPages" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$mainContent$contentGridView$mainGridView$ctl13$ddlPages\&#39;,\&#39;\&#39;)&#39;, 0)" id="ctl00_mainContent_contentGridView_mainGridView_ctl13_ddlPages" class="dropDown" style="width:40px;">
					<option selected="selected" value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>

				</select>-->

                        

                        <span id="ctl00_mainContent_contentGridView_mainGridView_ctl13_label1">От</span> 
                        <span id="ctl00_mainContent_contentGridView_mainGridView_ctl13_lblPageCount">3</span>

                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="img/next.gif" />
                        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="img/last.gif" />
                        <!--<input type="image" name="ctl00$mainContent$contentGridView$mainGridView$ctl13$ImageButton3" id="ctl00_mainContent_contentGridView_mainGridView_ctl13_ImageButton3" class="imageButton" src="img/next.gif" style="border-width:0px;">
                         <input type="image" name="ctl00$mainContent$contentGridView$mainGridView$ctl13$ImageButton4" id="ctl00_mainContent_contentGridView_mainGridView_ctl13_ImageButton4" class="imageButton" src="img/last.gif" style="border-width:0px;">
                          -->
                 </td>
			</tr>
		</tbody></table>
        </td>
    </tr>
</tbody></table>
</div></div>

</asp:Content>

