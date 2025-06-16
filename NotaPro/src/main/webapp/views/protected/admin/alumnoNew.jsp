<%@ page import="java.util.List" %>
<%@ page import="modelos.Alumno" %>
<%@ page import="controlador.AlumnoController" %>
<%@ page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@include file="../../fragments/menu.jsp" %>
<%
    AlumnoController beanlistar = new AlumnoController();
    List<Alumno> alumnos = beanlistar.listarAlumnos();
%>


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
        <% int index=0; for (Alumno alumno : alumnos) {double delay= 0.09 * index++ ;  %>
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
        </div>

        <% } %>
    </div>

    <div class="divEstudiante">
        <form action="Inserts/insertAlumno.jsp" class="formNuevoEstudiante" method="post">
            <label class="title_nuevo_Estudiante">Nuevo estudiante </label>
            <label class="subtitle_nuevo_Estudiante">Agrega un nuevo estudiante a tu sistema </label>

            <div class="cedulaEstudiante">
                <label class="labelCedula">Cedula</label>
                <Input name="inputCedulaEstudiante" placeholder="Ingresa la cedula..." class="inputCedulaEstudiante">
            </div>

            <div class="nombreEstudiante">
                <label>Nombre</label>
                <Input name="inputNombreEstudiante" placeholder="Ingresa el nombre..." class="inputNombreEstudiante">
            </div>
            <div class="generoEstudiante">
                <label>Género</label>
                <select name="comboGeneroEstudiante" id="comboGeneroEstudiante" class="comboGeneroEstudiante">
                    <option value="" disabled selected>--Selecciona--</option>
                    <option value="Masculino">Masculino</option>
                    <option value="Femenino">Femenino</option>
                </select>
            </div>

            <div class="facultad_Estudiante">
                <label>Facultad</label>
                <select name="comboFacultad_Estudiante" id="comboFacultad_Estudiante" class="comboFacultad_Estudiante">
                    <option value="" disabled selected>--Selecciona la
                        facultad--
                    </option>
                    <option value="321">321</option>
                </select>
            </div>
            <div class="tipo_sangre_Estudiante">
                <label>Tipo de sangre</label>
                <select name="comboTipo_sangre_Estudiante" id="comboTipo_sangre_Estudiante"
                        class="comboTipo_sangre_Estudiante">
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

