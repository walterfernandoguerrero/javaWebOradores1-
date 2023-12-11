package com.codoacodo.controllers;

import com.codoacodo.daos.OradorDAO;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.codoacodo.dto.Orador;

import java.time.LocalDate;

@WebServlet("/api/EliminarControllerOrador")
public class EliminarControllerOrador extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
                
                String id= req.getParameter("id");
                
                OradorDAO dao = new OradorDAO();
                
                dao.eliminarOrador(Long.parseLong(id));
                
                resp.sendRedirect(req.getContextPath()+"/api/ListadoControllerOrador");
		
	}
	
	
}

