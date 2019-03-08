<%-- 
    Document   : index
    Created on : 11 Dec, 2017, 9:35:22 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
    <body>
        <c:catch var="e">
        <c:import  url="header.jsp"/>
 <div class=" col-xs-12 c" id="c"  style="padding:0px; margin:0px; float:right;">
 
 <!--first row of main content--> 
 <div class="row " style="padding:0px; margin:0px; float:left;">
 
  
  <div id="summary-table" class="" style="padding:30px; float:left;">
  		
 <!--summery-->
  			<div id="maincontent" class="col-lg-3 col-sm-12 col-xs-12" style="float:left; width:100%;">
                <h2 style=" line-height: 35px; font-size: 19px; margin:0px 0px 10px 0px; float:left">SUMMARY PROFIT</h2>
                <div class="btn-group" role="group" aria-label=""  style=" margin:0px 0px 10px 0px; float:right;">
                  
  					<button type="button" class="btn" style="background-color:#fafafa; border: solid 1px #cccccc;"><i class="fa fa-calendar" aria-hidden="true" style="color:black; margin-right:10px;"></i>01/07/2015</button>
  					<button type="button" class="btn" style="background-color:#fafafa; border: solid 1px #cccccc;"><i class="fa fa-calendar" aria-hidden="true" style="color:black; margin-right:10px;"></i>01/08/2015</button>
				</div>
  		</div>
  
  		<!--chart holder-->
  		<div id="maincontent"  class=" col-sm-12 col-xs-12" style=" background-color:#DCF9DF; float: left; height: 420px; padding: 20px; margin-bottom: 20px;">
  		
  		</div>
        
        <!--first table-->
  		<div id="maincontent" class="col-md-12 col-sm-12 col-xs-12" style="overflow:scroll; overflow-x: auto; overflow-y:hidden; float:left;" >
  			<table class="table table-bordered table-striped table-hover text-center">
            <tbody>
            	<tr class="ta"><th>DETAILS</th><th>PRODUCTS</th><th>QUANTITY</th><th>TOTAL</th><th>DELIVERY</th><th>STATUS</th><th>ACTIONS</th></tr>
                
                <tr class="tb">
                
                <td style=""><a href=""><div style=""><div style="float:left;"><img src="" style="float:left;"></div><div style="float:left;">Abhishek Karia</div></div></a></td>
                
            	<td><a href="">Awesome T-shirt</a></td><td><a href="">1</a></td><td><a href="">$15.99</a></td><td><a href=""><div class="badge">Courior</div>uk,london</a></td><td><a href=""><div class="badge">New</div></a></td><td><a href=""><button class="btn btn-primary btn-rounded btn-clean">View</button></a></td>			</tr>
                 
                 <tr class="ta"><td><img src=""/>Abhishek Karia</td><td>Awesome T-shirt</td><td>1</td><td>$15.99</td><td><div class="badge">Courior</div>uk,london</td><td><div class="badge">New</div></td><td><button class="btn btn-primary btn-rounded btn-clean">View</button></td></tr>
                 
                  <tr class="tb"><td><img src=""/>Abhishek Karia</td><td>Awesome T-shirt</td><td>1</td><td>$15.99</td><td><div class="badge">Courior</div>uk,london</td><td><div class="badge">New</div></td><td><button class="btn btn-primary btn-rounded btn-clean">View</button></td></tr>
                  
                   <tr class="ta"><td><img src=""/>Abhishek Karia</td><td>Awesome T-shirt</td><td>1</td><td>$15.99</td><td><div class="badge">Courior</div>uk,london</td><td><div class="badge">New</div></td><td><button class="btn btn-primary btn-rounded btn-clean">View</button></td></tr>
             </tbody>                 
            </table>
  		</div>
        
  </div>
  <!--right side tabs-->
  	<div id="maincontent1" class=""  style=" float:left; padding:0px; margin-top:30px;">

  		<ul class="nav nav-tabs">
        
  			<li role="presentation"  class="rstabs" style=" width:50%;" id="rstab" ><a href="#"  style="border-radius: 0px; text-align:center; margin-right:0px;  background-color:	">Home</a>
            </li>
  			<li role="presentation" class="rstabs" style=" width:50%;" id="rstab" ><a href="#"   style="border-radius: 0px; text-align:center; margin-right:0px; ">Profile</a></li>
		</ul>
        
        <div style="height:800px; background-color:#fafafa;">
        </div>
        </div>
        
        
        
        <div id="maincontent" class="row"  onscroll="myFunction()" style="padding:30px 0px 0px 15px; margin:0px; float:left;">
        	
        	<div class="col-sm-12 col-md-4" style="padding:15px; margin-bottom:20px; float:left;">
        	<h2>Server Usage</h2>
        	<p>Total server usage in percentages</p>
        	<p style="font-size:36px;" id="number1"  ></p>
        	<div class="progress pbara" style="height:5px;">
  				<div class="progress-bar " role="progressbar" aria-valuenow="68" aria-valuemin="0" aria-valuemax="100" style="width: 68%; background:#85d6de;">
    			<span class="sr-only" >68% Complete</span>
  				</div>
			</div>
            <p>We totally recommend you change your plan to </br>Pro. Click here to get more details.</p>
        	</div>
        
        <div class="col-sm-12 col-md-4" style=" padding:15px; margin-bottom:20px; float:left;">
        <h2>Total Earning</h2>
        <p>This is total earnings per last year</p>
        <p style="font-size:36px;" class="">$75,332</p>
        	<div class="progress pbarb" style="height:5px; ">
  				<div class="progress-bar " role="progressbar" aria-valuenow="68" aria-valuemin="0" aria-valuemax="100" style="width: 68%; background:#82b440;">
    			<span class="sr-only" style=";" >68% Complete</span>
  				</div>
			</div>
            <p>We happy to notice you that you become an Elite customer, and you can get some custom sugar.</p>
        </div>
        
        <div class="col-sm-12 col-md-4" style=" margin-bottom:20px; padding:15px; float:left;">
        <h2>Your Balanc</h2>
        <p>All your earnings for this time</p>
        <p style="font-size:36px;">$5,321</p>
        	<div class="progress pbarc" style="height:5px;">
  				<div class="progress-bar " role="progressbar" aria-valuenow="68" aria-valuemin="0" aria-valuemax="100" style="width: 68%; background:#e74e40">
    			<span class="sr-only" >68% Complete</span>
  				</div>
			</div>
            <p>You can withdraw this money in end of each month. Also you can spend it on our marketplace.</p>
        </div>
        </div>
       
        
        
        
        
       
<div id="maincontent"  class="" style="padding:30px; border-bottom:solid 1px #000000; float:left; width:100%;">
        	<div class="" style="float:left;"><h2 >ORDER STATICS</h2></div>
            
            <div class="dropdown" style="float:right;">
  			<button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    			Dropdown trigger
    			<span class="caret"></span>
  			</button>
  			<ul class="dropdown-menu dd" aria-labelledby="dLabel">
            	<li id="ddyear"> <button onclick=collcol('ddyear')> YEAR <i class="fa fa-check"></i> </button></li>
                <li id="ddja"><button onclick=collcol('ddja')>JA.<i class="fa fa-check"></i></button></li>
                <li id="ddfe"><button onclick=collcol('ddfe')>FE.<i class="fa fa-check"></i></button></li>
                <li id="ddma"><button onclick=collcol('ddma')>MA.<i class="fa fa-check"></i></button></li>
                <li id="ddaw"><button onclick=collcol('ddaw')>AW.<i class="fa fa-check"></i></button></li>
                <li id="ddmay"><button onclick=collcol('ddmay')>MA.<i class="fa fa-check"></i></button></li>
                <li id="ddjun"><button onclick=collcol('ddjun')>JU.<i class="fa fa-check"></i></button></li>
                <li id="ddju"><button onclick=collcol('ddju')>JU.<i class="fa fa-check"></i></button></li>
                <li id="ddao"><button onclick=collcol('ddao')>AO.<i class="fa fa-check"></i></button></li>
                <li id="ddse"><button onclick=collcol('ddse')>SE.<i class="fa fa-check"></i></button></li>
                <li id="ddoc"><button onclick=collcol('ddoc')>OC.<i class="fa fa-check"></i></button></li>
                <li id="ddno"><button onclick=collcol('ddno')>NO.<i class="fa fa-check"></i></button></li>
                <li id="ddde"><button onclick=collcol('ddde')>DE.<i class="fa fa-check"></i></button></li>
  			</ul>
			</div>
        	<table class="table table-bordered table-striped table-hover text-center table-responsive">
            
            	<tbody>
                <tr><th id="tdyear0">YEAR</th><th id="tdja0">JA.</th><th id="tdfe0">FE.</th><th id="tdma0">MA.</th><th id="tdaw0">AW.</th><th id="tdmay0">MA.</th><th id="tdjun0">JU.</th><th id="tdju0">JU.</th><th id="tdao0">AO.</th><th id="tdse0">SE.</th><th id="tdoc0">OC.</th><th id="tdno0">NO.</th><th>DE.</th></tr>
                
                <tr><td id="tdyear1">100</td><td id="tdja1">100</td><td id="tdfe1">100</td><td id="tdma1">100</td><td id="tdaw1">AW.</td><td id="tdmay1">100</td><td id="tdjun1">100</td><td id="tdju1">100</td><td id="tdao1">100</td><td id="tdse1">100</td><td id="tdoc1">100</td><td id="tdno1">100</td><td>100</td></tr>
                
                <tr><td id="tdyear2">100</td><td id="tdja2">100</td><td id="tdfe2">100</td><td id="tdma2">100</td><td id="tdaw2">AW.</td><td id="tdmay2">100</td><td id="tdjun2">100</td><td id="tdju2">100</td><td id="tdao2">100</td><td id="tdse2">100</td><td id="tdoc2">100</td><td id="tdno2">100</td><td>100</td></tr>
                
                <tr><td id="tdyear3">100</td><td id="tdja3">100</td><td id="tdfe3">100</td><td id="tdma3">100</td><td id="tdaw3">AW.</td><td id="tdmay3">100</td><td id="tdjun3">100</td><td id="tdju3">100</td><td id="tdao3">100</td><td id="tdse3">100</td><td id="tdoc3">100</td><td id="tdno3">100</td><td>100</td></tr>
                
                </tbody>
            </table>
        </div>
 <div  style="padding:25px 20px 65px 20px; float:left;">
    <div style="float:left">
		@2015 Aqvatrius.All right reserved.
    </div>
    
    <div style="float:right;">
    	<a href="">Terms Of Use</a>
        <a href="">Privacy Policy</a>
    </div>
 </div>

</div>

</div>



 




</div>


</body>
</html>
<c:import  url="footer.jsp"/>
</c:catch>
${e}