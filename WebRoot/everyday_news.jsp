<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'everyday_news.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/my.css">
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
  
  <body>
    <center>
 <table width="80%" border="0" align="center">
  <tr>
    <td><div align="center"><jsp:include flush="true" page="head.jsp"></jsp:include></div></td>
  </tr>
  <tr>
    <td><table width="100%" border="0">
      <tr  height="20">
        <td bgcolor="#045FB4" class="abc" style="height: 50px; border-radius:10px; color:#FFFFFF;"><div align="center" >Everday News </div></td>
      </tr>
    </table>
      <table width="90%" border="0" align="center" class="abc">
      <tr>
        <td width="29%" height="375" valign="top"><table width="100%" border="0" align="center">
          <tr>
            <td valign="top" bgcolor="#FFFF00">President's Release : </td>
          </tr>
          <tr>
            <td valign="top" bgcolor="#045FB4" class="abc" style="height: 23px; border-radius:10px; color:#FFFFFF;"><div align="left">Name:White Sugarman </div></td>
          </tr>
          <tr>
            <td valign="top">Email :whitesugar@gmail.com</td>
          </tr>
          <tr>
            <td height="261" valign="top"><img src="images/superman.jpg" width="239" height="252" /></td>
          </tr>
        </table>
          <p>&nbsp; </p></td>
        <td width="71%"><table width="100%" border="0">
          <tr>
            <td bgcolor="#FFFF00">Raising Healthy Dogs </td>
          </tr>
          <tr>
            <td height="561" style="border-collapse:collapse; border-style:dotted dotted dotted solid; border-width: 0px 0px 0px 3px; border-color:#045FB4 ;">
            <p>Whether your dog is a young puppy or an aging senior, ensuring that you attend to all of his or her needs is very important. The ideal health regimen for any dog should encompass the mind, body, and spirit alike. While our animals may not be able to communicate their needs verbally, their bodies and actions certainly offer indicators of what they need. For example, a dog that is sleeping too much or shows no enthusiasm despite a clean bill of health may well just need to go for an invigorating walk or to play a game of fetch with his or her guardian.</p>
              <p><strong>Exercise</strong></p>
              <p>Understand that dogs are by nature very active creatures. So often, people living in small apartments or in urban environments seem to believe that getting a small dog that can remain indoors is a safe and healthy choice. While your dog can survive indoors, it is not going to thrive. Even if you have to walk your puppy down a busy sidewalk or take a drive to the local park, you must be certain that he or she gets plenty of playtime each day. Remember that exercise is important for your dog’s mind and spirit, as well as his or her physical health.</p>
              <p> <strong>Shelter</strong></p>
              <p> When considering shelter, it is also important to think in terms of size. While your small apartment might be okay for a tiny dog, provided he or she gets enough exercise, it is likely not appropriate for a large breed. Understand that dogs need room to run, stretch, and play. Consider the needs of the specific breed of dog before adopting, and ensure that the shelter you provide is large enough for your dog.</p>
              <p>via:http://raisinghealthydogs.com/</p></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="363" valign="top"><table width="100%" border="0">
          <tr>
            <td bgcolor="#FFFF00">Our Success: </td>
          </tr>
          <tr>
            <td bgcolor="#045FB4" class="abc" style="height: 23px; border-radius:10px; color:#FFFFFF;">Pet Name:Happio</td>
          </tr>
          <tr>
            <td>Pet Type: Husky </td>
          </tr>
          <tr>
            <td height="243"><img src="images/husky.jpg" width="236" height="245" /></td>
          </tr>
        </table></td>
        <td valign="top"><table width="100%" border="0">
          <tr>
            <td bgcolor="#FFFF00">Happio recovered from fleas  without surgery </td>
          </tr>
          <tr>
            <td height="280" style="border-collapse:collapse; border-style:dotted dotted dotted solid; border-width: 0px 0px 0px 3px; border-color:#045FB4 ;"><p>Fleas and ticks are certainly undesirable guests on your pets fur, but they are more than just unwelcome creepy crawlies. These tiny passengers can carry serious diseases that can cause profound illness in both pets and people. Want to keep your cats, dogs, and human family healthy? Use a monthly topical flea and tick preventative, vacuum regularly,and always check your pets and yourself after playing with other animals or in grassy fields.</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>Read more at http://dogtime.com/dog-health/general/20268-top-10-most-serious-pet-diseases-list#OCZVrYJHb1EwM7CB.99</p></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td class="abc" bgcolor="#045FB4" style="color:white;border-radius:10px;">Impovement Happening : </td>
        <td>A new mechine for more comprehensive physical examination of pets has been brought to our hospital. </td>
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
