//function previewLoad()
//{
//    window.open('../Preview/SubUicPreview.aspx?','','status=0, toolbar=0, location=0, menubar=0, width=600, height=600, resizable=1, scrollbars=1');
//}
function SelectRadio(objRadioButton, grdName, hiden) 
{
    var i, obj;
    for (i=0; i<document.all.length; i++) 
    {
        obj = document.all(i);
        if (obj.type == "radio") 
        {
            if (objRadioButton.id.indexOf(grdName) != -1)
            {
                if (objRadioButton.id == obj.id)
                {
                    obj.checked = true;
                    hiden.value = obj.id;
                }
                else
                {
                    obj.checked = false;
                }
            }
        }
    }
}
function clientBrowserIsIE()
{
    var clientBrowserIsIE = false;
    if(navigator.appName.indexOf("Microsoft Internet Explorer") > -1)
        clientBrowserIsIE = true;
    
    return clientBrowserIsIE;
}
var uploadInProgress = false;
function uploadScannedDoc(divId, lblNoFileErrMsgId, hdnDocId, hdnDocGuidId, validatorId, validatorErrMegId, validatorErrMegText)
{
    var pageIsValid = false;
    if(uploadInProgress == true)
        return false;
        
    var doc;
    var docSubTypeValidator = null;
    var fileValidator = null;
    
    //validate doc sub type    
    if(window.Page_Validators && window.ValidatorValidate)
    {
        for (i = 0; i < Page_Validators.length; i++)
        {
            if(Page_Validators[i].id == validatorId)
            {
                docSubTypeValidator = Page_Validators[i];
                break;
            }
        }    
        if(docSubTypeValidator != null)
        {
            ValidatorValidate(docSubTypeValidator);
            pageIsValid = docSubTypeValidator.isvalid;                
        }
    }
    
    //ako validatorId ne e asp.net validator, a pole za validirane, validatorErrMegId e obekta za text na greshkata
    if(docSubTypeValidator == null)
    {
        var fieldObj = document.getElementById(validatorId);
        if(fieldObj != null && fieldObj.value == "")
        {
            pageIsValid = false;
            var fieldErrorObj = document.getElementById(validatorErrMegId);
            if(fieldErrorObj != null)
            {
                if(typeof(fieldErrorObj.value) != 'undefined')
                    fieldErrorObj.value = validatorErrMegText;
                else
                    fieldErrorObj.innerText = validatorErrMegText;
            }
        }
        else
        {
            var fieldErrorObj = document.getElementById(validatorErrMegId);
            if(fieldErrorObj != null)
            {
                if(typeof(fieldErrorObj.innerText) != 'undefined')
                    fieldErrorObj.innerText = "";                    
                else
                    fieldErrorObj.value = "";
            }
            pageIsValid = true;
        }
    }
    
    if(pageIsValid == true && divId != null && hdnDocId != null)
    {
        var scanDocumentObj = null;
        var div = document.getElementById(divId);
        for(i = 0; i < div.all.length; i++)
        {
            if( div.all[i].id.indexOf('scanDocument') > -1 )
            {
                scanDocumentObj = div.all[i];
                break;
            }
        }        
        var hdnObj = document.getElementById(hdnDocId);
        var hdnGuid = document.getElementById(hdnDocGuidId);
        if(scanDocumentObj != null)
        {
            //validate file
            if( typeof(scanDocumentObj.ScannedFilePath) == 'undefined' ||
                scanDocumentObj.ScannedFilePath.length < 1
               )
            {
                pageIsValid = false;
                fileValidator = document.getElementById(lblNoFileErrMsgId);
                if(fileValidator != null)
                    fileValidator.style.visibility = 'visible';
            }
                
            if(pageIsValid == true)
            {
                if(uploadInProgress == false)
                {
                    uploadInProgress = true;
                    if(scanDocumentObj.UploadDocument())
                    {
                        var vbArr = new VBArray(scanDocumentObj.ReturnValue);
                        var jsArr = vbArr.toArray();
                        hdnObj.value = jsArr[0];
                        hdnGuid.value = jsArr[1];
                        
                        scanDocumentObj.SayUploadComplete();
                    }
                    else
                       pageIsValid = false; 
                }
                else
                    return false;
            }
        }
    }
    
    
    return pageIsValid;
}

function setCountryModeByForeignTrader(chbForeignTrader, ddlCountryId)
{
    if(typeof(chbForeignTrader) != 'undefined' && ddlCountryId != null)
    {
        setCountryMode(chbForeignTrader.checked, document.getElementById(chbForeignTrader.id.substring(0, chbForeignTrader.id.lastIndexOf("_") + 1) + ddlCountryId));
    }
}
function setCountryModeByIndent(tbUndent, ddlCountryId)
{
    if(typeof(tbUndent) != 'undefined' && ddlCountryId != null)
    {
        setCountryMode((tbUndent.value.length == 6), document.getElementById(tbUndent.id.substring(0, tbUndent.id.lastIndexOf("_") + 1) + ddlCountryId));
    }
}
function setCountryMode(enableCountry, ddlCountry)
{
    if(ddlCountry != null)
    {
        ddlCountry.disabled = !enableCountry;
        if(ddlCountry.disabled)
            ddlCountry.options[0].selected = true;
    }
}
function resetCountryModeAfterLoad(chbForeignTrader, tbUndent, ddlCountryId)
{
    var chbF = document.getElementById(chbForeignTrader);
    var tdI = document.getElementById(tbUndent);
    
    if(chbF != null && chbF.checked)
    {
        setCountryModeByForeignTrader(chbF, ddlCountryId);
    }
    else if(tdI != null && tdI.value.length == 6)
    {
        setCountryModeByIndent(tdI, ddlCountryId);
    }
}
/*Registration From Refusal*/

var refFromRefusalWindow;
var refFromRefusalWindowID1;
var refFromRefusalWindowID2;
var refFromRefusalWindowID3;

function openRegFromRefHelper()
{
    refFromRefusalWindow.document.getElementById("openerId1").value = refFromRefusalWindowID1;
    refFromRefusalWindow.document.getElementById("openerId2").value = refFromRefusalWindowID2;
    refFromRefusalWindow.document.getElementById("openerId3").value = refFromRefusalWindowID3;
}
function openRegFromRef(ID1, ID2, ID3, url, name)
{
    refFromRefusalWindow = window.open(url, name, '');            
    refFromRefusalWindowID1 = ID1;
    refFromRefusalWindowID2 = ID2;
    refFromRefusalWindowID3 = ID3;
    manageRegFormState(refFromRefusalWindow);
                
    return false;
}
function manageRegFormState(win)
{
    if(win != null && typeof(win) != 'undefined')
    {
        if(win.document)
        {
            if (win.document.readyState == 'complete') 
            {
                openRegFromRefHelper();
            }
            else
            {
                win.document.onreadystatechange = 
                    function() 
                    {
                        if (win.document.readyState == 'complete') 
                        {
                             openRegFromRefHelper();
                        }
                    }
            }
        }
    }
}
function openRegFromRefDocTypes(url, name)
{
    window.open(url, name, '');
    return false;
}
function attachedDocFromRefValidate(validator_id, hf_id, booooo)
{
    var val_res = validateByArray(new Array(validator_id));
    var hf = window.document.getElementById(hf_id);
    var hf_res = hf.value != null && hf.value != "";
    var eee = window.document.getElementById(booooo);
    
    if(hf_res)
    {
        eee.style.visibility = 'hidden';
    }
    else
    {
        eee.style.visibility = 'visible';
    }
    
    return val_res && hf_res;
}      
     

/*End of Registration From Refusal*/

function validateByArray(validators_ids_array)
{
    if(validators_ids_array != null && typeof(validators_ids_array) != 'undefined')
    {
        res = true;
        
        if(window.Page_Validators && window.ValidatorValidate)
        {
            for (i = 0; i < Page_Validators.length; i++)
            {
                for(j = 0; j < validators_ids_array.length; j++)
                {
                    if(Page_Validators[i].id == validators_ids_array[j])
                    {
                        ValidatorValidate(Page_Validators[i]);
                        res = Page_Validators[i].isvalid && res;                
                    }
                }
            }
         }
         
         return res;      
    }
    else
    {
        return true;
    }
}

function RebindOpener(close)
{
            var rebind_ = window.opener.document.getElementById('rebind');
            if(rebind_ != null)
            {
                rebind_.value = 'true';
            }
            window.opener.document.forms[0].submit();

            if(close)
            {
                window.close();
            }
}

function ReloadOpener(btn_server_id, close_window) 
 {		
    if(btn_server_id == undefined)
    {
        window.opener.document.forms[0].submit();
        if(close_window == undefined || close_window == true)
        {
          window.close();
        }
    }
    else
    {															
	    for(i=0; i < window.opener.document.forms[0].elements.length;i++){
		    var elem = window.opener.document.forms[0].elements[i];
		    if(elem.id.indexOf(btn_server_id) > -1) {
    			
			    elem.click();	
			    if(close_window == true)
                {
                 window.close();
                }			
			    return true;
		    }
	    }
	}			
	return true;
}			
function setDateFields(dateField, fd,fm,fy) 
{
    dateStr = dateField.value; 
    day = dateStr.substring(0, 2);
    month = dateStr.substring(3, 5);
    year = dateStr.substring(6, 10);
    fd.value = day;
    fm.value = month;
    fy.value = year;
}

function EnableEmail(lbox, txtfld, _errLb1, _errLb2) 
{
    txtfld.disabled=false;
    
    //09.02.2010 Prenahvam client side validation, zaradi kofti regex engine implementation v IE7.  
    //ValidatorEnable(_errLb1, true);
    //ValidatorEnable(_errLb2, true);

    if(_errLb1 != null && typeof(_errLb1) != 'undefined')
    {
        _errLb1.style.visibility = "visible";  
    }
    if(_errLb2 != null && typeof(_errLb2) != 'undefined')
    {
        _errLb2.style.visibility = "visible";  
    }
}

function DisableEmail(lbox, txtfld,_errLb1, _errLb2) 
{
    txtfld.disabled=true;  
     
    //09.02.2010 Prenahvam client side validation, zaradi kofti regex engine implementation v IE7.  
    //ValidatorEnable(_errLb1, false);
    //ValidatorEnable(_errLb2, false);
    
    if(_errLb1 != null && typeof(_errLb1) != 'undefined')
    {
        _errLb1.style.visibility = "hidden";  
    }
    if(_errLb2 != null && typeof(_errLb2) != 'undefined')
    {
        _errLb2.style.visibility = "hidden";  
    }
}

//Client-side validaciata ve4e se pravi ot RegelarExpressionValidator.
//function tbEmailCheck(txtfld,_errLbl)
//{
//    if(tbEmailValid(txtfld.value) )     
//    { _errLbl.style.visibility ="hidden" ;}
//    else
//    { _errLbl.style.visibility ="visible" ;}
//} 

//function tbEmailValid(str) 
//{
//	var at="@"
//	var dot="."
//	var lat=str.indexOf(at)
//	var lstr=str.length
//	var ldot=str.indexOf(dot)
//	if (str.indexOf(at)==-1){
//	   return false
//	}
//	if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
//	   return false
//	}
//	if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
//	    return false
//	}
//	 if (str.indexOf(at,(lat+1))!=-1){
//	    return false
//	 }
//	 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
//	    return false
//	 }
//	 if (str.indexOf(dot,(lat+2))==-1){
//	    return false
//	 }
//	 if (str.indexOf(" ")!=-1){
//	    return false
//	 }
//	 return true					
//}

function getElementByServerID(serverID)
{
    var elem;
    for(i=0; i < window.document.forms[0].elements.length;i++){
        elem = window.document.forms[0].elements[i];
        if(elem.id.indexOf(serverID) > -1) 
        {
            return elem;
        }
    }
    
    return null;
}
function masterOnLoad(func1)
{
    if(eval("window." + func1)) 
    {
        eval("window." + func1 + "()");
    }
}

var globalCommTypeID;
var globalnoCommNitifClientID;
var globalnotifTextClientID;
var globalRedirectUrl;
function checkCommunicationNewMessages(cTypeID, incomingNumber, userID, roleID, isSelfWork, 
                                        noNotificationsClientID, notificationTextClientID, redirectUrl)
{
    globalCommTypeID = cTypeID;
    globalnoCommNitifClientID = noNotificationsClientID;
    globalnotifTextClientID = notificationTextClientID;
    globalRedirectUrl = redirectUrl;
    
    ComReg.Services.CommunicationsService.HasNewMessage(cTypeID, incomingNumber, userID, roleID, isSelfWork, 
                            OnCheckCommunicationNewMessagesComplete, ErrorOnCheckCommunicationNewMessages);

    setTimeout("checkCommunicationNewMessages('" + cTypeID + "', '" + incomingNumber + "', '"
                    + userID + "', '"+ roleID + "', '" + isSelfWork + 
                    "', '" + noNotificationsClientID + "', '" + notificationTextClientID + "', '" + redirectUrl +"');", 30000);    
}
function OnCheckCommunicationNewMessagesComplete(result, args)
{
    var lblNotifications = document.getElementById(globalnoCommNitifClientID);
    var hlCommunicationNotification = document.getElementById(globalnotifTextClientID);
    
    if(result == true)
    {
        if(lblNotifications != null)
            lblNotifications.style.display = 'none';
        
        if(globalCommTypeID == 1)
        {    
            hlCommunicationNotification.innerHTML = "Имате уведомление по процедура за изправяне на грешка";
            hlCommunicationNotification.style.color = 'Red';
            hlCommunicationNotification.href = globalRedirectUrl;
        }
    }
    else
    {
        if(lblNotifications != null)
            lblNotifications.style.display = 'block';
            
        hlCommunicationNotification.innerText = "";
        hlCommunicationNotification.href = "";
    }                   
}
function ErrorOnCheckCommunicationNewMessages(reason)
{
    var lblNotifications = document.getElementById(globalnoCommNitifClientID);
    var hlCommunicationNotification = document.getElementById(globalnotifTextClientID);
    
    if(lblNotifications != null)
            lblNotifications.style.display = 'block';
            
    hlCommunicationNotification.innerText = "Възникнала е грешка, <BR>свържете се с администратора на системата.";
    hlCommunicationNotification.href = "";
}
function jump(prevTxbClientId, sourceTxb, sourceTxbLength, nextTxbClientId)
{
    if(sourceTxb != null && event.propertyName == "value")
    {
        if(sourceTxb.value.length == 0 && prevTxbClientId != null)
        {
            var prevTxb = document.getElementById(prevTxbClientId);
            if( prevTxb == null || 
                prevTxb.style.visibility=="hidden" || 
                prevTxb.style.display=="none" || 
                prevTxb.disabled==true
              ) 
            {} 
            else 
            {
                prevTxb.focus();
            }
        }
        else if(sourceTxb.value.length == sourceTxbLength && nextTxbClientId != null)
        {
            var nextTxb = document.getElementById(nextTxbClientId);
            if( nextTxb == null || 
                nextTxb.style.visibility=="hidden" || 
                nextTxb.style.display=="none" || 
                nextTxb.disabled==true
              ) 
            {} 
            else 
            {
                nextTxb.focus();
            }
        }
    }
}
function setChbListOptions(parentControlID)
{
    try 
    { 
        if(event.srcElement.checked && parentControlID != null)
        {
            if(event.srcElement.type=='checkbox') 
            {
                var elements = document.getElementsByTagName("*");
                for(i = 0; i < elements.length; ++i ) 
                    if(elements[i].id.indexOf(parentControlID) > -1)
                        if( elements[i].type == 'checkbox') 
                            elements[i].checked = false;
            } 
            event.srcElement.checked = true; 
        }
    } 
    catch(E){}
}
function prepareFileUpload(obj)
{
    if(obj == null || typeof(obj) == 'undefined')
        return;
    
    if(window.Page_ClientValidate)
    {
        window.Page_ClientValidate();
        if(window.Page_IsValid)
            obj.style.display = 'none';
    }
}
function manageRadioGroupControls(checkeRBControl, disableC1, disableC2)
{
    if(disableC1 != null)
        enableTable(document.getElementById(disableC1), false);
    if(disableC2 != null)
        enableTable(document.getElementById(disableC2), false);
    if(checkeRBControl != null)
        enableTable(document.getElementById(checkeRBControl), true);
}
function enableTable(table, enable)
{
    var elements = table.getElementsByTagName("*");
    for(i = 0; i < elements.length; ++i )
    {
        if(!enable && elements[i].type == 'text' || elements[i].type == 'textarea')
            elements[i].value = '';
                            
        elements[i].disabled = !enable;
        
        //sled kato se disable-ne kontrolata s data, v html-a ne se rendva onmouseover-a, zatova imeto na eventa se pazi w atributa
        //commandarg, a funkciqta koqta trqbva da se izpylni v atributa commandargval (pri izpravqne na greshka i nepylnoti)
        if(enable && elements[i].commandarg && elements[i].commandargval)
        {
            eval("elements[i]. " + elements[i].commandarg + " = function() { eval(this.commandargval); } ; ");
        }
    }
}

function manageRadioButtons()
{
    if (arguments.length > 0)
    {
        if (arguments[0] != null)
            enableTable(document.getElementById(arguments[0]), true);
        
        for (var i = 1; i < arguments.length; ++i)
        {
            if (arguments[i]!= null)
                enableTable(document.getElementById(arguments[i]), false);    
        }
    }
}