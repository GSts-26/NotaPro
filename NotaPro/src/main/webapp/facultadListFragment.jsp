<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="modelos.bean.Facultad"%>

<%
    List<Facultad> lista = (List<Facultad>) request.getAttribute("listaFacultades");
    if (lista != null) {
        for (Facultad f : lista) {
            String codigo = String.format("FAC%03d", f.getCodigo());
%>
<div class="faculty-card" data-id ="<%=f.getCodigo()%>">
        <img src="<%=request.getContextPath()%>/resources/images/medicina.png" alt="" height="104">
        <div class="facultad-info">
            <div class="facultad-name"><%=f.getNombre()%></div>
            <div class="codigo">Código-<span style="color: #5DA9D9; font-weight: 580;"><%=codigo%></span></div>
        </div>
        <div class="faculty-actions">
            <button class="btn btn-view">Ver</button>
            <button class="btn btn-delete" id="eliminar">Eliminar</button>
        </div>
    </div>
<%
        }
    }
%>
