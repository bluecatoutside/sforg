<%@page import="com.entity.viewlist"%>
<%@page import="java.util.List"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.DAO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Strawberry Park - History</title>
<link rel="stylesheet" href = "images/bootstrap.css">

<link rel="stylesheet" href="Css/w3.css">
<link rel="stylesheet" href="Css/font.css">
<link rel="stylesheet" href="Css/abc.css">


<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
</style>

	 <style>
	 	
	 	 c {
        color: black;
        text-decoration: none;
        background-color: #ebe9eb;
        padding: 14px 25px;
       font-size: larger;
      
        }
	 
        div.scrollmenu {
          background-color: black;
          overflow: auto;
          white-space: nowrap;
        }
        
        div.scrollmenu b {
          display: inline-block;
          color: black;
          text-align: center;
          padding: 5px;
          text-decoration: none;
        }
        
        div.scrollmenu b:hover {
          background-color: #777;
        }
        
        
        

        </style>
        
        <style>

.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}



/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>

</head>
<body>
<form action="" method= "post">

	<%@ include file = "navbar.jsp" %>
	
	
	<div style='background-color:#ebe9eb'>
	<br>
	<h1>History</h1>
	<br>
	</div>

<div class="slideshow-container">

<div class="mySlides">
  <div class="numbertext"></div>
  <br><br>
  Strawberry Fields Parklands Inc was founded by Fortitude Valley local singer songwriter, Australia’s very own, Kellie Nealon.<br> The project was incorporated as an association on the 16th December 2021 and was officially registered as a charity in June 2022.
Strawberry Fields is a template for all cities which will quantifiably prove that when reverence and space is given to
Mother Nature in the core of a city, everyone benefits.
<br>
<br>
In July 2023, Strawberry Fields championed ‘Fortitude Valley Green Heart Design Competition’. Entrants were invited to speculate on a future green space typology for Fortitude Valley that responded to current and future urban pressures. The awarded entries provided a conversation starter for future engagement with community, industry and government. Former Governor‐General of Australia, Dame Quentin Bryce and Kellie Nealon, the first president of the Strawberry Fields Parklands Association, presented the awards to eight emerging landscape architects selected by a jury panel of industry and community.
<br>
<br>
~ 2023 ‘Fortitude Valley Green Heart Design Competition’ Awards ~<br><br>


Graduate category:<br>
 First Place - Jared Thorp; <br>
Runner up - Ritchie Tang;<br>
 Commendation - Aiden Wong;<br>
  Commendation - Cas Brown;<br>
   Commendation - Kai Wood-Willems<br><br><br>
   
   
   
Student category:<br>
 First Place - Kurt Lorme;<br>
  Runner-up - Nando Masnanda;<br>
   Commendation - Reed P.
<br>
<br>
Strawberry Fields is currently focusing on its cultural objectives with its monthly Strawberry Fields social picnics, Strawberry Jams events, recording facilities and community live music events to build a strong foundation for the organisation in membership and cultural impact, to best position itself to achieve its parkland vision!
  <div class="text"></div>
</div>

<div class="mySlides">
  <div class="numbertext"></div>
  <img src="images/homelaptop.jpg" style="width:100%">
  <div class="text"></div>
</div>

<div class="mySlides">
  <div class="numbertext"></div>
  <img src="images/homemobile.jpg" style="width:100%">
  <div class="text"></div>
</div>

<div class="mySlides">
  <div class="numbertext"></div>
  <img src="images/homewatch.jpg" style="width:100%">
  <div class="text"></div>
</div>

</div>

<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  //setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>

<hr>

<div class = "scrollmenu" style="max-width: 1200px">

	<%
	DAO2 dao = new DAO2(DBConnect.getConn());
	List<viewlist> listv = dao.getAllviewlist();
	for(viewlist v : listv)
		{%>
		<b>
		<div class = "container border" style="background-color: white">
		<center>
			<table>
				<tr><th>
					<a href = 'selecteditem.jsp?Pn=<%=v.getPimage()%>'> <img src =' images/<%= v.getPimage() %>' height = 150px weight = 150px></a>
				</th></tr><br>
				<tr style='background-color: #ebe9eb'><th style='text-align: center'>
					<a href = 'selecteditem.jsp?Pn=<%=v.getPimage()%>'> <%= v.getBname()%> <%= v.getPname()%></a>
				</th></tr>
			</table>	
		</center>
		</div>
		</b>
		
		<%}%>
	
	</div>
	<footer text-align: center;
  padding: 3px;
  background-color: DarkSalmon;
  color: white;>
  
	<%@ include file = "footer.jsp" %>
</footer>


</form>
</body>
</html>