<%@ page language="java" import="java.util.*,com.aq.model.*" pageEncoding="ISO-8859-1"%>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
   
   //use doctors_beanbo 
   
   doctors_beanbo dbb = new doctors_beanbo();
   //receive
   String s_pageNow = (String)request.getAttribute("abc");
   int pageNow=1;
   if(s_pageNow!=null){
   		
   	pageNow=Integer.parseInt(s_pageNow);
   }
   
   //default show 1 st page
   ArrayList al = dbb.getDoctorsByPage(6,pageNow);
   
   //get number of pages
   
   int pageCount = dbb.getPageCount(6);
   
   %>
<table width="100%" border="0" style="border-collapse:collapse; height: 207px;">
   <tr>
      <td colspan="3"
       style="height: 28px; font-weight:bold; color:#FFFFFF; background-image:linear-gradient(#FFFFFF, #EC5768 90%, #FFFFFF);">
         <div align="center" class="abc">Excellent Veterinarians</div>
      </td>
   </tr>
   <%
      int time=0;
      		
      for(int i=0;i<2;i++){
      		//print 2 lines.there are 3 in each line. It might be not full.
      		%>
   <tr>
      <%
         //get 3 pieces
         	for(int j=0;j<3;j++){
         	doctors_bean db = new doctors_bean();
         	if(time>=al.size()){
         		
         		db.setDoctorId(0);
         		db.setDoctor_Wo("Not Available");
         		db.setDoctor_Ph("images/gougou.gif");
         		db.setDoctor_Ma("Not Available");
         		db.setDoctor_Na("Not Available");
         		
         	
         	}else{
         	
         	db = (doctors_bean)al.get(time);
         	time++;
         	}
         	%>
      <td width="10%" border="0">
      <div class="multbg-top-to-bottom">
         <table width="100%" height="179">
            <tr>
               <td width="40%" rowspan="3"><img src="<%=db.getDoctor_Ph() %>" width="136" height="125" align="absmiddle" />
               </td>
               <td bgcolor="#E5E338" style="border-radius: 20px;">
                  <a style="text-decoration:none;" class="abc" href="showdoctorsClServlet?type=showDetail&id=<%=db.getDoctorId() %>"><%=db.getDoctor_Na() %></a>
               </td>
            </tr>
            <tr>
               <td height="40" class="abc" colspan="2">Major:<%=db.getDoctor_Ma() %></td>
            </tr>
            <tr>
               <td height="40" class="abc"> </td>
            </tr>
            <tr>
               <td colspan="2" class="bbb" >
                  Work Time:<%=db.getDoctor_Wo() %> 
               </td>
            </tr>
         </table>
      </div>
      </td>
      <% 
         }
         %>
   </tr>
   <%	
      }
      
      %>
   <tr>
      <td colspan="3" bgcolor="yellow">
         <div align="center">
            <%
               for(int i=1;i<=pageCount;i++){
               	%>
            <a href="showdoctorsClServlet?type=fenye&pageNow=<%=i %>">=<%=i %>=</a>
            <%
               }
               
                %>
         </div>
      </td>
   </tr>
</table>