<%@page language="java" import="UI.*" import = "Entity.*"%>
<% UserUI uUI = (UserUI)session.getAttribute("userUi"); 
%>
<html>
<style>
body {font-family: Verdana,sans-serif;margin:0; background-color:#444444}
#banner{
  width:100%;
  background-image:url(http://i.imgur.com/TsQQMTp.png);
  background-size:880px 680px;
  background-repeat:no-repeat;
  background-position:60% 46%;
  height: 99px;
  background-color: #333333;
}
</style>
<head>
<link href="CSS.html" rel="stylesheet" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
<ul>
  <li><a class="active" href="SearchMenu.jsp">Search for Schools</a></li>
  <li><a class ="active" href="ManageSavedSchools.jsp">Manage My Saved Schools</a></li>
  <li><a class = "active" href ="UserEditProfile.jsp">Manage My Profile</a></li>
</ul>
<br>
<br>
<div align="center" style="color:white">
Hello User <%out.println(uUI.viewProfile().getUsername()); %> 
</div>
<br>
<br>
<div class="slideshow-container">

<div class="slide fade">
  <img src="http://hac.bard.edu/travel/index.php?action=getfile&id=7663364&disposition=inline&type=image" style="width:100%">
  <div class="text">Bard University</div>
</div>

<div class="slide fade">
  <img src="http://hcap.artstor.org/collect/cic-hcap/index/assoc/p418.dir/Sacred%20Heart%20Chapel%20%28view%20from%20the%20west,%20toward%20cloister%20walk%29,%20College%20of%20Saint%20Benedict-large.jpg" style="width:100%">
  <div class="text">College of Saint Benedict</div>
</div>

<div class="slide fade">
  <img src="http://www.ivyboost.com/wp-content/uploads/2011/10/yale_university2.jpg" style="width:100%">
  <div class="text">Yale University</div>
</div>

<a class="prev" onclick="nextSlides()">&#10094;</a>
<a class="next" onclick="prevSlides()">&#10095;</a>

</div>
<br>

<script>
var slideIndex = 1;
showSlides(slideIndex);

function nextSlides() {
  slideIndex++;
  showSlides(slideIndex);
}

function prevSlides(){
	slideIndex--;
	showSlides(slideIndex);
}

function showSlides(index) {
  var i;
  var slides = document.getElementsByClassName("slide");
  if (index > slides.length) {slideIndex = 1}    
  if (index < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  slides[slideIndex-1].style.display = "block";  
}
</script>
<footer style="color:white; font-size:12px">
<center>
<br>
<img src="http://i.imgur.com/l2IaWyd.png" style="width:250px; height:150px" />
<br>
  Choose My College <br>
  Created by Team DASC
  </center>
</footer>
</body>
</html> 
