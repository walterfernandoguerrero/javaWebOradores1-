<%-- 
    Document   : altaOradores
    Created on : 10 dic. 2023, 16:17:12
    Author     : walter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es-ar">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@include file="head.jsp" %>
        <title>ALTA ORADORES</title>
    </head>
    <body>
        <main>
            <!-- ACA VA EL NAVBAR  -->
            <%@include file="navbar.jsp" %>
            <div class="container">
                <section class="border border-primary rounded-4 col-6 mx-auto text-center" style="background-color: aquamarine">
                    <h1 class="text-center my-4">Alta</h1>
                    <!--  JSP -->
                    <form method="post"
                        action="<%=request.getContextPath()%>/CreateControllerOrador">
                        <div class="my-3 mx-3">
                          <input name="nombre"  type="text" class="form-control" id="txtnombre" placeholder="Nombre" maxlength="50">
                        </div>
                        <div class="my-3 mx-3">
                          <input name="apellido" type="text" class="form-control" id="txtapellido" placeholder="Apellido">
                        </div>
                        <div class="my-3 mx-3">
                          <input name="mail" type="mail" class="form-control" id="txtmail" placeholder="Mail" >
                        </div>
                        <div class="my-3 mx-3">
                          <input name="tema" type="text" class="form-control" id="txttema"  placeholder="Tema">
                        </div>
                        <button class="btn btn-primary my-3">
                            Dar de alta Orador
                        </button>
                    </form>
                </section>
            </div>
        </main>
                        <%@include file="footer.jsp" %>
    </body>
</html>
