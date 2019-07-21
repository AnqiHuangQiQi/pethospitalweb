<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>UW Pet Hospital Home Page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/my.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<link href="https://fonts.googleapis.com/css?family=Cardo:400,700|Oswald" rel="stylesheet">

  </head>
  
 <body topmargin="0" bgcolor="#FFFFFF">
 
<table width="80%" border="0" align="center">
  <tr border="0">
    <td height="76" border="0" colspan="2" align="center">
    <jsp:include flush="true" page="head.jsp"></jsp:include>
    </td>
  </tr>
  <tr>
    <td width="20%" height="251" valign="top" align="center">
    <jsp:include flush="true" page="left.jsp"></jsp:include>
    </td>
    <td width="80"  height="251" valign="top" align="center">
    <jsp:include flush="true" page="right.jsp"></jsp:include>
    </td>
  </tr>
  <tr>
    <td height="150" colspan="2" align="center">
    <jsp:include flush="true" page="tail.jsp"></jsp:include>
    </td>
  </tr>
</table>
</body>

</html>
