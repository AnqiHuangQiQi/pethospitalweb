<%@ page language="java" import="java.util.*,com.aq.model.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
NoteCon nc = new NoteCon();
nc = (NoteCon)request.getAttribute("notecon");

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'notepad.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/my.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<script type="text/javascript">
	<!--
		function clear(){
			document.getElementById("txt").value="";
		}
		//cancel all contents
		
	-->
	</script>

  </head>
  
  <body>
   <table width="80%" border="0" align="center">
  <tr>
    <td><div align="center">
<jsp:include flush="true" page="head.jsp"/></div></td>
  </tr>
  <tr>
    <td><table width="100%" border="0">
      <tr>
        <td bgcolor="#FFFF00"><div align="center" class="abc">My Notepad </div></td>
      </tr>
      <tr>
        <td>
         <form action="NoteClServlet?flag=save&userid=<%=nc.getUserid() %>" method="post">
        <table width="100%" border="0">
          <tr>
            <td height="40" colspan="2" style="height: 91px; "><img src="images/notepadd.jpg" width="599" height="76" style="height: 91px; "/></td>
            <td width="16%" rowspan="2"><img src="images/dengpao_.jpg" width="160" height="460" /></td>
            <td width="28%" rowspan="2"><form id="form4" name="form4" method="post" action="">
              <textarea name="textfield2" style="width:280px; height:450px; border:solid #7FFF00" class="abc">
<%=nc.getDoctormes() %></textarea>
                       </td>
          </tr>
          <tr>
           
            <td height="280px" colspan="2" class="abc">
           
              <textarea type="text" id="txt" name="usercon" style="width:600px; height:360px; border:solid blue;" class="abc">
<%=nc.getNoteconte() %></textarea>
           
            </td>
          </tr>
          <tr>
            <td width="24%" bgcolor="#FFB062">
              <div align="center">
                <input name="Submit" type="submit" class="abc" value="Save" />
              </div>
              <label></label>
                      </td>
            <td width="26%" bgcolor="#00FFFF">
            <div align="center">
              <input name="Submit2" type="reset" class="abc" value="Reset" />
            </div></td>
            <td colspan="2" class="aaa"><div align="center" class="aaa">Message From The Doctors </div></td>
          </tr>
        </table>
     </form> 
         </td>
      </tr>
      <tr>
        <td bgcolor="#FFFF00">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><div align="center">
<jsp:include flush="true" page="tail.jsp"></jsp:include></div></td>
  </tr>
</table>
  </body>
</html>
