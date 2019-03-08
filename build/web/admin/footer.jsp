<%-- 
    Document   : footer
    Created on : 17 Dec, 2017, 12:30:56 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
    
    <body>
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

$('.Count').each(function () {
    alert();
  var $this = $(this);
  jQuery({ Counter: 0 }).animate({ Counter: $this.text() }, {
    duration: 1000,
    easing: 'swing',
    step: function () {
      $this.text(Math.ceil(this.Counter));
    }
  });
});

</script>
   </html>