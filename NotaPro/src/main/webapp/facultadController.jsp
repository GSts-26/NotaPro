<%-- 
    Document   : facultadController
    Created on : 14/06/2025, 5:18:25 p. m.
    Author     : diego
--%>

<%@page import="java.util.List"%>
<%@page import="modelos.bean.Facultad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelos.dao.FacultadDAO"%>

<jsp:useBean id="facultad" class="modelos.bean.Facultad" scope="request" >
    <jsp:setProperty name="facultad" property="*"/>
</jsp:useBean>

<%
    FacultadDAO dao = new FacultadDAO();
    String method = request.getMethod();
    switch (method) {
        case "POST":
            System.out.println(facultad.getNombre());
            boolean exito = dao.createFacultad(facultad);
            out.print(exito);
            break;
        case "GET":
            List<Facultad> lista = dao.getAllFacultades();
            request.setAttribute("listaFacultades", lista);
            request.getRequestDispatcher("facultadListFragment.jsp").forward(request, response);
            break;
    }
%>


