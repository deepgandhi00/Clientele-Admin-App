/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var old=0;

function spancross(a)
{
   
//        spancrosseditmode="ture";
//    if(old!=0)
//    {
//        var x = document.getElementsByClassName('spancross'+old);
//        for(var i=0;i<x.length;i++)
//        {
//            x[i].style.visibility="hidden";
//           // x[i].style.display="none";
//            
//        }
//    }
    
    var x = document.getElementsByClassName('spancross'+a);
    for(var i=0;i<x.length;i++)
    {
    	x[i].style.visibility="visible";
        x[i].style.display="block";
        x[i].style.float="left";
    }
    old=a;
      
}


