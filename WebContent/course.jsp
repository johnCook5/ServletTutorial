<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.user.Course" %>
<%@ page import="java.util.*" %>
<% ArrayList<Course> courses = (ArrayList<Course>)session.getAttribute("courses"); %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Courses</title>
<link rel="stylesheet" type="text/css" href="./styles/styles.css">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css" integrity="sha256-p6xU9YulB7E2Ic62/PX+h59ayb3PBJ0WFTEQxq0EjHw=" crossorigin="anonymous" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.js" integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 <script>
 
 </script>
 <style type="text/css">
 .weekDays-selector input { display: none!important;}
 .weekDays-selector input[type=checkbox] + label{display: inline-block; border-radius: 6px; background: #dddddd; height: 40px; width: 30px; margin-right:3px; line-height: 40pz; text-align: center; cursor: point;}
 .weekDays-selector input[type=checkbox]:checked + label{background: #2AD705; color: #ffffff;}
 </style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Student Registration</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li class="#about"><a href="#about">About</a></li>
				<li class="#contact"><a href="#contact">Contact Us</a></li>
				
			</ul>
		</div>
	</div>
</nav>
<a href="account.jsp">GET MY GPA</a>

<div class="container">
	<div style="margin-top: 50px"></div>
	<div style="width: 300px">
	
	
	<form class="container" method="post" action="SchedulerServlet">
		<div class="form-group">
			
			<label for="courseName">Course Name</label>
			<select class="form-control" name="courseName" id="CourseName" aria-describedby="basic-addon1">
				<option value="JavaProgramming">JavaProgramming</option>
				<option value="C# Programming">C# Programming</option>
				<option value="C++ Programming">C++ Programming</option>
				<option value="C Programming">C Programming</option>
				<option value="Ruby on Rails">Ruby on Rails</option>
				<option value="PHP Programming">PHP Programming</option>
				<option value="SQL">SQL</option>
				<option value="JavaScript Programming">JavaScript Programming</option>
			</select>
			<br>
			<br>
			
			
  			<label for="professor">Professors</label>
			<select class="form-control" name="professor" id="professor" aria-describedby="basic-addon1">
				<option value="John White">John White</option>
				<option value="Michael Brown">Michael Brown</option>
				<option value="Tina Doe">Tina Doe</option>
				<option value="Emily Winter">Emily Winter</option>
				<option value="Christine Summer">Christine Summer</option>
			</select>
			<br>
			<br>
			<label for="weekday">Class Meeting Days</label>
			<div class="weekDays-selector">
				<input type="checkbox" name="weekday" value="MONDAY" id="weekday-mon" class="weekday" />
				<label for="weekday-mon">M</label>
				<input type="checkbox" name="weekday" value="TUESDAY" id="weekday-tue" class="weekday" />
				<label for="weekday-tue">T</label>
				<input type="checkbox" name="weekday" value="WEDNESDAY" id="weekday-wed" class="weekday" />
				<label for="weekday-wed">W</label>
				<input type="checkbox" name="weekday" value="THURSDAY" id="weekday-thu" class="weekday" />
				<label for="weekday-thu">Th</label>
				<input type="checkbox" name="weekday" value="FRIDAY" id="weekday-fri" class="weekday" />
				<label for="weekday-fri">F</label>
			</div>
			<br>
			<br>
			
			<label for="courseStartDate">Start Date</label>
			<input type="date" id= "CourseStartDAte" name="courseStartDate"
				placeholder="Select Start Date"
				min="2019-01-01" max="2020-12-31">
			<br>
			<br>
			<label for="courseTime">Course Time</label>
			<input type="time" name="courseTime" id="courseTime" placeholder="Start Time">
			<br>
			<br>
			<label for="roomNumberString">Assigned Room</label>
  			<input type="text" class="form-control" name="roomNumberString" id="roomNumberString" placeholder="Room Number" aria-describedby="basic-addon1">
			
			
			<button type="submit">add course</button>	
		</div>
	</form>
	</div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>

<div class="table-responsive">
  <table class="table">
    <thead>
    <tr>
      <th scope="col">Course Name</th>
      <th scope="col">Professor</th>
      <th scope="col">Occurrences</th>
      <th scope="col">Start Date</th>
      <th scope="col">Class Time</th>
      <th scope="col">Class Room</th>
    </tr>
  </thead>
  <tbody>

  <c:forEach var="course" items="${courses}"> 
  	<tr>
  		<td><c:out value="${course.courseName}"/></td> 
  		<td><c:out value="${course.professor}"/></td> 
  		<td><c:forEach var ="occurrence" items ="${course.occurrences}">
  		<c:out value="${occurrence}"/>
  		</c:forEach></td>
  		<td><c:out value="${course.startDate}"/></td>
  		<td><c:out value="${course.time}"/></td>
  		<td><c:out value="${course.roomNumber}"/></td>
  		
	</tr>
	</c:forEach>

  </tbody>

  </table>
</div>





</body>
</html>