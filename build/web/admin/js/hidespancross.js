/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function hidespancross(a)
{
    var x = document.getElementsByClassName('spancross'+a);
    for(var i=0;i<x.length;i++)
    {
    	x[i].style.visibility="hidden";
    }
    old=a;
}
