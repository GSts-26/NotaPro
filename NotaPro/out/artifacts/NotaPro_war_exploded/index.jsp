<%-- 
    Document   : index.jsp
    Created on : 9/06/2025, 7:17:59 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css"/>
    </head>
    <body>
        <!DOCTYPE html>
    <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Login</title>
        </head>

        <body>
            <div class="login">
                <form  class="formulario" method="post" action="auth?accion=login">
                    <h3>Inicia sesión</h3>
                    <div class="input">
                        <span>Usuario</span>
                        <input type="text" name="" placeholder="Escribe tu usuario">
                    </div>
                    <div class="input">
                        <span>Contraseña</span>
                        <input type="password" placeholder="Escribe tu usuario" name="" id="">
                    </div>
                    <button class="iniciar" type="submit">Iniciar Sesion</button>
                    <div class="info">
                        <span>Olvide mi contraseña</span>
                        <span>Ayuda <img src="img/Arrow - Up Square - Iconly Pro.svg" alt="" srcset=""></span>
                    </div>
                </form>

                <div class="imagen">
                    <img src="${pageContext.request.contextPath}/resources/images/image-removebg-preview (6) 1.svg" alt="">
                    <div class="s">
                        <span>Un paso adelante hacia el desarrollo de nuevos
                            escenarios de educación</span>
                    </div>

                </div>
            </div>
        </body>

    </html>
    <script type="module" src="script.js"></script>
</body>
</html>