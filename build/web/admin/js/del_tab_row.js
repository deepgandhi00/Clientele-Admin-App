/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function delete_tabrow(rownumber,tableid,db_tablename,db_tablekeyfield,db_tablekeyvalue)
 {
     
     var i=rownumber.parentNode.parentNode.rowIndex;
     document.getElementById(tableid).deleteRow(i);
//     alert("ajax_del_tab_row.jsp?table="+db_tablename+"&key_field="+db_tablekeyfield+"&key_value="+db_tablekeyvalue);
     ajaxjs("ajax_del_tab_row.jsp?table="+db_tablename+"&key_field="+db_tablekeyfield+"&key_value="+db_tablekeyvalue);
 }
