<%@ page language="java" import="java.util.*,com.aq.model.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

//receive the information need to be shown

doctors_bean db = (doctors_bean)request.getAttribute("doctorsinfo");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showDetail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/my.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<script type="text/javascript">
	<!--
		function returnHall(){
			window.open("index.jsp","_self");
		}
		
		function addDoctors(doctorsId){
			//window.alert(doctorsId);
			//call AppoServlet to add Appo
			
			window.open("appoClServlet?type=addAppo&doctorsId="+doctorsId,"_self");
		}
	-->
	</script>

  </head>
  
  <body topmargin="0" background="images/qiangzhi2.jpg">
    <centre>
    <table width="84%" border="1" align="center">
  <tr align="center">
    <td height="76" colspan="2" align="center">
    <jsp:include flush="true" page="head.jsp"></jsp:include>
    </td>
  </tr>
  <tr>
    <td><table class="abc" width="100%" border="1">
      <tr>
        <td colspan="2">&nbsp;</td>
        </tr>
      <tr>
        <td width="22%" rowspan="8"><img src="<%=db.getDoctor_Ph() %>" width="220" height="220" /></td>
        <td width="78%" class="abc"><strong>Name:<%=db.getDoctor_Na() %></strong></td>
      </tr>
      <tr>
        <td class="abc">Major:<%=db.getDoctor_Ma() %></td>
      </tr>
      <tr>
        <td class="abc">Work Time:<%=db.getDoctor_Wo() %></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="abc">Email:<%=db.getDoctor_Em() %></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="abc">Message:<%=db.getDoctor_No() %></td>
      </tr>
      <tr>
        <td height="23" colspan="2"><form id="form1" name="form1" method="post" action="">

          <input type="button" onclick="addDoctors(<%=db.getDoctorId() %>)" name="Submit" value="Make Appointment" />

          <input type="button" name="Submit2" onclick="returnHall();" value="Return To Home" />
        </form>
        </td>
        </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        </tr>
    </table></td>
  </tr>
  <tr align="center">
    
	<td height="150" colspan="2" align="center">
	<jsp:include flush="true" page="tail.jsp"></jsp:include>
	</td>
  </tr>
</table>
    </centre>
  </body>
</html>
