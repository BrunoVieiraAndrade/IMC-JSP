<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	<title>Insert title here</title>
</head>
<body>
<form class="form" action="index.jsp" method="GET">
	 <h1 class="h1">Calculadora IMC</h1>
	 <p class="p">Digite a altura:</p>
	 <input class="input" type="text" name="altura">
	 <p>Digite o peso:</p>
	 <input class="input" type="text" name="peso"><br>
	 <input class="button" type="submit" value="save">
	 <br>

	<%	
	if(request.getParameter("altura") != null && request.getParameter("peso") != null){
		 float altura = Float.parseFloat(request.getParameter("altura"));
		 float peso = Float.parseFloat(request.getParameter("peso"));
		 float result = 0;
		 result = peso / (altura * altura);
		 
		if(result < 17){
			System.out.println("Muito abaixo do peso");
		}else if(result > 17 && result < 18){
			System.out.println("Abaixo do peso");
		}else if (result > 19 && result < 24.99){
			System.out.println("peso normal");
		}else if (result > 25 && result < 29){
			System.out.println("Acima do peso");
		}else if (result > 30 && result < 35){
			System.out.println("Obesidade I");
		}else if (result > 36 && result < 39){
			System.out.println ("Obesidade II");
		}else{
			System.out.println("Acima de 40 Obesidade III - morbida-");
		}
		System.out.println("resultado = "+ result);
	}
	%>
</form>	
</body>
</html>