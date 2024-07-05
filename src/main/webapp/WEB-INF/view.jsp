<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
	<head>
	 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Evento</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/style3.css">
		
	</head>
	<body>
 <div class="container">
        <header class="d-flex justify-content-between align-items-center">
            <img src="img/emblemAccenture.png" alt="Logo">
            <h1>Evento:</h1>
            <a href="#" class="btn btn-custom">Volver al día</a>
        </header>
        <div class="row">
            <div class="col-6 border">
               
                <p>
                    <b>Día y hora: <c:out value="${calendar.fecha}" /></b>
                </p>
                <p>
                    <b>Lugar: <c:out value="${calendar.direccion}" /></b>
                </p>
                <p>
                    <b>Tipo: <c:out value="${calendar.tipo}" /></b>
                </p>
                <p>
                    <b>Categoria: <c:out value="${calendar.categoria}" /></b>
                </p>
                <p>
                    <b>Detalle: <c:out value="${calendar.descripcion}" /> </b>
                </p>
            </div>
        </div>
    </div>
 
	</body>
</html>