<%--
  Created by IntelliJ IDEA.
  User: duvan
  Date: 21/06/2025
  Time: 10:02 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/Alumno/alumno.css">
    <title>NotaPro</title>
</head>
<body>
<header class="top-bar">
    <div class="user-notify">
        <img src="${pageContext.request.contextPath}/resources/images/GestionFormativaEstudiante/campana.svg">
        <img src="${pageContext.request.contextPath}/resources/images/GestionFormativaEstudiante/separador-perfil.svg">
        <img src="${pageContext.request.contextPath}/resources/images/GestionFormativaEstudiante/iconEstudiante.svg" width="40" height="40">
        <div>
            <span class="spn-alumn">Alumno</span>
            <span class="top-bar-nombre_alumno">Pedro juarez</span>
        </div>
    </div>
</header>
<nav class="left left-bar">
    <img src="${pageContext.request.contextPath}/resources/images/GestionFormativaEstudiante/iconGestionFormativa.svg">
    <ul class="Menu menu-principal">
        <a href="#vista_alumno"> <img
                src="${pageContext.request.contextPath}/resources/images/GestionFormativaEstudiante/categoria.svg">
            Gestión formativa</a>
        <a href="${pageContext.request.contextPath}/index.jsp"> <img
                src="${pageContext.request.contextPath}/resources/images/GestionFormativaEstudiante/salir.svg"></a>
    </ul>


</nav>


</body>
</html>
