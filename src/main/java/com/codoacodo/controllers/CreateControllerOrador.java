package com.codoacodo.controllers;

import com.codoacodo.daos.OradorDAO;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.codoacodo.dto.Orador;

/*HERENCIA*/
//Create Controller es hijo de :
@WebServlet("/CreateControllerOrador")
public class CreateControllerOrador extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
/*
		String nombre = req.getParameter("nombre");
		String precio = req.getParameter("precio");
		String imagen = req.getParameter("imagen");
		String codigo = req.getParameter("codigo");
		String hechoEn = req.getParameter("hechoEn");
		
		//crear ProductoDAO
		ProductoDAO dao = new ProductoDAO();
		
		//ejecutar el metodo crearProducto(parametros...)
		dao.crearProducto(nombre, Float.parseFloat(precio), imagen, codigo, hechoEn); */
		
		//ctrl+shit+o
		//ir a la siguiente pagina
                
                String nombre = req.getParameter("nombre");
		String apellido = req.getParameter("apellido");
		String mail = req.getParameter("mail");
		String tema = req.getParameter("tema");
                
                Orador nuevoOr = new Orador();
                
                nuevoOr.setNombre(nombre);
                nuevoOr.setApellido(apellido);
                nuevoOr.setMail(mail);
                nuevoOr.setTema(tema);
                
                OradorDAO dao = new OradorDAO();
                
                dao.insertarOrador(nuevoOr);
                
		resp.sendRedirect(req.getContextPath()+"/api/ListadoControllerOrador");
                
                //resp.sendRedirect(req.getContextPath()+"/index.jsp");
                
	}
}
