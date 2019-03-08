/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var iseditmodeon="false";
var ab="";
var abcd="";
var oldbuttonstr="";
var allids="";
var deletedspan_id="";
var values=new Array();
var oldvalues=new Array();
var oldids=new Array();
var param=new Array();
var queryparam=new Array();
var aabb="";
var aabbcc="";
var delimg="true";
var edb="true";
var bname=new Array();
var bids=new Array();

var iseditfunction="false";
var ii="";
var qstring="";
var keyfieldname="";
var keyfieldvalue="";
var tablename="";
var newcsv="";
var spandbfieldname="";


var oldiseditfunction="false";
var oldcard=0;
var oldqstring="";
var oldkeyfieldname="";
var oldkeyfieldvalue="";
var oldtablename="";
var oldnewcsv="";
var oldspandbfieldname="";
var oldab="";
var oldabcd="";
var oldid="";

var canceldata=new Array();
var cancelid=new Array();
var oldcancelids=new Array();


function qparam()
{
        while(queryparam.length > 0)
        {
            queryparam.pop();
        }
        
        for(var i=0;i<arguments.length;i++)
        {
            queryparam[i]=arguments[i];
        }
}

function setperameter()
{
    for(var i=0;i<arguments.length;i++)
    {
            param[i]=arguments[i];
    }
}

function setvalues(iseditfunc,valueofi,ajaxpage,tblname,keyfield,keyvalue,spancsv,spandbfieldnm,delimgg,edbankdd)
{
        iseditfunction=iseditfunc;
	ii=valueofi;
	qstring=ajaxpage;
        qstring1=ajaxpage;
        keyfieldname=keyfield;
        tablename=tblname;
        keyfieldvalue=keyvalue;
        newcsv=spancsv;
        spandbfieldname=spandbfieldnm;
        delimg=delimgg;
        edb=edbankdd;
}

function edit()
{
    var al=arguments.length;
        iseditmodeon="true";
if(al !=0)
{
	for(var i=0;i<al;i++)
	{         
		values[i]=document.getElementById(arguments[i]).innerHTML;
                oldids[i]=arguments[i];
                        document.getElementById(arguments[i]).innerHTML="<input type='text' style='width:100%;' id='ed"+arguments[i]+"' value='"+values[i]+"'>";//alert(arguments[i]);
                   
                   for(var abc=0;abc<queryparam.length;abc++)
                   {
                       ab=ab+"'"+queryparam[abc]+"',";
                   }
                   
                   ab=ab.substring(0,ab.length-1);
           
                   for(var abc=0;abc<oldids.length;abc++)
                   {
                       abcd=abcd+"'"+oldids[abc]+"',";
                   }
                   
                   abcd=abcd.substring(0,abcd.length-1);   
       	}
    }
        
           if(delimg=="true")
           {
                document.getElementById('delimg'+ii).style.display="block";
           }

            document.getElementById('button'+ii).innerHTML="<button type='submit' class='cstbtnsuccess' onclick=\"save();hidespancross("+ii+");\"><i class='fa fa-floppy-o'></i></button> <button class='cstbtnwarning' type='submit' onclick=\"custom_cancel_setdata();\"><i class='fa fa-ban'></i></button>";
            
             aabb=ab;
             aabbcc=abcd;
             abcd="";
             ab="";
}

    function deletespans(elementid,elementdbid,rowid)
    {
        bname[bname.length]=elementid.substring(1,elementid.length);
        bids[bids.length]=elementdbid;
        
        allids=newcsv;
        deletedspan_id=deletedspan_id+elementdbid+",";
        ii=rowid;

        var el=document.getElementById(elementid);
        el.parentNode.removeChild(el);
        tempdeletedspan=deletedspan_id.split(",");
        allids=allids+",";
//alert(deletedspan_id);
        for(var i=0;i<tempdeletedspan.length-1;i++)
        {
            allids=allids.replace((tempdeletedspan[i]+","),"");
        }
        
        newcsv=allids;
        
        if(allids.length == 0)
        {
            newcsv = 0;
        }
        else
        {
            var tempallbankslength=(allids.length)-1;
            newcsv=allids.substring(0,tempallbankslength);
        }
//        alert(newcsv);

    }
            
function editbankdd(r)
{
    document.getElementById('editbanks'+ii).innerHTML=" <input type='text' name='txtpname' id='txtpname' size='30' class='form-control' autocomplete='on' placeholder='Please Enter City or ZIP code'>";
    
    var x=r.split(':');
    bname=x[0].split(",");
    bids=x[1].split(",");

        $("#txtpname").autocomplete({
    source: function (request, response) {
        var matches = $.map(bname, function (acItem) {
            if (acItem.toUpperCase().indexOf(request.term.toUpperCase()) === 0) {
                return acItem;
            }
        });
        response(matches);
    },
    minLength: 1,
    select: function (event, ui) 
    {
        var bid="";
        
        for(var z=0;z<bname.length;z++)
        {
            if(ui.item.value == bname[z])
            {
                bname[z]="";
                newcsv=newcsv+","+bids[z];
                bid=bids[z].trim();
            }
        }
        var a="<span class='tag' id=\""+ii+ui.item.value+"\"><span>"+ui.item.value+"&nbsp;&nbsp;</span><span><span role='button' class=\"spancross"+ii+"\" style='visibility:visible;display:block;float:left;' onclick=\"deletespans('"+ii+ui.item.value+"','"+bid+"','"+ii+"');\">x</span></span></span>";       
        $('#banks'+ii).append(a);
        ui.item.value='';
         
      this.source=function (request, response) {
        var matches = $.map(bname, function (acItem) {
            if (acItem.toUpperCase().indexOf(request.term.toUpperCase()) === 0) {
                return acItem;
                
            }
        });
        response(matches);
    };        
    }
  }); 
}

function save()
{

if(newcsv!=0)
{
    newcsv=newcsv.replace(',,',',');
}   
    qstring=qstring+"query=update "+ tablename + " set ";
              

                    for(var z=0;z<queryparam.length;z++)
                    {
                         qstring=qstring+queryparam[z]+"='"+document.getElementById('ed'+oldids[z]).value+"'";
//                         alert(qstring);
                    }
               
                    var cancelstr="";
                    for(var z=0;z<oldcancelids.length;z++)
                    {
                        cancelstr=cancelstr+"'"+oldcancelids[z]+"',";
                    }
              
                        cancelstr=cancelstr.substring(0,cancelstr.length-1);//alert(cancelstr);

               
               if(iseditmodeon=="false")
               {
                   alert("false");
                   qstring=qstring+" where " + keyfieldname + "=" + keyfieldvalue;

               }
               else
               {
                   if(newcsv=="0")
                   {
                        qstring=qstring + ",bank_id='0' where "+keyfieldname+"="+keyfieldvalue;
                   }
                   else
                   {
                       if(queryparam.length!=0)
                       {
                        qstring=qstring+",";
                        }
                        qstring=qstring+spandbfieldname+"='"+newcsv+"' where "+keyfieldname+"="+keyfieldvalue;
//                        alert(qstring);
 //                        alert("not equal");
                   }
                   
                   if(edb == "true")
                   {
                       document.getElementById('editbanks'+ii).innerHTML="";
                   }
                  
                   document.getElementById('button'+ii).innerHTML="<button class='cstbtnprimary' onclick=\"if(iseditmodeon==='false'){custom_cancel_getdata("+cancelstr+");setvalues('"+iseditfunction+"',"+ii+
                   ",'"+qstring1+"','"+tablename+"','"+keyfieldname+"','"+keyfieldvalue+"','"+newcsv+"','"
                   +spandbfieldname+"','"+delimg+"','"+edb+"');qparam("+aabb+");spancross("+ii+");edit("+aabbcc+");ajaxjs('ajax_add_dd.jsp?ids="+
                   newcsv+"',editbankdd);}else{alert('save or cancel last editing');}\"><i class='fa fa-pencil'></i></button>";
                   
               }             
//               alert(qstring);
               ajaxjs(qstring);         
               for(var z=0;z<oldids.length;z++)
               {
                   document.getElementById(oldids[z]).innerHTML=document.getElementById('ed'+oldids[z]).value;
               }
               iseditmodeon="false";
               spancrosseditmode="false";
               
           if(delimg=="true")
           {
               
                document.getElementById('delimg'+ii).style.display="none";
           }
}

function custom_cancel_getdata()
{
    for(var i=0;i<arguments.length;i++)
    {
        
            oldcancelids[i]=arguments[i];
        
        cancelid[i]=arguments[i];
        canceldata[i]=document.getElementById(arguments[i]).innerHTML;
    }
}

function custom_cancel_setdata()
{

    for(var i=0;i<cancelid.length;i++)
    {
       document.getElementById(cancelid[i]).innerHTML=canceldata[i];
    }
    
    iseditmodeon="false";
    spancrosseditmode="false";
}