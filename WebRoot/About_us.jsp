<i><%@page language="java" import="java.util.*,com.aq.model.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'About_us.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/my.css">


  </head>
  
  <body>
  <center>
  
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

int pageCount = ndbb.getPageCount(3);%>
<table width="80%" border="1" align="center">
  <tr>
    <td><div align="center" class="abc"><jsp:include flush="true" page="head.jsp"></jsp:include></div></td>
  </tr>
   <%
  										  	
  			int time=0;
  			for(int i=0;i<3;i++){
   %>
   
  <tr>
  <%
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
    <td height="704" valign="top"><div align="center">
      <table width="100%" border="1" align="center">
        <tr>
          <td width="50%" rowspan="3" align="center" valign="top"><table width="100%" border="1">
            <tr>
              <td style="height: 238px; width: 324px; "><table width="100%" border="1">
                <tr>
                  <td width="45%" rowspan="4"><img src="images/admini.gif" width="178" height="171"></td>
                  <td width="55%" class="abc">Name: <%=ndb.getPeople_Na() %></td>
                </tr>
                <tr>
                  <td class="abc"><%=ndb.getPeople_Wo() %> </td>
                </tr>
                <tr>
                  <td class="abc">Email:<%=ndb.getPeople_Em()%></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
              </table></td>
              <%
              }
               %>
           
            		<% 
  		
  		//judge if it is for the first line
  		
  		if(i==0){
  		
  	%>
  	<%	
  		
  		}
  	}
  		
   %>
  
 
  </tr><tr>
    <td colspan="3" bgcolor="yellow"><div align="center">
    
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
          
      </td></tr></table>
      
    </div>
    
    </td>
  </tr>
  
  <tr>
    <td><div align="center" class="abc"><jsp:include flush="true" page="tail.jsp"></jsp:include></div></td>
  </tr>
</table>
  </center>
  </body>
</html>
</i>