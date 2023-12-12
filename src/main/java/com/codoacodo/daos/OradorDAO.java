
package com.codoacodo.daos;


import static com.codoacodo.connection.Conexion.*;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.codoacodo.dto.Orador;


public class OradorDAO {
    //atributos
     private static final String SQL_SELECT = "SELECT * FROM oradores";
     private static final String SQL_INSERT = "INSERT INTO oradores(nombre, apellido, mail, tema) VALUES (?, ?, ?, ?)";
     private static final String SQL_UPDATE = "UPDATE oradores SET nombre = ?, apellido = ?, mail = ?, tema =?, fecha_alta=? WHERE id_orador = ?";
     private static final String SQL_DELETE = "DELETE FROM oradores WHERE id_orador = ?";
     
     //metodo listar
      public List<Orador> selectOradores() {
        
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        Orador orador = null;
        List<Orador> oradores = new ArrayList();
        
        
        try {
            conn = getConexion();
            stmt = conn.createStatement();
            rs = stmt.executeQuery(SQL_SELECT);
            //Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            while(rs.next()) {
                long idOrador = rs.getLong(1);
                String nombre = rs.getString(2);
                String apellido = rs.getString(3);
                String mail = rs.getString(4);
                String tema = rs.getString(5);
                Date fechaNac = rs.getDate(6);
                
                //----public Orador(long i, String n, String a , String t, LocalDate ld)
                orador = new Orador(idOrador, nombre, apellido,mail, tema, fechaNac.toLocalDate());
                oradores.add(orador);
            }
            /*
        } catch(SQLException | NullPointerException | ClassNotFoundException |
                InstantiationException | IllegalAccessException ex) {
            */
            } catch(SQLException ex) {
                ex.printStackTrace(System.out);
                ex.getMessage();
            
            }
        
        return oradores;
    }
    //agregar Orador
      public int insertarOrador(Orador orador) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_INSERT);
            stmt.setString(1, orador.getNombre());
            stmt.setString(2, orador.getApellido());
            stmt.setString(3, orador.getMail());
            stmt.setString(4, orador.getTema());
            
            registros = stmt.executeUpdate();
        } catch(SQLException ex) {
            ex.printStackTrace(System.out);
        
        }
        return registros;
    }
      
    //editar Orador
    public int actualizarOrador(Orador orador) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        
        try{
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_UPDATE);
            stmt.setString(1, orador.getNombre());
            stmt.setString(2, orador.getApellido());
            stmt.setString(3, orador.getMail());
            stmt.setString(4, orador.getTema());
            stmt.setDate(5, java.sql.Date.valueOf(orador.getFechaAlta()));
            stmt.setLong(6, orador.getId());
            registros = stmt.executeUpdate();
        } catch(SQLException ex) {
                ex.printStackTrace(System.out);
                ex.getMessage();
            
            }
        
        return registros;
    }
    
    public int eliminarOrador(Long id) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        
        try{
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_DELETE);
            stmt.setLong(1, id);
            registros = stmt.executeUpdate();
        }  catch(SQLException ex) {
            ex.printStackTrace(System.out);
        }
        return registros;
    }
    
    
    public Orador obtenerPorId(Long id) {
		String sql = "SELECT * FROM ORADORES WHERE id_orador="+id;
		
		//Connection
		Connection con = getConexion();
	
		//Producto prodFromDb = null;
                Orador orador = null;
		
		//Statement
		try {
			Statement st = con.createStatement();
			
			//resultset
			ResultSet rs = st.executeQuery(sql);
			
			//VIENE UN SOLO REGISTRO!!!
			
			if(rs.next()) {//si existe, hay uno solo
				// rs > sacando los datos
                                /*
				Long idProducto = rs.getLong(1);//tomar la primer columna
				String nombre = rs.getString(2);
				Float precio = rs.getFloat(3);
				java.util.Date fecha = rs.getDate(4);
				String imagen = rs.getString(5);
				String codigo = rs.getString(6);
				String hechoEn = rs.getString(7);
				
				//campos crear un objeto????
				prodFromDb = new Producto(idProducto,nombre,precio,fecha,imagen,codigo,hechoEn);*/
                long idOrador = rs.getLong(1);
                String nombre = rs.getString(2);
                String apellido = rs.getString(3);
                String mail = rs.getString(4);
                String tema = rs.getString(5);
                Date fechaNac = rs.getDate(6);
                
                //----public Orador(long i, String n, String a , String t, LocalDate ld)
                orador = new Orador(idOrador, nombre, apellido,mail, tema, fechaNac.toLocalDate());
			}			
		} catch (SQLException e) {
			// ERRORES
			e.printStackTrace();
		}
		return orador;
	}
     //prueba de buscador
    public List<Orador> buscar(String clave, String campo) {
                String sql;
                 if("nombre".equals(campo)){
                     sql = "SELECT * FROM ORADORES WHERE nombre LIKE '%"+clave+"%' ";
                 }else{
                     if("apellido".equals(campo)){
                     sql = "SELECT * FROM ORADORES WHERE apellido LIKE '%"+clave+"%' ";
                     }else{
                         sql = "SELECT * FROM ORADORES WHERE tema LIKE '%"+clave+"%' ";
                     }
                 } 
		
                
               //String sql = "SELECT * FROM ORADORES WHERE apellido LIKE '%"+clave+"%' ";
		//Connection
		Connection con = getConexion();
		List<Orador> listado = new ArrayList<Orador>();
		//Statement
		try {
			Statement st = con.createStatement();
			
			//resultset
			ResultSet rs = st.executeQuery(sql);
                        
                        while(rs.next()) {
                        long idOrador = rs.getLong(1);
                        String nombre = rs.getString(2);
                        String apellido = rs.getString(3);
                        String mail = rs.getString(4);
                        String tema = rs.getString(5);
                        Date fechaNac = rs.getDate(6);
                
                        //----public Orador(long i, String n, String a , String t, LocalDate ld)
                        Orador orador = new Orador(idOrador, nombre, apellido,mail, tema, fechaNac.toLocalDate());
                        listado.add(orador);
				
			}//while	
		} catch (SQLException e) {
			// ERRORES
			e.printStackTrace();
		}
		
		return listado;
	}
}
