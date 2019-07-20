<%@ page language="java" import="java.util.*,com.aq.model.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

UserBean ub = (UserBean)session.getAttribute("userInfo");

ArrayList al = (ArrayList)request.getAttribute("myappoInfo");
MyAppointBO mab = (MyAppointBO)session.getAttribute("myappo");


%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'appo3.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/my.css">
	<script type="text/javascript">
	<!--
		function showApp(){
			window.open("appoClServlet?type=show","_self");
		}
		
		function goNext(){
			//request.setAttribute("myAppoInfo", al);
			window.open("apClServlet?flag=appointsave&userNa=<%=ub.getUsername() %>","_self");
		}
		
	-->
	</script>
	

  </head>
  
  <body topmargin="0">
    <center>
    <table width="80%" border="0" align="center">
  <tr align="center">
    <td>
    <jsp:include flush="true" page="head.jsp"></jsp:include>
    </td>
  </tr>
  <tr>
    <td height="483" align="center"><table width="80%" border="0" align="center">
      <tr>
        <td width="80%" colspan="3" bgcolor="#045FB4" style="height: 50px; border-radius:10px; color:#FFFFFF;" class="abc"><div align="center">Check the Appointment Information </div></td>
      </tr>
      <tr>
        <td colspan="3"><div align="center">
             <form action="apClServlet?flag=modifyUser&userId=<%=ub.getUserid() %>" method="post">
            <table width="70%" border="0">
              <tr>
                <td colspan="2" class="abc"><div align="center">User's Information </div></td>
              </tr>
              <tr>
                <td width="50%" bgcolor="#FFFF00" class="abc"><div align="right">User Name : </div></td>
                <td width="50%"><label>
                  <input type="text" name="userName" value="<%=ub.getUsername() %>" />
                </label></td>
              </tr>
              <tr>
                <td class="abc"><div align="right">Phone Number : </div></td>
                <td><input type="text" name="userPhon" value="<%=ub.getPhone_num() %>" /></td>
              </tr>
              <tr>
                <td bgcolor="#FFFF00" class="abc"><div align="right">Email :</div></td>
                <td><input type="text" name="userEmai" value="<%=ub.getEmail() %>" /></td>
              </tr>
              <tr>
                <td class="abc"><div align="right">Pet Type : </div></td>
                <td><input type="text" name="petType" value="<%=ub.getPet_type() %>" /></td>
              </tr>
              <tr>
                <td bgcolor="#FFFF00" class="abc"><div align="right">Pet Age : </div></td>
                <td><input type="text" name="petAgee" value="<%=ub.getPet_age() %>" /></td>
              </tr>
              <tr>
                <td class="abc"><div align="right">Pet Condition: </div></td>
                <td><input type="text" name="petCond" value="<%=ub.getPet_cond() %>" /></td>
              </tr>
              <tr>
                <td align="right" class="abc"><label>
       
                  <input name="Submit" type="button" class="abc" onclick="goNext();" value="Finishi the Appointment" />
   
                </label></td>
                <td class="abc"><input name="Submit2" type="submit" class="abc" value="Modify the Personal Information" /></td>
              </tr>
            </table>
            </form>
        </div></td>
      </tr>
      <tr>
        <td height="152" colspan="3"><div align="center">
            <table width="100%" border="0">
              <tr>
                <td colspan="4" class="abc" bgcolor="#045FB4" style="height: 50px; border-radius:10px; color:#FFFFFF;">
                <div align="center" class="abc">MY APPOINTMENT DETAIL </div></td>
              </tr>
              <tr class="abc" style="border-collapse:collapse; border-style:dotted dotted solid dotted; border-width: 0px 0px 1px 0px; border-color:#045FB4 ;">
                <td style="border-collapse:collapse; border-style:dotted dotted solid dotted; border-width: 0px 0px 1px 0px; border-color:#045FB4 ;">Doctor's ID </td>
                <td style="border-collapse:collapse; border-style:dotted dotted solid dotted; border-width: 0px 0px 1px 0px; border-color:#045FB4 ;">Doctor's Name</td>
                <td style="border-collapse:collapse; border-style:dotted dotted solid dotted; border-width: 0px 0px 1px 0px; border-color:#045FB4 ;">Doctor's Major </td>
                <td style="border-collapse:collapse; border-style:dotted dotted solid dotted; border-width: 0px 0px 1px 0px; border-color:#045FB4 ;">Appointment's Detail </td>
              </tr>
				<%
				
				for(int i = 0; i<al.size();i++){
					doctors_bean db = (doctors_bean)al.get(i);
				%>
				
			  <tr class="abc">
                <td style="border-collapse:collapse; border-style:dotted dotted solid dotted; border-width: 0px 0px 1px 0px; border-color:#045FB4 ;"><%=db.getDoctorId() %></td>
                <td style="border-collapse:collapse; border-style:dotted dotted solid dotted; border-width: 0px 0px 1px 0px; border-color:#045FB4 ;"><%=db.getDoctor_Na() %></td>
                <td style="border-collapse:collapse; border-style:dotted dotted solid dotted; border-width: 0px 0px 1px 0px; border-color:#045FB4 ;"><%=db.getDoctor_Ma() %></td>
                <td style="border-collapse:collapse; border-style:dotted dotted solid dotted; border-width: 0px 0px 1px 0px; border-color:#045FB4 ;"><%=mab.getAppoTimeById(db.getDoctorId()+"") %></td>
              </tr>
				
				<% 
				
				
				}

				 %>
				
              <tr class="abc">
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr class="abc">
                <td colspan="4" class="abc"><div align="center">
                    <label>
                    <input name="Submit3" type="submit" class="abc" onclick="showApp();" value="Return and Modify the Appointment" />
                    </label>
                </div></td>
              </tr>
            </table>
        </div></td>
      </tr>
      <tr>
        <td height="33" class="abc" width="33%"><label>
          <input name="Submit4" type="submit" class="abc" onclick="showApp();" value="Last Step" />
        </label></td>
        <td width="33%" align="center"><a href="apClServlet?flag=logout">Exit!</a></td>
        <td class="abc" width="33%"><div align="right">
          
          <input name="Submit5" type="button" onclick="goNext();" class="abc" value="Next Step" />
        </div></td>
      </tr>
      
    </table></td>
  </tr>
  <tr align="center">
    <td>
    <jsp:include flush="true" page="tail.jsp"></jsp:include>
    </td>
  </tr>
</table>
    </center>
  </body>
</html>
