<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Tabuada</title>
</head>
<body>
    <h1>Tabuada</h1>
    
    <form method="post" action="tabuada.jsp">
        <label for="numero">Digite um número inteiro:</label>
        <input type="number" name="numero" id="numero" required>
        <input type="submit" value="Calcular">
    </form>
    

       <% 
        if (request.getMethod().equals("POST")) {
            
            int numero = Integer.parseInt(request.getParameter("numero"));
            
            
            out.println("<h2>Tabuada do " + numero + ":</h2>");
            
            for (int i = 1; i <= 10; i++) {
                int resultado = numero * i;
                out.println(numero + " x " + i + " = " + resultado);
            }
            
        }
       %>
</body>
</html>