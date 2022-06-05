/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyecto;

/**
 *
 * @author O S C A R
 */

public class empleado {
    
    private int id;
    private String dni;
    private String nombre; 
    private String clave;
    private int cargo;
    private double salario;
    private int contratado;

    public empleado(int id, String dni, String nombre, String clave, int cargo, double salario, int contratado) {
        this.id = id;
        this.dni = dni;
        this.nombre = nombre;
        this.clave = clave;
        this.cargo = cargo;
        this.salario = salario;
        this.contratado = contratado;
    }
    
    public empleado(int id, String dni, String nombre, String clave, int cargo, double salario) {
        this.id = id;
        this.dni = dni;
        this.nombre = nombre;
        this.clave = clave;
        this.cargo = cargo;
        this.salario = salario;
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public int getCargo() {
        return cargo;
    }

    public void setCargo(int cargo) {
        this.cargo = cargo;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    @Override
    public String toString() {
        return nombre + "  -  " + dni;
    }

    public int getContratado() {
        return contratado;
    }

    public void setContratado(int contratado) {
        this.contratado = contratado;
    }
    
    
    
}
