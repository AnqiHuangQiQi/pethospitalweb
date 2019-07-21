<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
   %>
<table width="100%" table-layout="fixed">
   <tr>
      <td class="abc"><img src="images/mylogo.GIF" width="150" height="140" /></td>
      <td class="abc"><img src="images/loogo.png" width="430" height="140" style="margin-right: 20px"/></td>
      <td class="abc">
         <p><img src="images/loo.GIF" width="30" height="28" /> <span class="abc"><span class="abc">
            <a href="appoCl2">
            My Account</a></span></span>
         </p>
         <p><img src="images/notepad.jpg" width="30" height="28" /> <span class="abc"><span class="abc">
            <a href="NoteClServlet?flag=decide">
            My Notepad</a></span></span>
         </p>
         <p><img src="images/appoi.jpg" width="30" height="28" /><span class="STYLE4"><span class="abc"> 
            <a href="appoClServlet?type=show">
            Appointment
            </a></span></span>
         </p>
      </td>
   </tr>
</table>
   <ul class="navWrapper">
      <li class="headerItem">
      	<a href="index.jsp" class="headerAnchor">
          Home Page 
        </a>
      </li>
      <li class="headerItem">
         <a href="everyday_news.jsp" class="headerAnchor">
            Everyday News 
         </a>
      </li>
      <li class="headerItem">
         <a href="startTest.jsp" class="headerAnchor">
            Beginners Test
         </a> 
      </li>
      <li class="headerItem">
         <a href="AboutUs.jsp" class="headerAnchor">
            About Us 
         </a>
      </li>
   </ul>