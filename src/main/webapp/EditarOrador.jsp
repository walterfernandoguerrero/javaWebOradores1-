<%-- 
    Document   : altaOradores
    Created on : 10 dic. 2023, 16:17:12
    Author     : walter
--%>

<%@page import="com.codoacodo.dto.Orador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es-ar">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@include file="head.jsp" %>
        <title>ALTA ORADORES</title>
        <style>
            #fondo1{
                background-image: url(../imagenes/imagenes/Oradores.png);
                background-repeat: no-repeat;
                width: 100%;
                height: 100%;
            }
            #miBoton{
                    margin-left: 5%;
                    padding: 4px;
                    width: 90%;
                    height: 40px;
                    outline: none;
                    cursor: pointer;
                    background: blue;
                    color: white;
                    font-size: 16px;
                    font-weight: 500;
                    border: none;
                    border-radius: 5px;
                }
            #miBoton:hover{
                    background: green;
                }
        </style>
    </head>
    <body >
        <main>
            <!-- ACA VA EL NAVBAR  -->
            <%@include file="navbar.jsp" %>
            <div id="fondo1">
                    <div class="container">
                        <br><!-- comment -->
                        <br><!-- comment -->
                        <section class="border border-primary rounded-4 col-6 mx-auto " style="background-color: aquamarine">
                            <% 
                                Orador orad = (Orador)request.getAttribute("unOrador");
                            %>



                            <h1 class="text-center my-4">Modificar Oradores</h1>
                            <!--  JSP -->
                            <form method="post"
                                action="<%=request.getContextPath()%>/api/EditarControllerOrador">
                                <div class="my-3 mx-3">

                                    <label>Orador con Nro. de ID: <b><%=orad.getId()%></b></label>
                                     <input style="opacity: 0;" name="Id"  type="text" class="form-control" id="txtid" value="<%=orad.getId()%>" maxlength="500" readonly visible="false"  >
                                </div>
                                <div class="my-3 mx-3">
                                    <label><b>NOMBRE:</b></label>
                                    <input name="nombre"  type="text" class="form-control" id="txtnombre" value="<%=orad.getNombre()%>" maxlength="200" required>
                                </div>
                                <div class="my-3 mx-3">
                                    <label><b>APELLIDO:</b></label>
                                  <input name="apellido" type="text" class="form-control" id="txtapellido" value="<%=orad.getApellido()%>" required>
                                </div>
                                <div class="my-3 mx-3">
                                    <label><b>MAIL:</b></label>
                                  <input name="mail" type="mail" class="form-control" id="txtmail" value="<%=orad.getMail()%>" required>
                                </div>
                                <div class="my-3 mx-3">
                                    <label><b>TEMA:</b></label>
                                  <input name="tema" type="text" class="form-control" id="txttema"  value="<%=orad.getTema()%>" required>
                                </div>
                                <div class="my-3 mx-3">
                                    <input style="opacity: 0;" name="fechaAlta"  type="text" class="form-control" id="txtfechaAlta" value="<%=orad.getFechaAlta()%>" readonly >
                                    <label>Fecha de Alta: <b><%=orad.getFechaAlta()%></b></label>
                                </div>
                                <button class="btn btn-primary my-3" id="miBoton">
                                    Editar Orador
                                </button>
                            </form>
                        </section>
                            <br><!-- comment -->
                            <br><!-- comment -->   
                    </div>
            </div>                    
        </main>
                        <%@include file="footer.jsp" %>
    </body>
</html>