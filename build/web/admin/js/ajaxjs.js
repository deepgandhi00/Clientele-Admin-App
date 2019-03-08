/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var universalajaxvar = "";

function ajaxjs(url,abhi)
{

    var xmlhttp;
    try
    {
        xmlhttp = new XMLHttpRequest();
    }
    catch (e)
    {
        try
        {
            xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
        }
        catch (e)
        {

        }
    }
    xmlhttp.open("get", url, true);
    xmlhttp.send();

    xmlhttp.onreadystatechange = function ()
    {
//        alert(xmlhttp.readyState);alert(xmlhttp.status);
        if (xmlhttp.readyState === 4 && xmlhttp.status === 200)
        {
            
            var t = xmlhttp.responseText.trim();
//            alert(t);
//            return t;
        abhi(t);
        }

    };


}