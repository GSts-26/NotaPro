<%-- 
    Document   : menu.jsp
    Created on : 9/06/2025, 7:19:31 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css" />
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/newAlumno.css"/>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/confirmacion-Eliminar.css">
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mensaje_alumno_agregado.css">
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mensaje_alumno_eliminado.css">
        <title>NotaPro</title>
    </head>

    <body class="grid-contenedor">
        <header class="topbar">
            <div class="marca">
                <img src="${pageContext.request.contextPath}/resources/images/logo.svg" alt="">
                <h3>Nota<strong>Pro</strong></h3>
            </div>
            <section class="fecha">
                <div class="icono-date">
                    <img src="${pageContext.request.contextPath}/resources/images/date.svg" alt="">
                </div>
                <div class="date-texto">
                    <span>Año Academico</span>
                    <span>2024 / 2025</span>
                </div>
                <img src="${pageContext.request.contextPath}/resources/images/up.svg" alt="">
            </section>
            <nav class="acciones">
                <button class="btn-configuracion" aria-label="Configuración">
                    <img src="${pageContext.request.contextPath}/resources/images/Plus.svg" alt="Configuración">
                </button>
                <button class="btn-notificacion" aria-label="Notificaciones">
                    <img src="${pageContext.request.contextPath}/resources/images/Notification.svg" alt="Notificaciones">
                </button>
                <button class="btn-configuracion" aria-label="Configuración">
                    <img src="${pageContext.request.contextPath}/resources/images/Setting.svg" alt="Configuración">
                </button>


                <span class="separador" aria-hidden="true">|</span>

                <div class="perfil-usuario">
                    <img src="${pageContext.request.contextPath}/resources/images/user-admin.svg" alt="Foto de perfil" class="avatar">
                    <div class="info-usuario">
                        <label class="nombre-usuario">Camilo Peña</label>
                        <label class="rol-usuario">Admin</label>
                    </div>
                </div>
            </nav>
        </header>

        <nav class="sidebar">
            <ul class="menu-principal">
                <a class="" href="#home"><svg width="26" height="27" viewBox="0 0 26 27" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M7.696 15.41a3.305 3.305 0 0 1 3.302 3.33v4.432c0 1.833-1.469 3.328-3.302 3.328H3.302C1.482 26.5 0 25.005 0 23.172V18.74c0-1.846 1.482-3.33 3.302-3.33zm15.002 0c1.82 0 3.302 1.484 3.302 3.33v4.432c0 1.833-1.482 3.328-3.302 3.328h-4.394c-1.833 0-3.302-1.495-3.302-3.328V18.74a3.305 3.305 0 0 1 3.302-3.33zM7.696.5c1.833 0 3.302 1.495 3.302 3.33v4.43a3.304 3.304 0 0 1-3.302 3.328H3.302C1.482 11.59 0 10.107 0 8.261V3.83C0 1.995 1.482.5 3.302.5zm15.002 0C24.518.5 26 1.995 26 3.83v4.43c0 1.846-1.482 3.328-3.302 3.328h-4.394a3.304 3.304 0 0 1-3.302-3.328V3.83c0-1.835 1.469-3.33 3.302-3.33z" fill="#383838" fill-opacity=".5"/></svg></i> Home</a>
                <span class="categoria">Académico</span>
                <a href="#news" class="active"><svg width="31" height="31" viewBox="0 0 31 31" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12.09 7.44a2.79 2.79 0 0 1 2.79-2.79h8.68a2.79 2.79 0 0 1 2.79 2.79v17.98a.93.93 0 0 1-.93.93H12.09zm5.27 3.824a.93.93 0 1 0 0 1.86h3.72a.93.93 0 0 0 0-1.86zm0 6.613a.93.93 0 1 0 0 1.86h3.72a.93.93 0 0 0 0-1.86zm-6.51-7.647H7.44a2.79 2.79 0 0 0-2.79 2.79v12.4c0 .514.416.93.93.93h5.27V21.7H9.307a.93.93 0 0 1 0-1.86h1.543v-3.1H9.307a.93.93 0 0 1 0-1.86h1.543z" fill="currentColor"/></svg> Facultad</a>
                <a href="#contact"><svg width="23" height="27" viewBox="0 0 23 27" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12.678.5c.335 0 .592.273.592.598v4.186c0 2.379 1.944 4.329 4.3 4.342.977 0 1.75.013 2.342.013l.22-.001c.395-.003.928-.012 1.389-.012a.58.58 0 0 1 .579.585v10.452c0 3.224-2.587 5.837-5.78 5.837H6.076C2.73 26.5 0 23.757 0 20.377V6.363C0 3.139 2.6.5 5.805.5zm1.377 16.77H7.053a.966.966 0 0 0-.965.962c0 .533.438.975.965.975h7.002a.977.977 0 0 0 .966-.975.966.966 0 0 0-.966-.962m-2.651-6.5h-4.35a.977.977 0 0 0-.966.975c0 .533.438.962.965.962h4.351a.966.966 0 0 0 .965-.962.977.977 0 0 0-.965-.975m3.742-9.092c0-.56.673-.839 1.058-.434l5.182 5.443a.62.62 0 0 1-.442 1.049c-1.058.004-2.305 0-3.202-.01-1.424 0-2.596-1.184-2.596-2.621z" fill="currentColor" /></svg> Asignatura</a>
                <a href="#contact"><svg width="27" height="27" viewBox="0 0 27 27" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M11.114 5.176q.1.202.129.425l.36 5.347.178 2.688q.003.416.129.815c.215.512.734.837 1.298.815l8.6-.563c.372-.006.731.133.999.387.223.212.367.489.412.787l.015.18c-.355 4.928-3.974 9.038-8.891 10.099s-9.96-1.18-12.39-5.507a10.6 10.6 0 0 1-1.286-4.063 8 8 0 0 1-.082-1.274c-.008-5.283 3.754-9.85 9.02-10.951a1.41 1.41 0 0 1 1.509.815" fill="#383838" fill-opacity=".5"/><path opacity=".4" d="M14.624.584c5.89.15 10.84 4.386 11.793 10.09l-.01.042-.025.062.003.167c-.013.223-.1.437-.247.61-.155.18-.365.303-.598.35l-.141.02-9.921.643a1.18 1.18 0 0 1-.904-.293 1.14 1.14 0 0 1-.372-.694l-.666-9.906a.16.16 0 0 1 0-.103c.009-.274.13-.532.334-.717.204-.186.476-.283.754-.27" fill="#383838" fill-opacity=".5"/></svg> Areas</a>


                <span class="categoria">Usuarios</span>
                <a href="#about" id="impor"><svg width="25" height="27" viewBox="0 0 25 27" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18.518 18.232a1.299 1.299 0 0 1 2.014 1.091V21c0 1.65-1.287 3.417-2.833 3.937l-4.146 1.378c-.728.247-1.91.247-2.625 0l-4.145-1.378c-1.56-.52-2.834-2.287-2.834-3.937v-1.69c0-1.026 1.144-1.65 2.002-1.091l2.677 1.74c1.027.69 2.326 1.028 3.626 1.028s2.599-.338 3.626-1.027z" fill="#383838" fill-opacity=".5"/><path d="m22.61 6.3-7.785-5.108c-1.404-.923-3.717-.923-5.12 0L1.88 6.299c-2.508 1.625-2.508 5.303 0 6.94l2.08 1.352 5.743 3.742c1.404.923 3.717.923 5.12 0l5.706-3.742 1.78-1.17v3.977c0 .532.442.974.975.974a.98.98 0 0 0 .975-.974v-6.394c.52-1.677-.013-3.626-1.65-4.705" fill="#383838" fill-opacity=".5"/></svg> Profesores</a>
                <a href="#news"><svg width="29" height="29" viewBox="0 0 29 29" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M19.66 14.871a9.7 9.7 0 0 0-3.746.737c3.818 1.112 6.513 3.758 6.573 6.84 1.982-.266 4.109-1.003 4.109-3.058 0-2.453-3.178-4.519-6.936-4.519m-.036-1.74h.036a4.667 4.667 0 0 0 4.664-4.664 4.667 4.667 0 0 0-6.114-4.435 7.67 7.67 0 0 1 1.317 4.314c0 1.68-.544 3.239-1.462 4.507a4.5 4.5 0 0 0 1.559.278" fill="#383838" fill-opacity=".5"/><path fill-rule="evenodd" clip-rule="evenodd" d="M11.84 16.852c-4.787 0-8.832 2.616-8.832 5.713 0 3.551 5.04 3.962 8.832 3.962 2.185 0 8.832 0 8.832-3.986 0-3.084-4.044-5.69-8.832-5.69m-.038-2.622h.037a5.884 5.884 0 0 0 5.878-5.878 5.884 5.884 0 0 0-5.878-5.878 5.884 5.884 0 0 0-5.876 5.876 5.8 5.8 0 0 0 1.7 4.148 5.83 5.83 0 0 0 4.14 1.732" fill="#383838" fill-opacity=".5"/></svg> Estudiantes</a>
            </ul>
            <a href="index.html"><svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M3.002 14.402h13.485M6.28 11 3 14.402l3.28 3.402" stroke="#383838" stroke-opacity=".7" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path opacity=".4" d="M11 8.693C11.37 4.517 12.87 3 18.84 3c7.953 0 7.953 2.695 7.953 10.792s0 10.791-7.953 10.791c-5.97 0-7.47-1.516-7.84-5.693" stroke="#000" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"/></svg> Cerrar Sesion</a>
        </nav>

        <main class="main">

<%--    </body>--%>