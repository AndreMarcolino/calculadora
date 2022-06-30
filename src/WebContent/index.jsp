<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%
	String resultado = "";
	String mensagem = "";
	try {
		String valora = request.getParameter("valora");
		String valorb = request.getParameter("valorb");
		String calculo = request.getParameter("calculo");
		
		if((valora != null && valorb != null) && (calculo != null)) {
			if(valora.isEmpty() || valorb.isEmpty()) {
				mensagem = "Digite os valores.";
			} else {
				int a = Integer.valueOf(valora);
				int b = Integer.valueOf(valorb);
				
				resultado = "O Resultado é: ";
				if(calculo.equals("Somar")) {
					resultado += a + b;
				} else if(calculo.equals("Subtrair")) {
					resultado += a - b;
				}
			}
		}
	} catch (NumberFormatException e) {
		mensagem = "Valores inválidos";
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Calculadora</title>
    </head>
    <body>
        <form method="post" class="container">
            <div class="valores">
                <label for="valora">Valor A</label><br>
                <input type="text" name="campoa">
            </div>
            <div class="valores">
                <label for="valorb">Valor B</label><br>
                <input type="text" name="campob">
            </div>
            <div class="calculo">
                <input type="submit" name="calculo" value="Somar" />
                <input type="submit" name="calculo" value="Subtrair" />
            </div>
            <div class="texto">
                <%= resultado %>
            </div>
            <div class="texto">
				<%= mensagem %>
            </div>
        </form>
    </body>
</html>