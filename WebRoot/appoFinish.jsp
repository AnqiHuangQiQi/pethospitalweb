<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'appoFinish.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/my.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">


  </head>
  
  <body topmargin="0" background="images/qiangzhi.jpg">
    <center>
    <table width="80%" border="1" align="center" class="abc">
  <tr>
    <td><div align="center"><jsp:include flush="true" page="head.jsp"></jsp:include></div></td>
  </tr>
  <tr valign="top">
    <td><table width="100%" border="1">
        <tr>
          <td><div align="center" class="aaa">Congratulations!Your appointment  has been finished. </div></td>
        </tr>
        <tr>
          <td align="center" valign="top"><img src="images/cat.gif" width="746" height="342" align="absmiddle" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFF00"><div align="center">Wish you and your pet a happy life! </div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td><div align="center"><jsp:include flush="true" page="tail.jsp"></jsp:include></div></td>
  </tr>
</table>
    </center>
  </body>
</html>
