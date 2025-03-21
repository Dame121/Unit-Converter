<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int temp;
	double converted_temp=0.0;
	String from="";
	String to="";
	
	try
	{
		temp=Integer.parseInt(request.getParameter("temperature"));
		from=request.getParameter("from");
		to=request.getParameter("to");
		
		if(from.equals("Celsius") && to.equals("Fahrenheit"))
		{
			converted_temp=((9.0/5.0)*temp)+32.0;
		}
		else if(from.equals("Celsius") && to.equals("Kelvin"))
		{
			converted_temp=temp+273.15;
		}
		else  if(from.equals("Fahrenheit") && to.equals("Celsius"))
		{
			converted_temp=(temp-32.0)*(5.0/9.0);
		}
		else if(from.equals("Fahrenheit") && to.equals("Kelvin"))
		{
			converted_temp=((temp-32)*5.0/9.0)+273.15;
		}
		else if(from.equals("Kelvin") && to.equals("Celsius"))
		{
			converted_temp=temp-273.15;
		}
		else if(from.equals("Kelvin") && to.equals("Fahrenheit"))
		{
			converted_temp= ((temp - 273.15) * 9.0 / 5.0) + 32.0;
		}
		else {
            out.println("<p>Invalid conversion units selected!</p>");
        }
		if(converted_temp!=0.0)
		{
        out.println("<h2>Result of your Calculation</h2>");
        out.println("<p>" + temp + " " + from + " = " + converted_temp + " " + to + "</p><br/>");
		}
        out.println("<a href='index.html'><button>Reset</button></a>");
	}
	catch(Exception e)
	{
		out.println("<p>Invalid values</p>");
	}
	



%>
</body>
</html>