<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>account</title>
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/main.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/JavaScript">
 function MM_findObj(n, d) { //v4.01
	  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
	    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
	  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
	  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
	  if(!x && d.getElementById) x=d.getElementById(n); return x;
	} 
 function MM_validateForm() { //v4.0
	  var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
	  for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
	    if (val) { nm=val.name; if ((val=val.value)!="") {
	      if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
	        if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
	      } else if (test!='R') { num = parseFloat(val);
	        if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
	        if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
	          min=test.substring(8,p); max=test.substring(p+1);
	          if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
	    } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
	  } if (errors) alert('The following error(s) occurred:\n'+errors);
	  document.MM_returnValue = (errors == '');
	}
 </script>
<body>
<div id="header" style="background-image: url('images/h1.jpg');"align="center">
            <center><h1> Welcome to VIVZ Bank</h1></center>
        </div>
        <br>
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
    <li><a href="index.jsp">Welcome, &nbsp;<%= (String)session.getAttribute("username")%></a></li>
    <li><a href="/random">Create Account</a></li>
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
    <td colspan="2" style="padding:20px;">
	<div class="box1">
	<marquee><h2><font color="#FF0000">Welcome to VIVZ Bank - Online Banking.</font></h2></marquee>
	</div>
	<br/>
	<form id="form1" name="form1" method="post" action="/doAccount">
	  <table width="70%" border="0" align="center" cellpadding="2" cellspacing="2">
        <tr>
          <th colspan="3" bgcolor="#333333" scope="col"><font color="#FFFFFF">Create Bank Account</font></th>
        </tr>
        <tr>
          <td width="39%">&nbsp;</td>
          <td width="3%">&nbsp;</td>
          <td width="58%">&nbsp;</td>
        </tr>
        <tr>
          <td><div align="right">Account Holder Name </div></td>
          <td>:</td>
          <td><label>
            <input name="accountholdername" type="text" id="uname" />
          </label></td>
        </tr>
        <tr>
          <td><div align="right">Account Number </div></td>
          <td>:</td>
          <td><label>
            <input name="accno" type="text"  value="${accnumber}" readonly>
          </label></td>
        </tr>
        <tr>
          <td><div align="right">Account Type </div></td>
          <td>:</td>
          <td><select name="acc_type">
		  <option value="CURRENT"> Current Account</option>
		  <option value="SAVING"> Saving Account</option>
		  <option value="STUDENT"> Student Account</option>
		  </select></td>
        </tr>
        <tr>
          <td><div align="right">Pin Number </div></td>
          <td>:</td>
          <td><label>
            <input name="pinnumber" type="text"  value="<%= (Integer)session.getAttribute("pinnumber")%>" readonly>
          </label></td>
        </tr>
        <tr>
         
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><label>
            <input type="submit" name="Submit" onclick="MM_validateForm('uname','','R','details','','R');return document.MM_returnValue"value="Create Account" />
          </label></td>
        </tr>
        <tr>
          
        </tr>
        <tr>
          <td colspan="3" bgcolor="#333333">&nbsp;</td>
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