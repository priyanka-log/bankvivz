<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>doRegister</title>
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/main.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
html,body{
    background-image: url(images/img.gif);
}
</style>
</head>
<body>
<div id="header" style="background-image: url('images/h1.jpg');"align="center">
            <center><h1> Welcome to VIVZ Bank</h1></center>
        </div>
<table width="900" border="1" align="center" cellpadding="0" cellspacing="0" style="font-weight:normal; background-color:#FFFFFF">
  <tr>
    <th colspan="3" scope="col" style="height:90px; background-color:#2175bc;">
    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="900" height="90">
      <param name="movie" value="images/banks.swf" />
      <param name="quality" value="high" />
      <embed src="images/banks.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="900" height="90"></embed>
    </object>
    </th>
  </tr>
  <tr>
  <td width="28%" rowspan="3"><div align="center"><img src="images/icon_module.png" width="48" height="48" /></div></td>
    <td colspan="3">&nbsp;</td>
    
  </tr>
  <tr>

    <td colspan="2" style="padding:20px;">
	
	<%-- <% 
	if(update == 1){
	%> --%>
	Account is Created Successfully.<br/><a href="index.jsp"><b><h1>Click Here</h1></b></a> to Login and Activate Your Account.
	<%-- <%
	}else {
	%> --%>
	<%--<font color="#FF0000">Sorry!. Account is not created.<br/>Click Here to <a href="register.jsp">Register Again</a></font>
	 <%
	}
	 %>
	</div> --%>
	
	</td>
  </tr>
  <tr style="height:30px;">
    <td colspan="3" style="background-color:#2175bc;">&nbsp;</td>
  </tr>
</table>
<div id="footer" style="background-image: url('images/h1.jpg');">
                <center><h1><marquee> *******Stay in touch with us to perform secure banking********</marquee></h1></center>
        </div>
</body>
</html>