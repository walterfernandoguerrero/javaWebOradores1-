<%-- 
    Document   : listaOradores
    Created on : 7 dic. 2023, 00:43:50
    Author     : walter
--%>


<%@page import="com.codoacodo.dto.Orador"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es-ar" data-bs-theme="dark">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="head.jsp" %>
        <title>LISTA ORADORES</title>
    </head>
    <body id="listado">
        <%@include file="navbar.jsp" %>
        <h1 style="text-align: center; padding: 1%;">Listado de Oradores Editables</h1>
        <div class="container">
            <!--Prueba de buscador -->
            
            <div style="border: 2px grey solid;padding: 1%;border-radius: 7px">
            <form class="d-flex"	
              action="<%=request.getContextPath()%>/api/BuscarController" 
              method="get">

                      <div class="form-check form-check-inline">
                              <input class="form-check-input" type="radio" name="campo" id="rbtNombre" value="nombre">
                              <label class="form-check-label" for="rbtNombre">Nombre</label>
                      </div>
                       <div class="form-check form-check-inline">
                              <input class="form-check-input" type="radio" name="campo" id="rbtApellido" value="apellido">
                              <label class="form-check-label" for="rbtApellido">Apellido</label>
                      </div>
                       <div class="form-check form-check-inline">
                              <input class="form-check-input" type="radio" name="campo" id="rbtTema" value="tema">
                              <label class="form-check-label" for="rbtTema">Tema</label>
                      </div>


              <input name="clave" class="form-control me-2" type="search" placeholder="Texto Buscado" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Buscar</button>
            </form>
         </div>  
            
                
                <section class="bg-secondary-subtle border rounded-5 m-4 px-2 pt-2 pb-3 col-12 mx-auto text-center">
      <h2 class="my-4">Listado</h2>
      <table class="table table-sm table-striped table-hover border border-success">
                      <thead>
                        <tr>
                          <th scope="col">ID</th>
                          <th scope="col">NOMBRE</th>
                          <th scope="col">Apellido</th>
                          <th scope="col">mail</th>
                          <th scope="col">tema</th>
                          <th scope="col">fecha</th>
                        </tr>
                      </thead>
          <% 
                //codigo java
                //obtener el listado desde el request
                //se guardo bajo el nombre de "listado"
            List<Orador> listado = (List<Orador>)request.getAttribute("listado");
            
           
          %>
        <tbody>
            <%
               
                for( Orador  or : listado) {
                
            %>

             <tr>
                <th scope="row"> <%=or.getId()%> </th>
                <td><%=or.getNombre() %></td>
                <td><%=or.getApellido()%></td>
                <td><%=or.getMail()%></td>
                <td><%=or.getTema()%></td>
                <td><%=or.getFechaAlta()%></td>
                <td>
                  <a class="btn btn-danger" href="<%=request.getContextPath()%>/api/EliminarControllerOrador?id=<%=or.getId()%>" role="button">Eliminar</a> | 
                  <a class="btn btn-secondary" href="<%=request.getContextPath()%>/api/EditarControllerOrador?id=<%=or.getId()%>" role="button">Editar</a>
                </td>
              </tr>
             <%
                  }
             %>

        </tbody>
      </table>
    </section>

                      
            </div>
        
        
        
    </body>
</html>
