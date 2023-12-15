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
         
        <link href="<%=request.getContextPath()%>/css/stylealta.css" rel="stylesheet">
        <title>ALTA ORADORES</title>
        <style>
            #fondo{
                background-image: url(imagenes/imagenes/Oradores.png);
            }
        </style>
    </head>
    <body id="fondo" class="paywall_content">
        
        <main >
            <!-- ACA VA EL NAVBAR  -->
                
                <!--  JSP -->
                <!-- comment
                <section class="border border-primary rounded-4 col-6 mx-auto text-center" style="background-color: aquamarine">
                    <h1 class="text-center my-4">Alta</h1>
                    
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
                </section>   -->
            
                <div class="container">
                            <h1 style="text-align: center; padding: 2%;">INGRESE NUEVO ORADOR</h1>
                            <section>
                            <!--  JSP -->
                            <div id="frmAlta">
                            <form method="post"
                                  action="<%=request.getContextPath()%>/CreateControllerOrador">
                                <div class="Form">
                                  <label for="Nombre" class="form-label">Nombre</label>
                                  <input name="nombre"  type="text" class="form-control" id="txtnombre" placeholder="Nombre" maxlength="50" required>
                                </div>

                                <div class="Form">
                                  <label for="Apellido" class="form-label">Apellido</label>
                                  <input name="apellido" type="text" class="form-control" id="txtapellido" placeholder="Apellido" required>
                                </div>

                                <div class="Form">
                                  <label for="Mail" class="form-label">Mail</label>  
                                  <input name="mail" type="mail" class="form-control" id="txtmail" placeholder="Mail" required >
                                </div>

                                <div class="Form">
                                  <label for="Tema" class="form-label">Tema</label>  
                                  <input name="tema" type="text" class="form-control" id="txttema"  placeholder="Tema" required>
                                </div>

                                <button class="button" id="miBoton">
                                    Dar de alta Orador
                                </button>
                            </form>
                            </div>
                        </section>

                                <footer>
                                     <%@include file="navbar.jsp" %>
                                </footer>  
                    </div>

                </main>


                        <%@include file="footer.jsp" %>
    </body>
</html>
