<%-- 
    Document   : auth
    Created on : 10/06/2025, 7:42:33 a. m.
    Author     : SENA
--%>

<%@page import="modelos.Usuario"%>
<%@page import="java.util.Optional"%>
<%@page import="controlador.AuthController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="modelos.bean.Usuario" scope="request">
    <jsp:setProperty name="user" property="*"/>
</jsp:useBean>

<%

    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");

    String accion = request.getParameter("accion");
    if (accion == null || accion.trim().isEmpty()) {
        response.sendRedirect(request.getContextPath() + "/");
        return;
    }

    try {
        AutntrohController servicio = new AuthController();
        
        switch (accion) {
        
            case "salir":
                request.getSession().invalidate();
                response.sendRedirect(request.getContextPath() + "/");
                break;
            case "login":
            
                Optional<Usuario> r = servicio.iniciarSesion(user);
                System.out.println("si");
                System.out.println(r.get());
                break;
            default:
                throw new IllegalArgumentException("Acción no válida: " + accion);
        }
    } catch (Exception e) {
        request.setAttribute("error", "Ocurrió un error: " + e.getMessage());
        request.getRequestDispatcher("/error.jsp").forward(request, response);
    }      
%>
