<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>


<html lang="en">
<head>	
	<title>Date Time Totals</title>
	<%@ include file="./parts/meta.jsp"%>
    <title>Totals</title>
    <%@ include file="./parts/header.jsp" %>
		
</head>
<body>
	<nav class="navbar navbar-light bg-light">
    	<span class="navbar-brand mb-0 h1" id="nav-text">We-B-Scraping <i class="fas fa-chart-line"></i></span>
	</nav>
	
	

 	<div class="container">
 	<c:forEach var="tempDate" items="${date}">
 		<h1 class="text-center stock-info-date">
        	Stock Information For:
            <p id="date"> ${tempDate.date} <span id="time"> ${tempDate.time}</span></p>
        </h1>
    </c:forEach> 
  		
 			<table class="table table-striped table-bordered animated zoomInUp">
 				<thead class="thead-dark">
 					<tr>
 						<th>Symbol</th>
 						<th>Value</th>
 						<th>Daily Amount Change</th>
 						<th>Daily Percentage Change</th>
 						<th>Total Shares</th>
 					</tr>
 				</thead>	
 				<c:forEach var="tempStock" items="${stocks}">
 				
 					<tr>
 						<td> ${tempStock.symbol} </td>
 						<td> $${tempStock.value} </td>
 						<td> ${tempStock.dayAmtChg} </td>
 						<td> ${tempStock.dayPctChg} </td>
 						<td> ${tempStock.totalShrs} </td>
 					</tr>
 						
 				</c:forEach>		
 			
 			</table>
 		
 		<a href="list"><button type="button" class="btn btn-outline-primary">Back to daily listings</button></a>
 	</div>
 	
</body>


</html>