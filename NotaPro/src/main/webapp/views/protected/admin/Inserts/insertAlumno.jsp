<%@page import="controlador.AlumnoController" %>
<%@page import="modelos.Alumno" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.awt.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<jsp:useBean id="beanInsertar" class="controlador.AlumnoController"></jsp:useBean>
<jsp:setProperty name="beanInsertar" property="*"></jsp:setProperty>

<%
    int cedula = Integer.parseInt(request.getParameter("inputCedulaEstudiante"));
    String nombre = request.getParameter("inputNombreEstudiante");
    String generostr = request.getParameter("comboGeneroEstudiante");
    int genero = generostr.equalsIgnoreCase("masculino") ? 0 : 1;
    List<Alumno> alumnos = new ArrayList<>();

    String faculdad = request.getParameter("comboFacultad_Estudiante");
    String tipo_sangre = request.getParameter("comboTipo_sangre_Estudiante");
    String correo = beanInsertar.CrearCorreo(nombre, cedula);
    System.out.println("La cedula es:" + cedula + "   " + "El correo es:" + correo + "  " + "El genero es: " + genero + "  " + "El tipo sanduineo es:" + tipo_sangre);

    try {

        Alumno alumno = new Alumno(cedula, nombre, genero, correo, tipo_sangre, Integer.parseInt(faculdad), LocalDateTime.now());
        boolean insertado = beanInsertar.nuevoAlumno(alumno);
        if (insertado) {
            System.out.println("Nuevo alumno agregado");
            alumnos = beanInsertar.listarAlumnos();
            response.sendRedirect(request.getContextPath() + "/views/protected/admin/alumnoNew.jsp");
            alumnos.forEach(System.out::println);
            return;
        } else {
            System.out.println("No se agrego el alumno");
        }
    } catch (RuntimeException e) {
        System.out.println(e + "   :  " + "error en jsp Insertar");
    }


%>



