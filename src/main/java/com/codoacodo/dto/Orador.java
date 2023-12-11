
package com.codoacodo.dto;

import java.time.LocalDate;

/**
 *
 * @author Nicolas
 */
public class Orador extends Persona {
    
    //Definimos variables
    private String tema;
    private LocalDate fechaAlta;
    
    //Constructor
    
    public Orador(){}
    
    //orador con id y timestamp para visualizar registros
    public Orador(long i, String n, String a,String m , String t, LocalDate ld) {
        super(i, n, a, m);
        this.tema = t;
        this.fechaAlta = ld;
    }
    
    //orador sin id para insertar en la db
    public Orador(String n, String a ,String m, String t) {
        super(n,a,m);
        this.tema = t;
    }
    
    
    
    public String getTema() {
        return tema;
    }

    public void setTema(String tema) {
        this.tema = tema;
    }

    public LocalDate getFechaAlta() {
        return fechaAlta;
    }

    public void setFechaAlta(LocalDate fechaAlta) {
        this.fechaAlta = fechaAlta;
    }
    
    //Métodos
    public void exponerCharla() {
        System.out.println("Hola soy Bill Gates y voy a hablar del nuevo orden mundial.");
    }

    public String saludar() {
        String uno = "Hola";
        int numero = 2;
        
        return String.valueOf(numero);
    }
    
    public void inscribirseEnLaConferencia() {
        System.out.println("Datos Ingresados y validados.");
    }
    
    @Override
    public String toString() {
        return "Persona{" + "id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", tema: " + tema + ", fecha:" + fechaAlta + '}';
    }
}