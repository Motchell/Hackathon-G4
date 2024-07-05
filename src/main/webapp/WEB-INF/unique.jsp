<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
	<head>
		    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Día</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/style2.css">
	</head>
	<body>
 <div class="container">
        <header class="d-flex justify-content-between align-items-center">
            <img src="img/emblemAccenture.png" alt="Logo">
            <h1>Eventos del día:</h1>
            <a href="#" class="btn btn-custom">Volver al calendario</a>
        </header>
        <div class="row">
            <table class="table table-hover table-custom">
                <thead>
                    <tr>
                        <th>Hora</th>
                        <th>Evento</th>
                        <th>Lugar</th>
                        <th>Tipo</th>
                        <th>Categoria</th>
                        <th>Clasificación</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="calendar" items="${calendarModel}">
                    <tr>
                        <td><c:out value="${calendar.fecha}"></c:out></td> <!--PEND-->
                        <td><c:out value="${calendar.nombre}"></c:out></td>
                        <td><c:out value="${calendar.direccion}"></c:out></td>
                        <td><c:out value="${calendar.tipo}"></c:out></td>
                        <td><c:out value="${calendar.categoria}"></c:out></td>
                        <td><c:out value="${calendar.clasificacion}"></c:out></td>
                        <td>
                            <a class="btn btn-custom" href="/view.jsp">Ver</a>
                        </td>
                    </tr>
                    
                    
                    
                </tbody>
                </c:forEach>
            </table>
        </div>
    </div>


	</body>
</html>