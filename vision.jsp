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
<title>Strawberry Park - Valley Vision</title>
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
	<h1>Valley Vision</h1>
	<br>
	</div>

<div class="slideshow-container">

<div class="slideshow-container">

<div class="mySlides" style="display: block;">
  <div class="numbertext"></div>
  <br><br>
 Fortitude Valley is a bustling vibrant inner city suburb with a residential population of 9,708 according to the 2021 census.<br>
Brisbane City Plan 2014 (section 4) recommends 0.8 ha of recreational green space per 1,000 population,
which equates to 5.6 ha total for The Valley. Currently, there is almost none.
<br><br>
It is also the Fortitude Valley Entertainment Precinct - the hub of live music and independent arts culture in Brisbane - which was created to protect the long-term future of the music industry in The Valley from noise complaints with provisions under the Valley Music Harmony Plan to consider venues, residents and businesses that all reside in this dynamic iconic suburb.
With the 2032 Olympics on the horizon, The Valley is showing signs of revitalisation as a tourist destination, which can only be truly successfully achieved if it celebrates our live music scene and creative community. With political will, business buy-in and a community org to foster it, anything is possible! <br><br>
Strawberry Fields aim is to champion and celebrate our grassroots live music scene and independent arts sector, working to create opportunities for our emerging bands and young audiences, in partnership with local businesses and community organisations to create a Valley movement - celebrating the land, the ancient songlines, healthier lifestyles, local culture, colour and creativity...
  
<br><br>Strawberry Fields’ long term vision is to create a public trust fund and raise community and corporate support to purchase a block of land and hold it in perpetuity, as a Peace Park of the future in the heart of The Valley.
  <div class="text"></div>
</div>

<div class="mySlides" style="display: none;">
  <div class="numbertext"></div>
  <img src="images/homelaptop.jpg" style="width:100%">
  <div class="text"></div>
</div>

<div class="mySlides" style="display: none;">
  <div class="numbertext"></div>
  <img src="images/homemobile.jpg" style="width:100%">
  <div class="text"></div>
</div>

<div class="mySlides" style="display: none;">
  <div class="numbertext"></div>
  <img src="images/homewatch.jpg" style="width:100%">
  <div class="text"></div>
</div>

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