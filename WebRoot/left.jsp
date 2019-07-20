<%@ page language="java" import="java.util.*,com.aq.model.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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

<% 
news_beanbo ndbb = new news_beanbo(); 
String s_pageNow = (String)request.getAttribute("abc");
int pageNow=1;
if(s_pageNow!=null){
		
	pageNow=Integer.parseInt(s_pageNow);
}

//default show 1 st page
ArrayList al = ndbb.getNewsByPage(6,pageNow);

//get number of pages

int pageCount = ndbb.getPageCount(6);%>

<table width="100%" border="0">
  <tr>
    <td align="center"><table width="100%" border="0" style="height: 207px;">
      <tr>
        <td bgcolor="#045FB4" style="color:#FFFFFF ;height: 23px; border-radius:10px;"><div align="center" class="abc">  Call-Board  </div></td>
      </tr>
      <%
  			news_bean ndb = new news_bean();  							  	
  			int time=0;
  			
  			if(time>=al.size()){
  			}else{
  			
  			ndb = (news_bean)al.get(time);
  			time++;
  			}		  		
  			%>
      <tr>
        <td><div align="center" class="abc" >
          <marquee direction="up" scrolldelay="100" scrollamount="1" onMouseOver="this.stop()" onMouseOut="this.start()" height="159 width=302"><%=ndb.getNews_Na() %></marquee>
        </div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="center" height="5" bgcolor="#FFFF00">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" class="abc" ><table width="100%" border="0">
      <tr>
        <td bgcolor="#045FB4" style="height: 23px; border-radius:10px; color:#FFFFFF ;"><div align="center" class="abc">Tips</div></td>
      </tr>
     
        <tr>
        <div align="center" class="abc" >
          <td direction="up" scrolldelay="100" scrollamount="1" onMouseOver="this.stop()" onMouseOut="this.start()" height="152 width=302"><%=ndb.getNews_Em() %></td>
        
      
          
        </div>
      </tr>
      <tr><td align="center" height="5" bgcolor="#FFFF00">&nbsp;</td></tr>
    </table></td>
  </tr>
</table>
</body>