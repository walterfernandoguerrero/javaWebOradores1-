<%@page import="java.util.List"%>
<%@page import="com.codoacodo.dto.Orador"%>
<!DOCTYPE html>
<html lang="es-ar">
	<head>
            <link href="<%=request.getContextPath()%>/css/Styles.css" rel="stylesheet">
           
            <%@include file="head.jsp" %>
            <title>Inicio</title>
            
	</head>
	
        <body id="miInicio">
            <%@include file="navbar.jsp" %>
           
        <header>
 
                <div class="contenedor">
                            <div class="logo">
                                <img src="imagenes/imagenes/codo.png" alt="logo">
                            </div>
                    
                        <nav class="menu-opciones">
                            <ul>
                                <li>
                                    <a href="<%=request.getContextPath()%>/altaOradores.jsp"">Alta</a>
                                </li>

                                <li>
                                    <a href="<%=request.getContextPath()%>/api/ListadoControllerOrador">Listado</a>
                                </li>
                            </ul>
                        </nav>  
                            <div class="controles-usuario">
                                    <ion-icon id="btn-menu" name="menu-outline"></ion-icon>
                            </div>
                            
                </div>
        
        </header>
                       <!-- Sidebar -->
  <nav id="sidebarMenu" class="collapse d-lg-block sidebar collapse bg-white">
      <div class="position-sticky">
      <div class="list-group list-group-flush mx-3 mt-4">
         
         <a href="#" class="list-group-item list-group-item-action py-2 ripple">
          <i class="fas fa-chart-pie fa-fw me-3"></i><span>INICIO</span>
        </a> 
          
        <a href="<%=request.getContextPath()%>/altaOradores.jsp"" class="list-group-item list-group-item-action py-2 ripple" aria-current="true">
          <i class="fas fa-tachometer-alt fa-fw me-3"></i><span>Agregar Orador</span>
        </a>
        <a href="<%=request.getContextPath()%>/api/ListadoControllerOrador" class="list-group-item list-group-item-action py-2 ripple">
          <i class="fas fa-chart-area fa-fw me-3"></i><span>Lista Oradores</span>
        </a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
            class="fas fa-lock fa-fw me-3"></i><span>Otros Proyectos</span>
        </a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
            class="fas fa-chart-line fa-fw me-3"></i><span>Participantes</span>
        </a>
          
          
        <a href="#" class="list-group-item list-group-item-action py-2 ripple">
          <i class="fas fa-chart-pie fa-fw me-3"></i><span>CODO A CODO</span>
        </a>
          
      </div>
    </div>
  </nav>
  <!-- Sidebar -->
            
            <main>
                <<h1>hola</h1>
                <br>
                <br><!-- comment -->
                <br>
                <br>
            </main>
            
            
            <%@include file="footer.jsp" %>
	</body>	
</html>