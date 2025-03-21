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
    int weight = 0;
    double converted_weight = 0;
    String from = "";
    String to = "";

    try {
        weight = Integer.parseInt(request.getParameter("weight"));
        from = request.getParameter("from");
        to = request.getParameter("to");

        if (from.equals("kilogram") && to.equals("gram")) {
            converted_weight = weight * 1000; // Correct logic
        } else if (from.equals("kilogram") && to.equals("milligram")) {
            converted_weight = weight * 1000000; // Corrected multiplication
        } else if (from.equals("gram") && to.equals("kilogram")) {
            converted_weight = weight / 1000.0; // Ensure division gives decimal
        } else if (from.equals("gram") && to.equals("milligram")) {
            converted_weight = weight * 1000; // Correct logic
        } else if (from.equals("milligram") && to.equals("gram")) {
            converted_weight = weight / 1000.0; // Ensure division gives decimal
        } else if (from.equals("milligram") && to.equals("kilogram")) {
            converted_weight = weight / 1000000.0; // Corrected division
        } else {
            out.println("<p>Invalid conversion units selected!</p>");
        }
        out.println("<h2>Result of your Calculation</h2>");
        out.println("<p>" + weight + " " + from + " = " + converted_weight + " " + to + "</p><br/>");
        out.println("<a href='index.html'><button>Reset</button></a>");
    } catch (Exception e) {
        out.println("<p>Please provide values</p>");
    }
%>
</body>
</html>