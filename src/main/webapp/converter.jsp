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
    // Initialize variables
    int length = 0;
    double convertedLength = 0.0;
    String from = "";
    String to = "";

    try {
        length = Integer.parseInt(request.getParameter("length"));
        from = request.getParameter("from");
        to = request.getParameter("to");

    
        if (from.equals("kilometre") && to.equals("metre")) {
            convertedLength = length * 1000; 
        } else if (from.equals("kilometre") && to.equals("centimetre")) {
            convertedLength = length * 100000; 
        } else if (from.equals("metre") && to.equals("kilometre")) {
            convertedLength = length / 1000.0; 
        } else if (from.equals("metre") && to.equals("centimetre")) {
            convertedLength = length * 100; 
        } else if (from.equals("centimetre") && to.equals("kilometre")) {
            convertedLength = length / 100000.0; 
        } else if (from.equals("centimetre") && to.equals("metre")) {
            convertedLength = length / 100.0; 
        } else {
            out.println("<p>Invalid conversion units selected!</p>");
        }

        out.println("<h2>Result of  your Calculation</h2>");
        out.println("<p>" + length + " " + from + " = " + convertedLength + " " + to + "</p><br/>");
        out.println("<a href='index.html'><button>Reset</button></a>");
        
        
        
        
        
    } catch (Exception e) {
        out.println("<p>Error: Please provide valid input values.</p>");
    }
%>
</body>
</html>