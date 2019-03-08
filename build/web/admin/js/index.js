/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
// JavaScript Document
function collepse1(btn)
{
//var leftdawer=document.getElementById('leftdrawer');
var ichild=btn.firstChild;
var classnm=ichild.className;
var contentdiv=document.getElementById('c');

if(classnm=='fa fa-bars')
{
	lefticon.className='fa fa-ellipsis-v';
	righticon.className='fa fa-ellipsis-v';
	leftdrawer.className='b full-open';
        
	contentdiv.className='content-div';	
}
else
{
	lefticon.className='fa fa-bars';
	righticon.className='fa fa-bars';
	leftdrawer.className='b full-close';
        
	contentdiv.className='content-div-full';
}
if(window.innerWidth>998)
{
    leftdrawer.style.transition='width 1s ease';
}
else
{
  
    leftdrawer.style.transition='height 1s ease';
}
}

var year=[],ja=[],fe=[],ma=[],aw=[],may=[],jun=[],ju=[],ao=[],se=[],oc=[],no=[],de=[];

function collcol(x)
{
	var y=x.slice(2);
    document.getElementById(x).innerHTML = "<button onclick=collcol1('" + x + "')>" + y.toUpperCase() + "</button>";

	for(i=0;i<4;i++)
	{	
		switch(y)
		{
			case "year":
			year[i]=document.getElementById("td"+y+i).innerHTML;	
			break;
			
			case "ja":
			ja[i]=document.getElementById("td"+y+i).innerHTML;	
			break;
			
			case "fe":
			fe[i]=document.getElementById("td"+y+i).innerHTML;	
			break;
			
			case "ma":
			ma[i]=document.getElementById("td"+y+i).innerHTML;	
			break;
			
			case "aw":
			aw[i]=document.getElementById("td"+y+i).innerHTML;	
			break;
			
			case "may":
			may[i]=document.getElementById("td"+y+i).innerHTML;	
			break;
			
			case "jun":
			jun[i]=document.getElementById("td"+y+i).innerHTML;	
			break;
			
			case "ju":
			ju[i]=document.getElementById("td"+y+i).innerHTML;	
			break;
			
			case "ao":
			ao[i]=document.getElementById("td"+y+i).innerHTML;	
			break;
			
			case "se":
			se[i]=document.getElementById("td"+y+i).innerHTML;	
			break;
			
			case "oc":
			oc[i]=document.getElementById("td"+y+i).innerHTML;	
			break;
			
			case "no":
			no[i]=document.getElementById("td"+y+i).innerHTML;	
			break;
			
			case "de":
			de[i]=document.getElementById("td"+y+i).innerHTML;	
			break;
		}
		document.getElementById("td"+y+i).innerHTML="";
		document.getElementById("td"+y+i).style.width="0px";
		document.getElementById("td"+y+i).style.padding="0px";
		document.getElementById("td"+y+i).style.border="0px";
	}
}
function collcol1(x)
{
	var y=x.slice(2);
	document.getElementById(x).innerHTML = "<button onclick=collcol('" + x + "')>" + y.toUpperCase() + "<i class='fa fa-check'></i></button>";
	
	var i;
	for(i=0;i<4;i++)
	{	
		switch(y)
		{
			case "year":
			document.getElementById("td"+y+i).innerHTML=year[i];	
			break;
			
			case "ja":
			document.getElementById("td"+y+i).innerHTML=ja[i];	
			break;
			
			case "fe":
			document.getElementById("td"+y+i).innerHTML=fe[i];	
			break;
			
			case "ma":
			document.getElementById("td"+y+i).innerHTML=ma[i];	
			break;
			
			case "aw":
			document.getElementById("td"+y+i).innerHTML=aw[i];	
			break;
			
			case "may":
			document.getElementById("td"+y+i).innerHTML=may[i];	
			break;
			
			case "jun":
			document.getElementById("td"+y+i).innerHTML=jun[i];	
			break;
			
			case "ju":
			document.getElementById("td"+y+i).innerHTML=ju[i];	
			break;
			
			case "ao":
			document.getElementById("td"+y+i).innerHTML=ao[i];	
			break;
			
			case "se":
			document.getElementById("td"+y+i).innerHTML=se[i];	
			break;
			
			case "oc":
			document.getElementById("td"+y+i).innerHTML=oc[i];	
			break;
			
			case "no":
			document.getElementById("td"+y+i).innerHTML=no[i];	
			break;
			
			case "de":
			document.getElementById("td"+y+i).innerHTML=de[i];	
			break;
		}	
		document.getElementById("td"+y+i).style.padding="8px";
		document.getElementById("td"+y+i).style.border="1px";
	}
}