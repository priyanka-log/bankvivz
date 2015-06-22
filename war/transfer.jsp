<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>transfer</title>
</head>
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/main.css" rel="stylesheet" type="text/css" />
<body>
<div id="header" style="background-image: url('images/h1.jpg');"align="center">
            <center><h1> Welcome to VIVZ Bank</h1></center>
        </div>
<table width="900" border="1" align="center" cellpadding="0" cellspacing="0" style="font-weight:normal; background-color:#FFFFFF">
  <tr>
    <th colspan="3" scope="col" style="height:90px; background-color:#2175bc;"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="900" height="90">
      <param name="movie" value="images/banks.swf" />
      <param name="quality" value="high" />
      <embed src="images/banks.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="900" height="90"></embed>
    </object></th>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
<td width="160" >
<div id="ddblueblockmenu">
  <div class="menutitle">Account Operations</div>
  <ul>
    <li><a href="">Welcome,&nbsp;<%= (String)session.getAttribute("username")%></a></li>
    <li><a href="account.jsp">Create Account</a></li>
	<li><a href="deposite.jsp">Deposite</a></li>
    <li><a href="withdraw.jsp">Do Withdraw</a></li>
    <li><a href="get-balance.jsp">Get Balance</a></li>
	<li><a href="transfer.jsp">Trasnsfer Amount</a></li>
	<li><a href="view-reports.jsp">View Report</a></li>
	<li><a href="logOff.jsp">LogOut</a></li>
  </ul>
  <div class="menutitle">&nbsp;</div>
</div>


<p>&nbsp;</p>	</td>
    <td colspan="2" style="padding:20px;line-height:20px;">
	<div class="box1">
	<marquee><h2><font color="#FF0000">Online Bank.</font></h2></marquee>
	</div>
	
	<form id="form1" name="form1" method="post" action="doTransfer.jsp">
	  <table width="80%" border="0" align="center" cellpadding="2" cellspacing="2">
        <tr>
          <th colspan="3" bgcolor="#333333" scope="col"><font color="#FFFFFF">Please Select the Account to Check Your Current Balance </font></th>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><div align="right"><strong>Account Holder Name </strong></div></td>
          <td>:</td>
          <td>&nbsp;<%-- <%= uname %> --%></td>
        </tr>
        <tr>
          <td width="43%"><div align="right"><strong>Select Source Account No.</strong></div></td>
          <td width="2%">:</td>
          <td width="55%"><select name="accNo">
             <%--  <%
			for(int i=0; i<size; i++){
			ArrayList o = (ArrayList)one.get(i);
			%>
              <option value="<%=(String)o.get(0)%>" ><%=(String)o.get(0)%> ::<%=(String)o.get(1)%></option>
              <% } %>
            </select>          --%> </td>
        </tr>
        <tr>
          <td><div align="right"><strong>Select Destination Account No. </strong></div></td>
          <td>:</td>
          <td><label>
            <%-- <select name="daccNo">
              <%
			for(int i=0; i<one1.size(); i++){
			ArrayList o = (ArrayList)one1.get(i);
			%>
              <option value="<%=(String)o.get(0)%>" ><%=(String)o.get(0)%> ::<%=(String)o.get(1)%></option>
              <% } %>
            </select> --%>
          </label></td>
        </tr>
        <tr>
          <td><div align="right"><strong>Amount</strong></div></td>
          <td>:</td>
          <td><label>
            <input name="Amount" type="text" id="Amount" size="10" />
          Rs.</label></td>
        </tr>
        <tr>
          <td><div align="right"><strong>Details</strong></div></td>
          <td>:</td>
          <td><label>
            <textarea name="textfield2" cols="30" rows="4"></textarea>
          </label></td>
        </tr>
        <tr>
          
         
        </tr>
        <tr>
         
          
          <td><label>
          &nbsp;&nbsp;&nbsp;<input type="submit" name="Submit" value="Transfer Amount  " />
          </label></td>
        </tr>
        <tr>
          
         
        </tr>
      </table>
      </form>
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