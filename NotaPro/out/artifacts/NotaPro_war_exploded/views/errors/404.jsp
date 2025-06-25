<%-- 
    Document   : error404
    Created on : 20/05/2025, 3:15:25 p. m.
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error 404 - Página no encontrada</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
        }
        
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f8f9fa;
            color: #313131;
            text-align: center;
            padding: 20px;
        }
        
        .error-container {
            max-width: 500px;
        }
        
        .error-header {
            font-size: 5rem;
            font-weight: 700;
            margin-bottom: 20px;
            color: #313131;
        }
        
        .error-title {
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 10px;
        }
        
        .error-message {
            font-size: 1rem;
            color: #6c757d;
            margin-bottom: 30px;
            line-height: 1.5;
        }
        
        .home-link {
            display: inline-block;
            padding: 10px 20px;
            background-color: #313131;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: 580;
            transition: background-color 0.3s;
            font-size: 17px;
        }
        
        .home-link:hover {
            background-color: #1F1F1F;
        }
        
        .title-app {
            font-size: 1.2rem;
            font-weight: 600;
            color: #313131;
            margin-bottom: 30px;
            display: block;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <img src="${pageContext.request.contextPath}/NeoNotes/src/main/webapp/recursos/img/error404.svg" width="400px" alt="Error 404" />
        <span class="title-app">NeoNotes</span>
        <h1 class="error-header">404</h1>
        <h2 class="error-title">Página no encontrada</h2>
        <p class="error-message">Esta página no existe o no tienes acceso a ella.</p>
        <a href="${pageContext.request.contextPath}/" class="home-link">Volver a la página de inicio →</a>
    </div>
</body>
</html>