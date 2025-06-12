<%-- 
    Document   : facultad.jsp
    Created on : 9/06/2025, 7:53:20 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../fragments/menu.jsp" %>

<div class="contenido">
    <div class="panel-izquierdo">
        <h2 class="seccion-titulo">Listado de Facultades</h2>
        <div class="buscador">
            <input type="text" placeholder="Buscar por nombre o código...">
        </div>

        <div class="lista-facultades">
            <div class="faculty-card">
                <img src="${pageContext.request.contextPath}/resources/images/medicina.png" alt="" height="104">
                <div class="facultad-info">
                    <div class="facultad-name">Facultad De Medicina</div>
                    <div class="codigo">Código-<span style="color: #5DA9D9; font-weight: 580;">FAC001</span></div>
                </div>
                <div class="faculty-actions">
                    <button class="btn btn-view">Ver</button>
                    <button class="btn btn-delete">Eliminar</button>
                </div>
            </div>

            <div class="faculty-card">
                <img src="${pageContext.request.contextPath}/resources/images/ingenieria.png" alt="" height="104">
                <div class="facultad-info">
                    <div class="facultad-name">Facultad De Ingeniería</div>
                    <div class="codigo">Código- <span>FAC002</span></div>
                </div>
                <div class="faculty-actions">
                    <button class="btn btn-view">Ver</button>
                    <button class="btn btn-delete">Eliminar</button>
                </div>
            </div>

            <div class="faculty-card">
                <img src="${pageContext.request.contextPath}/resources/images/ciencia.png" alt="" height="104">
                <div class="facultad-info">
                    <div class="facultad-name">Facultad de Ciencias</div>
                    <div class="codigo">Código- <span>FAC003</span></div>
                </div>
                <div class="faculty-actions">
                    <button class="btn btn-view">Ver</button>
                    <button class="btn btn-delete">Eliminar</button>
                </div>
            </div>
        </div>
    </div>

    <div class="formulario">

        <div class="header">
            <span class="titulo">Nueva Facultad</span>
            <span style="color: #007bff;">ℹ️</span>
        </div>
        <p class="subtitulo">Agrega una nueva facultad a tu sistema</p>

        <form>
            <div class="input">
                <label >Nombre</label>
                <input type="text"  placeholder="Ingresa el nombre...">
            </div>

            <div class="input">
                <label class="label">Color</label>
                <div class="color-paleta">
                    <div class="color-option blue"></div>
                    <div class="color-option purple"></div>
                    <div class="color-option green"></div>
                    <div class="color-option pink"></div>
                    <div class="color-option lavender"></div>
                </div>
            </div>

            <div class="input">
                <label class="label">Icono</label>
                <div class="cargar">
                    <div class="icon-placeholder">📁</div>
                    <p style="font-size: 15px; font-family: inherit; color: #AFADAD;">Arrastra y suelta tu archivo aquí</p>
                </div>
            </div>

            <div class="checkbox">
                <input type="checkbox" id="ai-generate">
                <label style="font-size: 15px; font-family: inherit; color: #AFADAD" for="ai-generate">Generar Utilizando Inteligencia artificial</label>
            </div>

            <button type="submit" class="save-btn">Guardar</button>
        </form>
    </div>
</div>

