<%@ page import="java.util.List" %>
<%@ page import="modelos.Alumno" %>
<%@ page import="controlador.AlumnoDao" %>
<%@ page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@include file="../../fragments/menu.jsp" %>
<script src="../../../resources/js/control-mensajes-advertencia.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/control-dialog-alumno-nuevo.js"></script>


<%
    AlumnoDao beanlistar = new AlumnoDao();
    List<Alumno> alumnos = beanlistar.listarAlumnos();
%>

<%--Listado de los alumnos--%>
<div class="contenedorGestionEstudiante">
    <label class="title">Gestion de Estudiantes</label>
    <label class="subtitle">Administra los estudiantes de la universidad</label>
    <div class="buscadorEstudiante">
        <input class="buscar_Estudiante" type="text" placeholder="           Buscar por nombre o cedula....">
        <img src="../../../resources/images/search.svg" class="lupa">
    </div>
    <label class="Recientes">Recientes</label>
</div>

<div class="titulos_Lista_Estudiantes">
    <label class="titles_Lista_nombre_correo_Estudiante">Nombre y correo</label>
    <div class="titles_facultad_Tipo_sangre_Estudiante">
        <label class="titles_Lista_facultad">Facultad</label>
        <label class="titles_Lista_Tipo_sangre">Tipo de sangre</label>
    </div>
</div>

<div class="contenedor-principal-estudiante">
    <div class="DivContenidoEstudiante">
        <% int index = 0;
            for (Alumno alumno : alumnos) {
                double delay = 0.09 * index++; %>
        <div class="listado_Estudiantes" style="--delay: <%=delay%>s">
            <div class="imgEstudiantes">
                <img class="imgEstudiante" src="../../../resources/images/estudiante1.svg" width="53" height="53">
                <div class="nombre_correo_Estudiante">
                    <label class="nombre_Estudiante"><%=alumno.getNombre_alumno()%>
                    </label>
                    <label><%=alumno.getCorreo_alumno()%>
                    </label>

                </div>
            </div>
            <div class="facultad_Tipo_sangre_Estudiante">
                <div class="div-facultad"><label><%=alumno.getFacultad_alumno()%>
                </label></div>
                <div class="div-sangre"><label><%=alumno.getTipo_sangre_alumno()%>
                </label></div>

            </div>

            <div class="delete-alumno">
                <button class="abrir-alerta" data-cedula="<%=alumno.getCedula_alumno()%>">
                    <img src="${pageContext.request.contextPath}/resources/images/delete.svg" width="50" height="50">
                </button>
            </div>
        </div>
        <% } %>
    </div>


    <%--Formulario para agregar un alumno--%>
    <div class="divEstudiante">
        <form action="alumno-controller/alumnoController.jsp" class="formNuevoEstudiante" method="post">
            <input type="hidden" name="accion" value="insertar">
            <label class="title_nuevo_Estudiante">Nuevo estudiante </label>
            <label class="subtitle_nuevo_Estudiante">Agrega un nuevo estudiante a tu sistema </label>

            <div class="cedulaEstudiante">
                <label class="labelCedula">Cedula</label>
                <Input type="number" name="cedula_alumno" placeholder="Ingresa la cedula..." class="cedula_alumno">
            </div>

            <div class="nombreEstudiante">
                <label>Nombre</label>
                <Input name="nombre_alumno" placeholder="Ingresa el nombre..." class="nombre_alumno">
            </div>
            <div class="generoEstudiante">
                <label>Género</label>
                <select name="genero_alumno" id="genero_alumno" class="genero_alumno">
                    <option disabled selected>--Selecciona--</option>
                    <option value="Masculino">Masculino</option>
                    <option value="Femenino">Femenino</option>
                </select>
            </div>

            <div class="facultad_Estudiante">
                <label>Facultad</label>
                <select name="facultad_alumno" id="facultad_alumno" class="facultad_alumno">
                    <option value="" disabled selected>--Selecciona la
                        facultad--
                    </option>
                    <option value="321">321</option>
                </select>
            </div>
            <div class="tipo_sangre_Estudiante">
                <label>Tipo de sangre</label>
                <select name="tipo_sangre_alumno" id="tipo_sangre_alumno"
                        class="tipo_sangre_alumno">
                    <option value="" disabled selected>--Selecciona tu tipo de
                        sangre--
                    </option>
                    <option value="A+">A+</option>
                    <option value="A-">A-</option>
                    <option value="B+">B+</option>
                    <option value="B-">B-</option>
                    <option value="AB+">AB+</option>
                    <option value="AB-">AB-</option>
                    <option value="O+">O+</option>
                    <option value="O-">O-</option>
                </select>
            </div>
            <button type="submit" class="botonNuevoEstudiante">Crear nuevo</button>
        </form>
    </div>
</div>


<%-- Cuadro de confirmacion para eliminar el estudiante--%>
<dialog class="confirmar-eliminar" id="confirmar-eliminar">
    <div class="contenedor-eliminar">
        <div class="content-img-alert">
            <img src="${pageContext.request.contextPath}/resources/images/mensajes/alerta.svg"
                 class="img-alert">
            <span> <strong>Deseas eliminar este alumno?</strong></span>
        </div>
        <div class="content-subtitle">
            <span> Esta acción eliminará el alumno de forma permanente </span>
        </div>
        <div class="Acciones-cancel-ok">
            <button class="btn-cancel" id="btn-cancel">Cancelar</button>
            <form method="post" action="alumno-controller/alumnoController.jsp">
                <input type="hidden" name="accion" value="eliminar">
                <input type="hidden" name="cedula_alumno" class="cedula_alumno"
                       id="cedula-seleccionada-alumno">
                <button class="btn-delete" id="btn-delete">Eliminar</button>
            </form>
        </div>
    </div>
</dialog>


<%--Cuadro de confirmacion cuando se registra un alumno--%>
<%
    Boolean mostrarDialog = (Boolean) session.getAttribute("alumno-insertado");
    if (mostrarDialog != null && mostrarDialog) {
        session.removeAttribute("alumno-insertado");
%>
<div id="mostrar-alerta-agregado" data-show="true"></div>
<%}%>

<dialog id="alumno-agregado" class="alumno-agregado">
    <div class="contenido-alumno-agregado">
        <img src="${pageContext.request.contextPath}/resources/images/mensajes/satisfactorio.svg">
        <span>El alumno fue agregado correctamente</span>
    </div>
</dialog>

<%--Mensaje de confirmacion cuando se elimina un alumno--%>
<%
    Boolean alumnoEliminado = (Boolean) session.getAttribute("alumno_eliminado");
    if (alumnoEliminado != null && alumnoEliminado) {
        session.removeAttribute("alumno_eliminado");
%>
<div id="mostrar_alerta_alumno_eliminado" data-show="true"></div>
<%}%>
<dialog id="dialog-mensaje-alumno-eliminado" class="dialog-mensaje-alumno-eliminado">
    <div class="principal">
        <div class="lateral-bar"></div>
        <div class="center">
            <img src="${pageContext.request.contextPath}/resources/images/mensajes/satisfactorio.svg">
            <span>El alumno fue eliminado correctamente</span>
        </div>
    </div>
</dialog>

