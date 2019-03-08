/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var objj="";

function checkmuldata(obj,tablename,fieldtocheck)
{//alert(fieldtocheck);
    objj=obj;
  // alert("ajax_check_multiple.jsp?val="+document.getElementById(obj.id).value+"&table="+tablename+"&tabfield="+fieldtocheck);
    ajaxjs("ajax_check_multiple.jsp?val="+document.getElementById(obj.id).value+"&table="+tablename+"&tabfield="+fieldtocheck,errorsetfunc);
    
}

function errorsetfunc(r)
{//alert();
    if(r=="yes")
    {
        var alertdiv=document.createElement("div");
        alertdiv.setAttribute("id", "alertdiv");
        alertdiv.setAttribute("class", "alert alert-danger alert-dismissible");
        alertdiv.setAttribute("role", "alert");
        alertdiv.style.width="400px";
        alertdiv.innerHTML="<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button> <strong>Warning!</strong><span> name you enter is already exist!!</span>";
//alert(alertdiv.innerHTML);        
//        alert(document.getElementById(objj.id).parentNode);
        document.getElementById(objj.id).parentNode.appendChild(alertdiv);
//        alert();
      // alert( document.getElementById(objj.id).parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.nextElementSibling.lastElementChild.disabled = true);
    }
    else
    {
        if(document.getElementById(objj.id).parentNode.nextElementSibling.id == "alertdiv")
        {
            
        }
    }
}