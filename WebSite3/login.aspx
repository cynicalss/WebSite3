<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   
            
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
		<td>
           <input name="ctl00$mainContent$textboxUserName" type="text" maxlength="25" id="ctl00_mainContent_textboxUserName" class="textboxControl" onkeydown="fnTrapKD(document.getElementById('ctl00_mainContent_buttonLogIn'),event)" style="width:200px;"><span id="ctl00_mainContent_RequiredFieldValidator1" class="labelError" style="color:Red;visibility:hidden;">*</span></td>
	</tr>
	  <tr>
		 <td>
           <span id="ctl00_mainContent_Label4" class="labelControl">Парола</span>
         </td>
	  </tr>
	 <tr>
		<td>
           <input name="ctl00$mainContent$textboxPassword" type="password" maxlength="25" id="ctl00_mainContent_textboxPassword" class="textboxControl" onkeydown="fnTrapKD(document.getElementById('ctl00_mainContent_buttonLogIn'),event)" style="width:200px;"><span id="ctl00_mainContent_RequiredFieldValidator2" class="labelError" style="color:Red;visibility:hidden;">*</span>
		</td>
	 </tr>
	<tr>
		<td>
            <input id="ctl00_mainContent_savePassword" type="checkbox" name="ctl00$mainContent$savePassword"><label for="ctl00_mainContent_savePassword">Запомни паролата</label>
        </td>
	</tr>
	<tr>
		<td>
           <input type="submit" name="ctl00$mainContent$buttonLogIn" value="ВХОД" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$mainContent$buttonLogIn&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="ctl00_mainContent_buttonLogIn" class="buttonControl">
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
