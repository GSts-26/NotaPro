<%@page import="modelos.DAO.Admin.AlumnoDao" %>
<%@page import="modelos.Bean.Alumno" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.awt.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<jsp:useBean id="alumno" class="modelos.Bean.Alumno" scope="request">
    <jsp:setProperty name="alumno" property="*"/>
</jsp:useBean>

<%
    String opcion = request.getParameter("accion");
    AlumnoDao alumnoDao = new AlumnoDao();
    switch (opcion) {
        case "insertar":
            System.out.println("La cedula es:" + alumno.getCedula_alumno() + "   " + "El correo es:" + alumno.getCorreo_alumno() + "  " + "El genero es: " + alumno.getGenero_alumno()+ "  " + "El tipo sanduineo es:" + alumno.getTipo_sangre_alumno());
            try {
                String correo = alumnoDao.CrearCorreo(alumno.getNombre_alumno(),alumno.getCedula_alumno());
                alumno.setCorreo_alumno(correo);
//                Alumno alumn = new Alumno(cedula, nombre, genero, correo, tipo_sangre, Integer.parseInt(faculdad), LocalDateTime.now());
                boolean insertado = alumnoDao.nuevoAlumno(alumno);
                if (insertado) {
                    System.out.println("Nuevo alumno agregado");
                    session.setAttribute("alumno-insertado", true);
                    response.sendRedirect(request.getContextPath() + "/views/protected/admin/alumnoNew.jsp");
                    return;
                } else {
                    System.out.println("No se agrego el alumno");
                }
            } catch (RuntimeException e) {
                System.out.println(e + "   :  " + "error en jsp Insertar");
            }
            break;
        case "eliminar":
            boolean eliminado = alumnoDao.eliminarAlumno(alumno.getCedula_alumno());
            if (eliminado) {
                session.setAttribute("alumno_eliminado",true);
                System.out.println("El cliente eliminado es : " + alumno.getCedula_alumno());
                response.sendRedirect(request.getContextPath() + "/views/protected/admin/alumnoNew.jsp");
                return;
            }
            break;
        default:
            System.out.println("Accion no reconocida");
            response.sendRedirect(request.getContextPath() + "/main/webapp/views/errors/404.jsp");
            break;
    }


%>



