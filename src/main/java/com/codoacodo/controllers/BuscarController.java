package com.codoacodo.controllers;

import com.codoacodo.daos.OradorDAO;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.codoacodo.dto.Orador;
//import com.codoacodo.dto.Producto;

@WebServlet("/api/BuscarController")
public class BuscarController extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String clave = req.getParameter("clave");
                String campo = req.getParameter("campo");
                
                System.out.println(campo);
                
                //prueba-------------------------------------------
                OradorDAO dao = new OradorDAO();
                
                
		
                

		List<Orador> listado = dao.buscar(clave,campo);
                
		//grabar el listado en el request para que lo vea la siguiente pagina
		req.setAttribute("listado", listado);
                
                
		
		//ir a la siguiente pagina
		//getServletContext().getRequestDispatcher("/listado.jsp").forward(req, resp);
                //prueba 13/12
                getServletContext().getRequestDispatcher("/listaOradores.jsp").forward(req, resp);
                
              // resp.sendRedirect(req.getContextPath()+"/api/ListadoControllerOrador");
	}
}

