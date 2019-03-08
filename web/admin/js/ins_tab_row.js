/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var tab_field="";
var tab_value="";
var tab_update_id_val="";


function tab(ajax_page_name,tab_name,tab_id)
{
   var string="insert into "+tab_name+"("+tab_field.substring(0,tab_field.length-1)+")values("+tab_value.substring(0,tab_value.length-1)+") "; 
    ajaxjs(ajax_page_name+"?query="+string,dismiss);
   tab_field="";
   tab_value="";
}

function tab_update(ajax_page_name,tab_name,tab_id)
{
   var string="update "+tab_name+" set "+(tab_field.substring(0,tab_field.length-1))+"="+(tab_value.substring(0,tab_value.length-1))+" where "+tab_id+"="+tab_update_id_val;
//   alert(string);
   ajaxjs(ajax_page_name+"?query="+string,setinnerhtml);
//   alert(ajax_page_name+"?query="+string);
   tab_field="";
   tab_value="";
}


function setinnerhtml(x)
{
//    alert(x);
    document.getElementById('table').innerHTML=x;
}

function tab_update_id_value(id_value)
{
    tab_update_id_val=id_value;
}

function dismiss(x)
{
    
    $('#myModal').modal('hide');
    $('.modal-backdrop').hide(); 
    document.getElementById('table').innerHTML=x;
//    alert(x);
}

function table_field()
{
    for(var i=0;i<arguments.length;i++)
    {
        tab_field=tab_field+arguments[i]+",";
    }
}

function table_value()
{
    for(var i=0;i<arguments.length;i++)
    {
        tab_value=tab_value+"'"+arguments[i]+"'"+",";
    }
}
