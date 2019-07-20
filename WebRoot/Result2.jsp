<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
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
	
    <script type="text/javascript">
    function returnHall(){
    	window.open("EmailForm2.jsp","_self");
    }
    
    </script>
</head>
<body topmargin="0" background="images/qiangzhi02.png" style="background-repeat:inherit">
	 <tr>
    <td><div align="center" class="abc"><jsp:include flush="true" page="head.jsp"></jsp:include></div></td>
  </tr>

	<center>
		<h3>${requestScope.message}</h3>
	</center>
				<tr> 	
			    <label>
		<div align="center">	     
	     <input type="submit" name="button" id="button" onclick="returnHall();" value="Return" />
		      </label></td>
		      </div>
			</tr>

	  <tr>
    <td><div valign="bottom" align="center">
	<jsp:include flush="true" page="tail.jsp"></jsp:include>
	
	</div></td>
  </tr>

</body>

</html>