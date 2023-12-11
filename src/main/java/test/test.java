
package test;
import com.codoacodo.dto.Orador;
import java.util.ArrayList;
import java.util.List;
import com.codoacodo.daos.OradorDAO;
import java.util.Iterator;

public class test {
    public static void main(String[] args) {
        
        List<Orador>oradores=new ArrayList();
        
        OradorDAO dao = new OradorDAO();
        
        oradores=dao.selectOradores();//mostrar datos 
       //oradores.forEach(System.out::println);
        Iterator<Orador> it = oradores.iterator();
        
        while(it.hasNext()){
            System.out.println(it.next());
        }
        for( Orador  unProducto : oradores) {
            System.out.println(unProducto.getApellido());
        }
        
        Orador unOrador = dao.obtenerPorId(Long.parseLong("4"));
        
        System.out.println(unOrador);
        
    }
}