<%@ page language="java" import="java.util.*,com.aq.model.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AboutUs.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/my.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	
  </head>
  
 <body topmargin="0" background="images/qiangzhi02.png" style="background-repeat:inherit">
 <% 
people_beanbo ndbb = new people_beanbo();
String s_pageNow = (String)request.getAttribute("abc");
int pageNow=1;
if(s_pageNow!=null){
		
	pageNow=Integer.parseInt(s_pageNow);
}

//default show 1 st page
ArrayList al = ndbb.getPeopleByPage(3,pageNow);

//get number of pages

int pageCount = ndbb.getPageCount(3);
%>

 
    <table width="80%" border="0" align="center">
  <tr>
    <td><div align="center" class="abc"><jsp:include flush="true" page="head.jsp"></jsp:include></div></td>
  </tr>
  <tr>
    <td height="831" valign="top"><div align="center">
      <table width="100%" border="0">
        <tr>
          <td width="50%" height="802" valign="top"><table width="100%" border="0">
            <tr>
              <td>
              <%
              int time=0;
  			for(int i=0;i<3;i++){
  			
  			for(int j=0;j<1;j++){
  people_bean ndb = new people_bean();  
 
  			if(time>=al.size()){
  			
  			ndb.setPeopleId("");
			ndb.setPeople_Na("Not Available");
			ndb.setPeople_Wo("Not Available");
			ndb.setPeople_Em("Not Available");
  			}else{
  			
  			ndb = (people_bean)al.get(time);
  			time++;
  			}		  		
               %>
              
             
              <table width="100%" border="0" style="border-collapse:collapse; border-style:dotted solid dotted dotted; border-width: 0px 1px 0px 0px;">
                <tr>
                  <td width="38%" rowspan="3"><img src="images/admini.gif" width="164" height="162" /></td>
                  <td width="62%" height="54" class="abc">Name:<%=ndb.getPeople_Na() %></td>
                </tr>
                <tr>
                  <td height="54" class="abc"><p>Position:<%=ndb.getPeople_Wo() %></p>
                    </td>
                </tr>
                <tr>
                  <td height="54" class="abc">Email:<%=ndb.getPeople_Em()%></td>
                </tr>
                <tr>
                  <td height="50" colspan="2">&nbsp;</td>
                  </tr>
              </table>
              
              <% 
              }
              
              
              }
              %>
              </td>
            </tr>
            <tr>
              <td></td>
            </tr>
            <tr>
              <td></td>
            </tr>
            <tr>
              <td class="abc"><div align="center">
              
              <%
    for(int i=1;i<=pageCount;i++){
    	%>
    	<a href="showpeopleClServlet?type=fenye&amp;pageNow=<%=i %>">=<%=i %>=</a>
    	
    	<%
    
    }
    
     %>
    
              
               </div></td>
            </tr>
          </table>
            <table width="100%" border="0">
              <tr>
                <td height="70">&nbsp;</td>
              </tr>
            </table>
            <p>&nbsp;</p></td>
          <td width="50%" valign="top"><table width="100%" height="633" border="0">
            <tr>
              <td height="212" colspan="2" class="abc" style="height: 231px; "><p>About Us:</p>
                <p>Our pet hospital was found in 1995. It has been developed into an advanced hospital in the last 20 years.It gathers a lot of top-ranking veterinarians and modern devices.</p>
                <p>Our purpose is to give you and your pet the best and most comfortable service.Welcome the consultation.  </p>
                <p>Hotline:888-888-8888</p></td>
            </tr>
            <tr style="height: 216px; ">
              <td height="116" class="abc" style="height: 220; "><p align="center">You can consult us or make a complaint through Email.</p>
                <p align="center">
                <a href="EmailForm2.jsp">
                Click Here To Send Mail.--&gt; 
                </a></p>
                <p align="center">&nbsp; </p></td>
              <td height="116" class="abc" style="height: 220; "><img src="images/email.jpg" width="240" height="220" /></td>
            </tr>
            <tr>
              <td width="50%" height="107" class="abc">
              <a href="">
              Comment Board --&gt; 
              </a>
              </td>
              <td width="50%" class="abc"><img src="images/weiguan.jpg" width="240" height="220" /></td>
            </tr>
          </table>
            <table width="100%" height="165" border="0">
              <tr>
                <td class="abc">Reserve Function </td>
              </tr>
              <tr>
                <td class="abc">Reserve Function </td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td height="17" colspan="2"><p>&nbsp;</p></td>
          </tr>
      </table>
    </div></td>
  </tr>
  <tr>
    <td><div align="center" class="abc"><jsp:include flush="true" page="tail.jsp"></jsp:include></div></td>
  </tr>
</table>
  </body>
</html>
