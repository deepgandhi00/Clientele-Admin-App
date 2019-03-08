<%-- 
    Document   : header.jsp
    Created on : 26 Jan, 2018, 10:45:20 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link  rel="stylesheet"   href="css/bootstrap.css">
<link   rel="stylesheet"  href="css/bootstrap-theme.css">
<link   rel="stylesheet"  href="css/font-awesome.css">
<link   rel="stylesheet"  href="css/first.css">
<link   rel="stylesheet"  href="css/second.css">
<link   rel="stylesheet"  href="css/innerpagecss.css">

        <script  type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
        <script  type="text/javascript" src="js/bootstrap.js"></script>
        <script  type="text/javascript" src="js/animationCounter.js"></script>                
         
          <!--------------------- custom javascripts ----------------> 
        <script  type="text/javascript" src="js/editjs.js"></script>
        <script  type="text/javascript" src="js/ajaxjs.js"></script>
        <script  type="text/javascript" src="js/spancrossjs.js"></script>
        <script  type="text/javascript" src="js/del_tab_row.js"></script>
        <script  type="text/javascript" src="js/ins_tab_row.js"></script>
        <script  type="text/javascript" src="js/fileup.js"></script>
        <script  type="text/javascript" src="js/hidespancross.js"></script>
        <script  type="text/javascript" src="js/scroll.js"></script>
        <script  type="text/javascript" src="js/index.js"></script>
        <script  type="text/javascript" src="js/check_multiple_data.js"></script>
        


    </head>
    <body>

<!--first row-->

	<div>
    	<div id="a" class="a" > 
        	<button id="leftbtn"  onclick="collepse1(this)" id="col1-div" style="float:right; background-color:#364760; border:#FFFFFF; height:100%; width:55px;"><i class="fa fa-bars" style="color:#000000;" id="lefticon"></i></button>
        </div>
        
       <div class="d" id="col-div" > 
        <button id="rightbtn" type="button" onclick="collepse1(this)" style="background-color:#FFFFFF; border:#FFFFFF; height:100%; width:55px;" ><i class="fa fa-ellipsis-v" aria-hidden="true" style="color:#000000;" id="righticon"></i></button>
        
        </div>
       
     		
	</div>

<!--first row over-->


<!--below first row-->
<div>

<div class="b" id="leftdrawer" align="center" style="padding-left:15px; padding:0px;">
	<div  class="ldrawertop">
    
    
    <i class="fa fa-trophy" aria-hidden="true"></i><img src="images/images.jpg" width="130px" height="130px" style=" border-style:solid; border-color:white; border-width:5px; border-radius:65px;"><i class="fa fa-users"></i>
    </div>
    	
        <div style="color:#fff;">
        <h4>Abhishek Karia</h4>
        <span style="color:#e5e5e5;">System Admin In Company</span>
        </div>
        <div align="left" style="color:#6382a9;">NAVIGATION</div>
        
 
		<!--pages-->
	
  			
                  <div class="panel-group" id="accordion" >
                            
        <div class="panel">
        <a href="index.jsp">
        <div class="aa1">
            <div class="fa fa-television tableft"></div> 
            <div class="tabcenter">Dashboard</div>
        </div>
        </a>
        </div>
          
        <div class="panel">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"> 
                <div class="aa1">
                    <div class="fa fa-university tableft"></div> 
                    <div class="tabcenter">Bank & Paymentdetials</div>
                    <div class="fa fa-angle-down tabright"></div>
                    <div class="badge">+2</div>
                </div>
            </a>            
            
            <div id="collapse1" class="collapse">
                <ul style="background-color: #304056;">
                <a href="insert_bank.jsp"><li>Bank</li></a>
                <a href="insert_craditcard.jsp"><li>Creditcard Details</li></a>
                <a href="insert_debitcard.jsp"><li>Debitcard Details</li></a>
                <a href="paymentmode.jsp"><li>paymentmode</li></a>
                <a href="wallet.jsp"><li>Wallet Details</li></a>
                </ul>
            </div>
        </div>
    
        <div class="panel">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
                <div class="aa1">
                    <div class="fa fa-shopping-cart tableft"></div> 
                    <div class="tabcenter">Product & Category</div>
                    <div class="fa fa-angle-down tabright"></div>
                    <div class="badge">+2</div>
                </div>
            </a>
            
            <div id="collapse2" class="collapse" >
                <ul style="background-color: #304056;">
                <a href="product.jsp"><li>Product</li></a>
                <a href="demo.jsp"><li>Category</li></a>
                <a href="subcategory.jsp"><li>Subcategory Details</li></a>
                
                </ul>
            </div>
        </div>
    
        <div class="panel">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
                <div class="aa1">
                    <div class="fa fa-university tableft"></div> 
                    <div class="tabcenter">Collapsible Group 3</div>
                    <div class="fa fa-angle-down tabright"></div>
                    <div class="badge">+2</div>
                </div>
            </a>
            <div id="collapse3" class="collapse">
                <ul style="background-color: #304056;">
                <a href="retailer_type.jsp"><li>retailertype</li></a>
                <a href="order.jsp"><li>order</li></a>
                <a href="marketor.jsp"><li>marketor</li></a>
                <a href="cities.jsp"><li>cities</li></a>
                <a href="delivery_boy.jsp"><li>delivery boy</li></a>
                <a href="pincode.jsp"><li>pincode</li></a>
                </ul>
            </div>
        </div>
    </div>
   
</div> 
</div>


    </body>
</html>
