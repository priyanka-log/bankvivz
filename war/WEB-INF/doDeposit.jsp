<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>doDeposit</title>
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="header" style="background-image: url('images/h1.jpg');"align="center">
            <center><h1> Welcome to VIVZ Bank</h1></center>
        </div>
        <br></br>
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
    <li><a href="index.jsp">Welcome,&nbsp;<%= (String)session.getAttribute("username")%></a></li>
    <li><a href="account.jsp">Create Account</a></li>
	<li><a href="deposit.jsp">Deposit</a></li>
    <li><a href="withdraw.jsp">Do Withdraw</a></li>
    <li><a href="get-balance.jsp">Get Balance</a></li>
	<li><a href="transfer.jsp">Transfer Amount</a></li>
	<li><a href="view-reports.jsp">View Report</a></li>
	<li><a href="logOff.jsp">LogOut</a></li>
  </ul>
  <div class="menutitle">&nbsp;</div>
</div>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>	</td>
    <td colspan="2" style="padding:20px;line-height:20px;">
	<div class="box1">
	<marquee><h2><font color="#FF0000">Online Bank.</font></h2></marquee>
	</div>
	<br/>
	<br/>
	<div class="box2">
	Your Amount is Successfully Deposited into Account. Your current Balance is: <font color="#FF0000"><h1> Rs.<%= (Integer)session.getAttribute("Amount")%> </h1></font><br/>
	To Deposit Amount in Your Account <a href="deposit.jsp">Click Here</a><br/>
	To Withdraw From Account <a href="withdraw.jsp">Click Here</a>
	</div>
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