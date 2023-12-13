<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
      <a class="navbar-brand" style="color: black" href="<%=request.getContextPath()%>">Codo a Codo</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" style="color: black" href="<%=request.getContextPath()%>/altaOradores.jsp">Alta</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" style="color: black" href="<%=request.getContextPath()%>/api/ListadoControllerOrador">Listado</a>
        </li>
      </ul>
        <!-- comment 
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
         </div>  -->
    </div>
  </div>
</nav>