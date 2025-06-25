<%-- 
    Document   : vista_alumno
    Created on : 21/06/2025, 9:43:29 a. m.
    Author     : duvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@include file="../../fragments/menuAlumno.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/AlumnoJS/alumno.js"></script>

<div class="div-contenido">

    <div class="divTitle_subtitle">
        <span class="spanTitle">Gestión formativa</span>
        <span class="spanSubTitle">Administra la información relacionada a tu estudio</span>
    </div>

    <div class="divContenidoAcademico">
        <div class="divbarraBuscar">
            <img src="${pageContext.request.contextPath}/resources/images/GestionFormativaEstudiante/iconFacultad.svg">
            <span>Facultad Ingenieria</span>
            <div class="divInputBuscar">
                <input placeholder="Ingresa el nombre de la asignatura">
                <img src="${pageContext.request.contextPath}/resources/images/search.svg">
            </div>
        </div>
        <div class="divAreaConocimiento">
            <span>Area de conocimiento</span>
            <select>
                <option value="" disabled selected>--Selecciona una area de conocimiento--
                </option>
            </select>
        </div>


        <div class="divContenidoAreas">

            <%

            %>
            <div class="divInfoarea">
                <div class="titleArea"><span class="title">Fisica</span></div>
                <div class="divDocente">
                    <span class="titleDocente">Docente</span>
                    <span>James Smith</span>
                </div>
                <div class="divCalificacion">
                    <span>Calificación</span>
                    <div class="div">
                        <img class="nota"
                             src="${pageContext.request.contextPath}/resources/images/GestionFormativaEstudiante/iconNota.svg">
                        <span>4.4</span>
                        <img class="info"
                             src="${pageContext.request.contextPath}/resources/images/GestionFormativaEstudiante/info.svg">
                        <span class="text">Calificación excelente</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <dialog class="dialog-info-alumno" id="dialog-info-alumno">
        <div class="divInformacionEstudiante">
            <div class="encabezado">
                <div class="divtitle-subtitle">
                    <span class="title">Información personal</span>
                    <span class="subtitle">Consulta tus datos personales y actualízalos en caso de ser necesario.</span>
                </div>
                <button class="btnCerrar" type="button" id="btn-cerrar-info-alumno">
                    <img src="${pageContext.request.contextPath}/resources/images/GestionPersonalEstudiante/cerrar.svg">
                </button>
            </div>

            <form class="formulario">
                <div class="cedula_nombre">
                    <div class="cedula">
                        <span>Cedula</span>
                        <input class="inputCedula" type="number" disabled placeholder="133144">
                    </div>
                    <div class="nombre">
                        <span>Nombre</span>
                        <input class="inputNombre" type="text" disabled placeholder="Pedro Ruiz">

                    </div>
                </div>

                <div class="genero_sangre">
                    <div class="genero">
                        <span>Genero</span>
                        <input class="inputGenero" type="text" disabled placeholder="Masculino">
                    </div>
                    <div class="sangre">
                        <span>Sangre</span>
                        <input class="inputSangre" type="text" disabled placeholder=A+>
                    </div>
                </div>

                <div class="correo_usuario_clave">
                    <div class="correo">
                        <span>Correo electronico</span>
                        <input class="inputCorreo" type="email" placeholder="Pedrui@notapro.edu">
                    </div>

                    <div class="usuario">
                        <span>Usuario</span>
                        <input class="inputUsuario" type="text" placeholder="Pedro913rui">
                    </div>

                    <div class="clave">
                        <span>Clave</span>
                        <input class="inputClave" type="password" placeholder="********">
                    </div>

                    <div class="botonActualizar">
                        <button type="submit">Actualizar</button>
                    </div>
                </div>
            </form>
        </div>
    </dialog>

</div>





