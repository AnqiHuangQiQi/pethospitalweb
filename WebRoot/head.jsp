<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
   %>
<table width="100%" table-layout="fixed">
   <tr>
      <td><img src="images/mylogo.GIF" width="155" height="140" /></td>
      <td><img src="images/loogo.png" width="490" height="140" style="margin-right: 20px"/></td>
      <td width="160">
            <a href="appoCl2" class="infoAnchor">
            <img src="images/loo.GIF" width="30" height="28" />
            <span>My Account</span>
            </a>
            <a href="NoteClServlet?flag=decide" class="infoAnchor">
            <img src="images/notepad.jpg" width="30" height="28" />
            <span>My Notepad</span>
            </a>
            <a href="appoClServlet?type=show" class="infoAnchor">
            <img src="images/appoi.jpg" width="30" height="28" />
            <span>Appointment</span>
            </a>
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