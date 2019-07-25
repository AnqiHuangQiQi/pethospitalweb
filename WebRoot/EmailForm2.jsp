<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  <% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>
    <base href="<%=basePath%>">
    
    <title>My JSP 'EmailForm2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<link rel="stylesheet" type="text/css" href="css/my.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
    
    <script type="text/javascript">
    function anqi(){
    	
    	window.open("AboutUs.jsp","_self");
    }
    
    </script>
    
  </head>
  
 <body topmargin="0" background="images/qiangzhi02.png" style="background-repeat:inherit">
	  <tr>
    <td><div align="center" class="abc"><jsp:include flush="true" page="head.jsp"></jsp:include></div></td>
  </tr>
	<form action="SendMailAttachServlet" method="post" enctype="multipart/form-data">
		<table border="0" width="63%" align="center">
	
	    <caption>
			<h2> New Message</h2>
			</caption>

			<tr>
				<td><div align="right">Subject:</div></td>
				<td><input type="text" name="subject" size="50"/></td>
			</tr>

			<tr>
				<td><div align="right">Content:</div></td>
				<td><textarea rows="10" cols="48" name="content">Name:  
Email: 
Phone:
Address:
Message:
				</textarea> </td>
			</tr>
			<tr>
				<td><div align="right">Attach Files:</div></td>
				<td><input type="file" name="file" size="50" /></td>
			</tr>
			<tr>
			  <td colspan="100" align="center"><input type="submit" value="Send"/>
			 	    <label>	     
	     <input type="button" name="button" id="button" onclick="anqi();" value="Return" />
		      </label></td>
			</tr>
			 
	  </table>	
	   <tr>
    <td><div align="center" class="abc"><jsp:include flush="true" page="tail.jsp"></jsp:include></div></td>
  </tr>
	</form>
</body>
</html>