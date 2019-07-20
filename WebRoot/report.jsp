<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    
<title>My JSP 'report.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
	<!--
		function homePage(){
			window.open("index.jsp","_self");
		}
		
	-->
	</script>
    <style type="text/css">
<!--
.STYLE2 {font-size: 36px}
.STYLE3 {
	font-size: 18px;
	font-weight: bold;
}
.STYLE14 {font-size: 18px; font-family: "Times New Roman", Times, serif; }
.STYLE15 {font-size: 18px}
-->
    </style>
</head>
  
  <body background="images/qiangzhi02.png"> 
  <div align="center" class="STYLE2">THE RESULTS  </div>
  <p align="center">
  <center><b><%String username=request.getParameter("t2");
		out.print("Hi: "+username);%>&nbsp; </b></center> </p>
  <p align="center">You have answered
    <%
  String oper1 = request.getParameter("operator1");
  String oper2 = request.getParameter("operator2");
  String oper3 = request.getParameter("operator3");
  String oper4 = request.getParameter("operator4");
  String oper5 = request.getParameter("operator5");
  String oper6 = request.getParameter("operator6");
  String oper7 = request.getParameter("operator7");
  String oper8 = request.getParameter("operator8");
  String oper9 = request.getParameter("operator9");
 
  double res=0;
 
    
 // if(num1!=null&&num2)
  if(oper1.equals("B")){
  res+=1;
  }
  
   if(oper2.equals("D")){
  res+=1;
  }
  
   if(oper3.equals("D")){
  res+=1;
  }
  
   if(oper4.equals("C")){
  res+=1;
  }
  
   if(oper5.equals("B")){
  res+=1;
  }
  
   if(oper6.equals("C")){
  res+=1;
  }
  
   if(oper7.equals("D")){
  res+=1;
  }
  
   if(oper8.equals("D")){
  res+=1;
  }
  
   if(oper9.equals("C")){
  res+=1;
  }
  
  
  out.println(res);
  
   %>
  questions correctly </p>
  
   <p align="center">
   <%
   if(res<=3){
   out.println("Oops. Try to learn more:(");
   }else if(res<=6){
   out.println("Good job. You can do better!");
   }else if(res<=8){
   out.println("You did Great! Have your own pet right now!");
   }else {
   out.println("Perfect! Are you an expert for keeping pets?");}
   
    %>
   </p>>
  <table width="736" height="713" border="1" align="center">
    <tr>
      <th width="124" height="50" scope="row"><div align="center" class="STYLE3">
        <p align="center">Question Number</p>
        </div></th>
      <td width="368"><div align="center" class="STYLE3">Questions</div></td>
      <td width="222"><div align="center" class="STYLE3">Correct Answer </div></td>
    </tr>
    <tr>
      <th height="56" scope="row"><div align="center" class="STYLE15">1</div></th>
      <td><div align="center" class="STYLE14">
        <p>How often should you feed  your dog?</p>
      </div></td>
      <td><div align="center" class="STYLE14">B.Twice a day </div></td>
    </tr>
    <tr>
      <th height="66" scope="row"><div align="center" class="STYLE15">2</div></th>
      <td><div align="center" class="STYLE14">
        <p>Your dog is giving you a  direct stare whilst growling what is this a sign of?</p>
      </div></td>
      <td><div align="center" class="STYLE14">D.Being Aggressive </div></td>
    </tr>
    <tr>
      <th height="64" scope="row"><div align="center" class="STYLE15">3</div></th>
      <td><div align="center" class="STYLE14">
        <p>Your ferret keeps biting  you what do you do?</p>
      </div></td>
      <td><div align="center" class="STYLE14">D.Gently scruff him at the back of the neck and say NO </div></td>
    </tr>
    <tr>
      <th height="68" scope="row"><div align="center" class="STYLE15">4</div></th>
      <td><div align="center" class="STYLE14">
        <p>You Have a Syrian hamster  you wonder should you put a friend in for him?</p>
      </div></td>
      <td><div align="center" class="STYLE14">C.No hamster like to live by themselves </div></td>
    </tr>
    <tr>
      <th height="69" scope="row"><div align="center" class="STYLE15">5</div></th>
      <td><div align="center" class="STYLE14">
        <p>You want to buy a pet  gerbil, what would be the best cage for him?</p>
      </div></td>
      <td><div align="center" class="STYLE14">B.A aquarium tank with lots of sawdust </div></td>
    </tr>
    <tr>
      <th height="71" scope="row"><div align="center" class="STYLE15">6</div></th>
      <td><div align="center" class="STYLE14">
        <p>Which of these foods are  not good for guinea pigs and rabbits?</p>
      </div></td>
      <td><div align="center" class="STYLE14">C.Lettuce</div></td>
    </tr>
    <tr>
      <th height="76" scope="row"><div align="center" class="STYLE15">7</div></th>
      <td><div align="center" class="STYLE14">
        <p>Your cat is swishing her  tail from side to side really quick when you are stroking her what should you  do?</p>
      </div></td>
      <td><div align="center" class="STYLE14">D.Stop stroking her for a bit </div></td>
    </tr>
    <tr>
      <th height="80" scope="row"><div align="center" class="STYLE15">8</div></th>
      <td><div align="center" class="STYLE14">
        <p>You want to buy a fish,  what is the best thing to keep it in?</p>
      </div></td>
      <td><div align="center" class="STYLE14">D.A tank suitable for the amount of fish you want </div></td>
    </tr>
    <tr>
      <th height="89" scope="row"><div align="center" class="STYLE15">9</div></th>
      <td><div align="center" class="STYLE14">
        <p>You feel you are ready  for a new pet but when you decide you realise you don't know much about this  type of pet should you..</p>
      </div></td>
      <td><div align="center" class="STYLE14">C.Learn first buy later </div></td>
    </tr>
	
  </table>
 
 
        
         
          <input type="button" name="Submit2" onclick="homePage();" value="Return To Home"/>
         
         
          
       
  </font></p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  </body>
</html>
