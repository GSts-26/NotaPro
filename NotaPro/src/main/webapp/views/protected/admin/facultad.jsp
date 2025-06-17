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

        <div class="lista-facultades" id="lista">

        </div>
    </div>

    <div class="formulario">

        <div class="header">
            <span class="titulo">Nueva Facultad</span>
            <span style="color: #007bff;">ℹ️</span>
        </div>
        <p class="subtitulo">Agrega una nueva facultad a tu sistema</p>

        <form id="formFacultad">
            <div class="input">
                <label >Nombre</label>
                <input type="text"  name="nombre" placeholder="Ingresa el nombre...">
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

            <button type="submit" id="si" class="save-btn">Guardar</button>
        </form>
    </div>
</div>

<script src="../../../resources/js/main.js"></script>

</body>
</html>


