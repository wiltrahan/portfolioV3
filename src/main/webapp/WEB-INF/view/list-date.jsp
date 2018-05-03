<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
<head>
	
	<title>Date Totals</title>
	<%@ include file="./parts/meta.jsp"%>
    <title>Totals</title>
    <%@ include file="./parts/header.jsp" %>
		
</head>
<body>
	
	<nav class="navbar navbar-light bg-light">
    <span class="navbar-brand mb-0 h1" id="nav-text">We-B-Scraping <i class="fas fa-chart-line"></i></span>
</nav>

 	<!-- <div id="wrapper">
 		<div id="header">
 			<h2>We-B-Scraping!</h2>
 		
 		</div>
 	</div> -->
 	<div id="container">
 		<div id="content">
 		
 			<table class="table table-striped table-bordered">
 				<thead class="thead-dark">
 					<tr>
 						<th>Date</th>
 						<th>Time</th>
 						<th>Total</th>
 						<th>Day Gain/Loss</th>
 						<th>More Info</th>
 					</tr>
 				</thead>
 				
 				<c:forEach var="tempDate" items="${dates}">
 					<c:url var="portfolio" value="/date/portfolio">
 						<c:param name="dateId" value="${tempDate.id}"/>
 				
 					</c:url>
 				
 				
 					<tr>
 						<td> ${tempDate.date} </td>
 						<td> ${tempDate.time} </td>
 						<td> ${tempDate.total} </td>
 						<td> ${tempDate.dayGain} </td>
 						<td><a href="${portfolio}"><button type="button" class="btn btn-outline-primary btn-block">More Info</button></a></td>
 					</tr>
 						
 				</c:forEach>		
 			
 			</table>
 		
 		</div>
 	
 	</div>
 	
</body>


</html>