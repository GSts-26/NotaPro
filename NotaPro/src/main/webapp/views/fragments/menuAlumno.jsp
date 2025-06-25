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
<body class="grid-contenedor">
<header class="top-bar">
    <div class="user-notify">
        <img src="${pageContext.request.contextPath}/resources/images/GestionFormativaEstudiante/campana.svg">
        <img src="${pageContext.request.contextPath}/resources/images/GestionFormativaEstudiante/separador-perfil.svg">
        <button class="btn-alumno-profile" type="submit" id="btn-profile-alumno">

            <img src="${pageContext.request.contextPath}/resources/images/GestionFormativaEstudiante/iconEstudiante.svg"
                 width="40" height="40">
        </button>
        <div>
            <span class="spn-alumn">Alumno</span>
            <span class="top-bar-nombre_alumno">Pedro juarez</span>
        </div>
    </div>
</header>
<div class="div-left-bar">
    <nav class="nav-left-bar">
        <img src="${pageContext.request.contextPath}/resources/images/GestionFormativaEstudiante/iconGestionFormativa.svg"
             width="50" height="50">
        <ul class="menu-principal">
            <a href="#vista_alumno"> <img
                    src="${pageContext.request.contextPath}/resources/images/GestionFormativaEstudiante/categoria.svg"
                    width="30" height="30"></a>
            <a href="${pageContext.request.contextPath}/index.jsp"> <img
                    src="${pageContext.request.contextPath}/resources/images/GestionFormativaEstudiante/salir.svg"
                    width="35" height="35"></a>
        </ul>
    </nav>
</div>

<main class="main">
<%--</body>--%>
</html>
