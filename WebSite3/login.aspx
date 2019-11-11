<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 200px;
            height: 23px;
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
        <link href="css/Main.css" rel="stylesheet" type="text/css">
        <link href="css/login.css" rel="stylesheet" type="text/css">
    </head>
   
            
        <table id="ctl00_mainContent_tableLogin" class="tableLogin">
	<tbody><tr>
		<td class="tdLoginHeader" align="center">
            <span id="ctl00_mainContent_Label3" class="labelControlBold">ВХОД В СИСТЕМАТА</span>
           <br>
                            
         </td>
	</tr>
	<tr>
		<td>
           <span id="ctl00_mainContent_labelErrorLogin" class="labelError"></span>   
          </td>
	</tr>
	<tr>
		<td>
           <span id="ctl00_mainContent_Label1" class="labelControl">Потребителско име</span>
        </td>
	</tr>
	<tr>
		<td ; class="auto-style4">
            
            <asp:TextBox ID="txtEmail" placeholder="Enter Email" runat="server"></asp:TextBox>
                
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Wrong user" 
            ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>  
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>  
            
         <!--  <input name="ctl00$mainContent$textboxUserName" type="text" maxlength="25" id="ctl00_mainContent_textboxUserName" class="textboxControl" onkeydown="fnTrapKD(document.getElementById('ctl00_mainContent_buttonLogIn'),event)" style="width:200px;"><span id="ctl00_mainContent_RequiredFieldValidator1" class="labelError" style="color:Red;visibility:hidden;">*</span></td> -->
	</tr>
	  <tr>
		 <td>
           <span id="ctl00_mainContent_Label4" class="labelControl">Парола</span>
         </td>
	  </tr>
	 <tr>
		<td>
            
              <asp:TextBox ID="txtPassword" placeholder="Enter Password" runat="server"></asp:TextBox>  
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Wrong Password" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>  

          <!-- <input name="ctl00$mainContent$textboxPassword" type="password" maxlength="25" id="ctl00_mainContent_textboxPassword" class="textboxControl" onkeydown="fnTrapKD(document.getElementById('ctl00_mainContent_buttonLogIn'),event)" style="width:200px;"><span id="ctl00_mainContent_RequiredFieldValidator2" class="labelError" style="color:Red;visibility:hidden;">*</span>-->
		</td>
	 </tr>
	<tr>
		<td>
            <asp:CheckBox id="checkbox1" runat="server"
                    AutoPostBack="True"
                    Text="Запомни паролата"
                    TextAlign="Right"/>
            <!--<input id="ctl00_mainContent_savePassword" type="checkbox" name="ctl00$mainContent$savePassword"><label for="ctl00_mainContent_savePassword">Запомни паролата</label>-->
            </td>
	</tr>
	<tr>
		<td>
           
            <asp:button runat="server" text="ВХОД" />
            <!--<input type="submit" name="ctl00$mainContent$buttonLogIn" value="ВХОД" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$mainContent$buttonLogIn&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="ctl00_mainContent_buttonLogIn" class="buttonControl">-->
		</td>
	</tr>
	<tr>
		<td>
          <a id="ctl00_mainContent_linkButtonRegistration" class="labelControlBold" href="javascript:__doPostBack('ctl00$mainContent$linkButtonRegistration','')">Регистрация</a></td>
	</tr>
	<tr>
		<td>
         <a id="ctl00_mainContent_linkButtonForgottenPassword" class="labelControlBold" href="javascript:__doPostBack('ctl00$mainContent$linkButtonForgottenPassword','')">Забравена парола</a></td>
	</tr>
</tbody></table>

    </form>
</body>
</html>

</asp:Content>

