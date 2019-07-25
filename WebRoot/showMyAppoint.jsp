<%@ page language="java" import="java.util.*,com.aq.model.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//the doctor you want
ArrayList al = (ArrayList)request.getAttribute("myAppoInfo");

MyAppointBO mbo = (MyAppointBO)session.getAttribute("myappo");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showMyAppoint.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/my.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<script type="text/javascript">
	<!--
		function returnHome(){
			window.open("index.jsp","_self");
		}
		//cancel all apoointments
		function cancelAll(){
			window.open("appoClServlet?type=cancelAll","_self");
		}
	-->
	</script>
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
  
  <body topmargin="0" background="images/qiangzhi02.png">
  <center>

<table width="80%" border="1" align="center">
  <tr>
    <td><div align="center">
    <jsp:include flush="true" page="head.jsp"></jsp:include>
    </div></td>
  </tr>
  <tr>
    <td>
      <form action="appoClServlet?type=updateTime" method="post">
    <table width="100%" border="1">
      <tr>
        <td colspan="4" bgcolor="#FF66FF"><div align="center" class="abc">Your appointments' List </div></td>
        </tr>
      <tr align="center" class="abc">
        <td width="22%" height="31" class="aaa"> Doctor's ID</td>
        <td width="20%" class="abc">Name</td>
        <td width="20%" class="aaa">Major</td>
        <td width="38%"><p>Appointment Detail </p>          </td>
      </tr>
      <%
      for(int i=0;i<al.size();i++){
      
      //get doctors_bean
      
      doctors_bean db = (doctors_bean)al.get(i);
      
      %>
      <tr align="center" class="abc">
        <td height="35"><%=db.getDoctorId() %></td>
        <td bgcolor="#FFFF00"><%=db.getDoctor_Na() %></td>
        <td><%=db.getDoctor_Ma() %></td>
        <td bgcolor="#FFFF00"><table width="100%" border="1" align="center">
          <tr>
            <td width="34%" height="25">
            <input type="hidden" name="doctorsId" value="<%=db.getDoctorId() %>" />
            <input name="newTime" type="text" size="12" value="<%=mbo.getAppoTimeById(db.getDoctorId()+"") %>"/></td>
            <td width="33%"><div align="center">
            <a href="appoClServlet?type=delAppo&doctorsId=<%=db.getDoctorId() %>">
            Cancel
            </a>
            </div></td>
            <td width="33%"><div align="center">
            <a href="showdoctorsClServlet?type=showDetail&id=<%=db.getDoctorId() %>">
            Look Over
            </a> </div></td>
          </tr>
        </table></td>
      </tr>
      <%
      
      }
      
       %>
      
      
      <tr>
        <td>&nbsp;</td>
        <td align="center" valign="middle" nowrap="nowrap" class="abc"><input onclick="cancelAll();" name="Submit22" type="button" class="abc" value="Cancel All" /></td>
        <td align="center" valign="middle" nowrap="nowrap" class="abc"><div align="center">
          <input name="Submit2" type="submit" class="abc" value="Change Time" />
        </div></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="4">&nbsp;</td>
        </tr>
      <tr>
        <td colspan="4">&nbsp;</td>
        </tr>
    </table>
    </form>
      <table width="100%" border="1" align="center">
        <tr align="center" class="abc">
          <td width="62%"><div align="left" class="aaa">
          <input type="button" name="Submit2" onclick="returnHome();" value="Return To Home"/></div></td>
          <td width="38%" bgcolor="#FFFF00"><div align="center">
          <a href="appoCl2">
          Next Step</a> </div></td>
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
