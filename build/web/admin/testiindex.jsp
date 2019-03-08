<!doctype html>
<html>
<head>
<title>Untitled Document</title>
<meta charset="utf-8">

<link  rel="stylesheet"  href="css/bootstrap.css">
<link   rel="stylesheet"  href="css/bootstrap-theme.css">
<link   rel="stylesheet"  href="css/font-awesome.css">

<script  type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script  type="text/javascript" src="js/bootstrap.js"></script>


<link   rel="stylesheet"  href="css/first.css">
<link   rel="stylesheet"  href="css/second.css">
<style>
.b , .a
{
	
	width:20%;
	float:left;
}

.c , .d
{
	width:80%;
}

.copen
{
	width:80%;
}

#summary-table
	{
		width:80%;
	}
	
	#maincontent1
	{
		width:20%;
	}
	
	#col1-div
	{
		display:none;
	}
@media only screen and (max-width: 998px) 
{
	
	.c
	{
		width:100%;
	}
	.b
	{
		width:0px;
		height:0px;
		display:none;
	}
	
	.a , .d 
	{
		width:100%;
		float:left;
	}
	
	#col-div
	{
		visibility:hidden;
	}
	
	#col1-div
	{
		visibility:visible;
	}
	
	#leftdrawer
	{
		width:0px;	
		height:0px;
		/*transition-delay:0.4s;*/
	}
	
	#summary-table
	{
		width:100%;
		float:left;
	}
	
	#maincontent1
	{
		width:100%;
		float:left;
	}
	
	#col1-div
	{
		display:block;
	}
}

.dd i
{
	color:#000000;
	float:right;
}

/*---------------------new style--------------------------------*/
.panel
    {
        box-shadow:none;
        border: none;
    }
    
    .collapse
    {
        background-color: #304056;
    }
    
    .b
    {
        /*min-width:20%;*/ 
         /*min-width:20%;*/
         background-color: #304056;
         height:1000px;
    }
    
        .aa1
        {
           
            background-color: #293649;
            height:55px;
            color:#f0f4f6;
        }
        
        .tableft,.tabcenter,.tabright
        {
            float: left; 
        }
        
        .tableft,.tabright
        {
            margin: 18px;
        }
        
        .tabcenter
        {
            margin-top: 15px;
        }
        
        
        
        .tableft
        {
            color: #6382a9;
        }
        
        .badge
        {
            border-radius:3px;
            background-color:#e74e40; 
            float:right;
            margin-top: 15px;
        }
        .tabright
        {
            float: right;
        }
        
        ul
        {
            margin: 0px;
        }
        
        li
        {
            list-style-type:none;
            color: #d7dde2;
            padding:5px;
            
        }
        
        aa1:hover
        {
            text-decoration:none;
       
        }
        #leftdrawer
        {
            transition: all 1s ease;
            
        }
        #c{
            transform: all 1s ease;
        }
		
		
</style>

</head>

<body>

<!--first row-->

	<div>
    	<div class="a" > 
        	<button  onclick="collepse3()" id="col1-div" style="float:right; background-color:#364760; border:#FFFFFF; height:100%; width:55px;"><i class="fa fa-bars" style="color:#000000;"></i></button>
        </div>
        
        <div class="d" id="col-div" > 
        <button type="button" onclick="collepse1()" style="background-color:#FFFFFF; border:#FFFFFF; height:100%; width:55px;" ><i class="fa fa-ellipsis-v" aria-hidden="true" style="color:#000000;"></i></button>
        
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
                <a href="category.jsp"><li>Category</li></a>
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
                <a href="product.jsp"><li>abc</li></a>
                <a href="category.jsp"><li>pqr</li></a>
                <a href="subcategory.jsp"><li>xyz</li></a>
                
                </ul>
            </div>
        </div>
    </div>
   
</div> 



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
        <p style="font-size:36px;">$75,332</p>
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
 <div id="" style="padding:25px 20px 65px 20px; float:left;">
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

<!--footer-->
	<nav class="navbar navbar-default navbar-fixed-bottom" style="min-height:40px;">
  		<div class="container-fluid fcon" style="padding:0px;">
        <div class="row" style="padding:0px; margin:0px">
        <div class="col-md-3" style="padding:0px;">
        	<a href="" style="float:left;"><i class="fa fa-cogs" aria-hidden="true"></i></a>
			<a href="" style="float:left;"><i class="fa fa-life-ring" aria-hidden="true"></i></a>
        	<a href="" style="float:left;"><i class="fa fa-power-off" aria-hidden="true"></i></a>
        	<a href="" style="float:right;"><i class="fa fa-outdent" aria-hidden="true"></i></a>
        </div>
        <div class="col-md-9" style="padding:0px;">
        	
        		<a href="" style=""><i class="fa fa-database" aria-hidden="true"></i></a>
        		<a href="" ><i class="fa fa-bar-chart" aria-hidden="true"></i></a>
        		<a href="" ><i class="fa fa-server" aria-hidden="true"></i></a>
            
            
        	<a href="" style="float:right;"><i class="fa fa-dot-circle-o" aria-hidden="true"></i></a>
            <a href="" style="float:right;"><i class="fa fa-thumb-tack" aria-hidden="true"></i></a>
            
  		</div>
        </div>
        </div>
	</nav>
   
<script type="text/javascript">


function collepse()
{
	document.getElementById('leftdrawer').style.width="20%";
	document.getElementById('leftdrawer').style.height="1580px";
	document.getElementById('leftdrawer').style.overflow="hidden";
	document.getElementById('leftdrawer').style.transition="width 0.4s";
	document.getElementById('c').className="col-xs-12 c";
	document.getElementById('c').style.transition="width 0.2s";
	document.getElementById("col-div").innerHTML = "<button id='coll2' type='button' onclick='collepse1()' style='background-color:#FFFFFF; border:#FFFFFF; height:100%; width:55px;'><i class='fa fa-ellipsis-v' style='color:#000000;'></i></button>";	
}

function collepse1()
{
	document.getElementById('leftdrawer').style.width="0px";
	document.getElementById('leftdrawer').style.height="0px";
	document.getElementById('leftdrawer').style.transition="width 0.2s";
	/*document.getElementById('c').style.width="100%";*/

	document.getElementById('c').className+="copen";
	
	document.getElementById('c').style.transition="width 0.4s";
	document.getElementById("col-div").innerHTML = "<button type='button' onclick='collepse()' style='background-color:#FFFFFF; border:#FFFFFF; height:100%; width:55px;'><i class='fa fa-bars' style='color:#000000;'></i></button>";
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
</script>
</body>
</html>