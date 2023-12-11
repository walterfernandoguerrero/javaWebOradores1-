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

@WebServlet("/api/EditarControllerOrador")
public class EditarControllerOrador extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*
		String id = req.getParameter("id");
		
		//Crear ProductoDAO
		ProductoDAO dao = new ProductoDAO();
		
		//invocar el metodo obtenerPorId(id)
		Producto prodFromDb = dao.obtenerPorId(Long.parseLong(id));
		
		//guardar en el request el producto
		req.setAttribute("producto", prodFromDb); */
		
		//ir a la siguiente pagina
                
                String id= req.getParameter("id");
                
                OradorDAO dao = new OradorDAO();
                
                Orador unOrador = dao.obtenerPorId(Long.parseLong(id));
                
                req.setAttribute("unOrador", unOrador);
                
		getServletContext().getRequestDispatcher("/EditarOrador.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
                String id =req.getParameter("Id");
                String nombre = req.getParameter("nombre");
		String apellido = req.getParameter("apellido");
		String mail = req.getParameter("mail");
		String tema = req.getParameter("tema");
                String fechaAlta = req.getParameter("fechaAlta");
                
   
                
                Orador oradorEdit = new Orador();
                
                oradorEdit.setId(Long.parseLong(id));
                oradorEdit.setNombre(nombre);
                oradorEdit.setApellido(apellido);
                oradorEdit.setMail(mail);
                oradorEdit.setTema(tema);
                oradorEdit.setFechaAlta(LocalDate.parse(fechaAlta));
                
                OradorDAO dao = new OradorDAO();
                
                dao.actualizarOrador(oradorEdit);
                
                resp.sendRedirect(req.getContextPath()+"/api/ListadoControllerOrador");
                //resp.sendRedirect(req.getContextPath()+"/index.jsp");
                

	}
}

