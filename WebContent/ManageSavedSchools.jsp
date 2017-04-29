<%@page language="java" import="UI.*" import = "Entity.*"%>
<% UserUI uUI = (UserUI)session.getAttribute("userUi");%>

<html>
<style>
body {font-family: Verdana,sans-serif; font-color: white; margin:0; background-color:#686868}
table {
  border: none;
  border-collapse: collapse;
}
tr:hover {background-color: #f5f5f5}
</style>
<head>
  <link href="CSS.html" rel="stylesheet" type="text/css" />
  <meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
  <title>ManageSavedSchools</title>

  
</head><body>
<ul>
  <li><a class="active" href="UserMenu.jsp">Return To Menu</a></li>
</ul>
<br>
<br>
<h2 style="text-align: center; color: white"> Manage Saved Schools </h2>


  

    <% if (uUI.viewSavedSchool().isEmpty()){ %>
    	<h4 style="text-align: center; color:white"> You have no saved schools! </h4>
    	
<%} else { %>
<table style="text-align: auto; background-color: white; border-radius: 5px; width: 100%; height: 33px;" border="1"; cellpadding="2" cellspacing="2" >
    <tbody>
    <% for (String u : uUI.viewSavedSchool()) {  %>
      <tr>
        <td style="vertical-align: top; width: 33%;">
         <form action="USER/RemoveSavedSchool.jsp" name="RemoveSavedSchools">
         <input name="RemoveSchool" value="Remove" type="submit"><input name="schoolName"
			value="<%out.print(u);%>" type="hidden"></form>
         <br>
        </td>
        <td style="vertical-align: top; width: 33%;"><%out.print(u);%><br>
        </td>
        <td style="vertical-align: top;">
        <form action="ViewSchool.jsp" name="ViewSavedSchools">
        <input name="ViewSchool" value="View" type="submit">
        <input name="schoolName" value="<%out.print(u);%>" type="hidden"></form>
        </td>
      </tr>
      <%} %>
    </tbody>
  </table>
  <br>
<%} %>
<footer style="color:white; font-size:12px">
<center>
<br>
<img src="http://i.imgur.com/l2IaWyd.png" style="width:250px; height:200px" />
<br>
  Choose My College <br>
  Created by Team DASC
  </center>
</footer>
</body>
</html>