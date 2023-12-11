package com.codoacodo.controllers;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codoacodo.daos.OradorDAO;
import com.codoacodo.dto.Orador;
import java.util.ArrayList;
import java.util.Iterator;

@WebServlet("/api/ListadoControllerOrador")
public class ListadoControllerOrador extends HttpServlet {
    
    //este es el metodo...
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//crear la instancia de ProductoDAO
		OradorDAO dao = new OradorDAO();
                
		// List<Orador>listado=new ArrayList();
		//invocar al metodo listarProductos()
		List<Orador> listado = dao.selectOradores();
                
		//grabar el listado en el request para que lo vea la siguiente pagina
		req.setAttribute("listado", listado);
		
		//ir a la siguiente pagina
		getServletContext().getRequestDispatcher("/listaOradores.jsp").forward(req, resp);
	}
    
}
