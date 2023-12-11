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
    </head>
    <body>
        <main>
            <!-- ACA VA EL NAVBAR  -->
            <%@include file="navbar.jsp" %>
            <div class="container">
                <section class="border border-primary rounded-4 col-6 mx-auto text-center" style="background-color: aquamarine">
                    <% 
                        Orador orad = (Orador)request.getAttribute("unOrador");
                    %>
                    
                    <h3><%=orad.getId()%></h3>
                    
                    <h1 class="text-center my-4">Modificar Oradores</h1>
                    <!--  JSP -->
                    <form method="post"
                        action="<%=request.getContextPath()%>/api/EditarControllerOrador">
                        <div class="my-3 mx-3">
                            <input name="Id"  type="text" class="form-control" id="txtid" value="<%=orad.getId()%>" maxlength="500" readonly  >
                        </div>
                        <div class="my-3 mx-3">
                          <input name="nombre"  type="text" class="form-control" id="txtnombre" value="<%=orad.getNombre()%>" maxlength="50">
                        </div>
                        <div class="my-3 mx-3">
                          <input name="apellido" type="text" class="form-control" id="txtapellido" value="<%=orad.getApellido()%>">
                        </div>
                        <div class="my-3 mx-3">
                          <input name="mail" type="mail" class="form-control" id="txtmail" value="<%=orad.getMail()%>" >
                        </div>
                        <div class="my-3 mx-3">
                          <input name="tema" type="text" class="form-control" id="txttema"  value="<%=orad.getTema()%>">
                        </div>
                        <div class="my-3 mx-3">
                            <input name="fechaAlta"  type="text" class="form-control" id="txtfechaAlta" value="<%=orad.getFechaAlta()%>" readonly >
                        </div>
                        <button class="btn btn-primary my-3">
                            Editar Orador
                        </button>
                    </form>
                </section>
            </div>
        </main>
                        <%@include file="footer.jsp" %>
    </body>
</html>