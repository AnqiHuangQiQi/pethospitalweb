<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<table width="100%" border="1">
  <tr>
    <td height="10" colspan="3" bgcolor="#FFFF00" class="abc"></td>
  </tr>
  <tr>
    <td class="abc"><img src="images/mylogo.GIF" width="185" height="140" /></td>
    <td class="abc"><img src="images/loogo.png" width="570" height="140" style="margin-right: 20px"/></td>
    <td class="abc"><p><img src="images/loo.GIF" width="30" height="28" /> <span class="abc"><span class="abc">
    <a href="appoCl2">
    My Account</a></span></span></p>
    <p><img src="images/notepad.jpg" width="30" height="28" /> <span class="abc"><span class="abc">
    <a href="NoteClServlet?flag=decide">
    My Notepad</a></span></span></p>
    <p><img src="images/appoi.jpg" width="30" height="28" /><span class="STYLE4"><span class="abc"> 
    <a href="appoClServlet?type=show">
    Appointment
    
    </a></span></span></p>
    
    </td>
  </tr>
  <tr>
    <td colspan="3" height="10" bgcolor="#FFFF00" class="abc"></td>
  </tr>
  <tr align="center" bgcolor="skyblue">
    <td colspan="3" class="abc"><div align="center">
      <table width="100%" border="1">
          <tr>
            <td width="9%">&nbsp;</td>
            <td width="14%" class="aaa"><div align="center">
            <a href="index.jsp" class="headerNav">
            Home Page 
            </a></div></td>
            <td width="9%">&nbsp;</td> 
            <td width="14%" class="aaa"><div align="center">
            <a href="everyday_news.jsp" class="headerNav">
            Everyday News 
            </a></div></td>
            <td width="9%">&nbsp;</td>
            <td width="14%" class="aaa"><div align="center">
            <a href="startTest.jsp" class="headerNav">
            Beginners Test
            </a> </div></td>
            <td>&nbsp;</td>
            <td width="14%" class="aaa"><div align="center">
            <a href="AboutUs.jsp" class="headerNav">
            About Us 
            </a>
            </div></td>
            <td>&nbsp;</td>
          </tr>
          </table>
    </div></td>
  </tr>
</table>
<!-- <div class="headerWrapper">
	<span><a href="index.jsp">Home</a></span>
	<span><a href="contactme/index.jsp">Contact Me</a></span>
	<span><a href="AboutUs.jsp">Links</a></span>
</div> -->

