function checkNum(){
	
	var oper1 = document.getElementById("opt1").value;
	var oper2 = document.getElementById("opt2").value;
	var oper3 = document.getElementById("opt3").value;
	var oper4 = document.getElementById("opt4").value;
	var oper5 = document.getElementById("opt5").value;
	var oper6 = document.getElementById("opt6").value;
	var oper7 = document.getElementById("opt7").value;
	var oper8 = document.getElementById("opt8").value;
	var oper9 = document.getElementById("opt9").value;
	var username = document.getElementById("t2").value;
	
	if(username==""){
		window.alert("Please fill your name");
	   return false;}
	else if(oper1=="N"||oper2=="N"||oper3=="N"||oper4=="N"||oper5=="N"||oper6=="N"||oper7=="N"||oper8=="N"||oper9=="N"){
		window.alert("You Haven't finished the Quiz");
		return false;
	}
}