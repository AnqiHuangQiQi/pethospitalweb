<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/my.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">

	<style type="text/css">
		table,td,tr {
			border: none;
		}
		a {
			text-decoration: none;
		}
		a:visited {
			color: #8333FF;
		}
	</style>
  </head>
  
  <body topmargin="0" background="images/gougou.png" style="background-size:cover; ">
  <center>
  <table width="80%" border="0" align="center">
  <tr>
    <td><div align="center"><jsp:include flush="true" page="head.jsp"></jsp:include></div></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" align="center">
      <tr>
        <td width="60%"><div width="60%" align="center" class="abc" style="border-style:dotted dotted solid dotted; border-width: 0px 0px 1px 0px;">Thank you for choosing UW pet hospital. </div></td>
      </tr>
      <tr>
        <td>
        <form action="LoginCl?symbol=<%=request.getAttribute("symbol") %>" method="post">
        <table width="60%" border="0" align="center" bordercolor="#00FF00">
          <tr>
            <td colspan="2"><div align="center" class="abc">LOGIN </div></td>
            </tr>
          <tr>
            <td width="50%" class="abc"><div align="right">USER NAME: </div></td>
            <td width="50%"><label>
              <input name="username" type="text" size="20" />
            </label></td>
          </tr>
          <tr>
            <td class="abc"><div align="right">PASSWORD:</div></td>
            <td><label></label>
              <label>
              <input name="password" type="password" size="20" />
              </label></td>
          </tr>
          <tr>
            <td height="24">
              <div align="right">
                <input name="Submit" type="submit" class="abc" value="  Login  " />
                </div></td>
            <td><input name="Submit2" type="reset" class="abc" value="Reset" /></td>
          </tr>
        </table>
        </form>
        </td>
      </tr>
      <tr>
        <td bgcolor="#FFFF00" class="bbb"><div align="center" class="bbb">^_^We will give you and your pet the best service^_^</div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><div align="center">
	<jsp:include flush="true" page="tail.jsp"></jsp:include>
	
	</div></td>
  </tr>
</table>
  
  
  </center>
  
  </body>
</html>
