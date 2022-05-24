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
public class lineaProducto {

    private Producto p;
    private int cantidad;

    public lineaProducto(Producto p, int cantidad) {
        this.p = p;
        this.cantidad = cantidad;
    }

    public Producto getP() {
        return p;
    }

    public void setP(Producto p) {
        this.p = p;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getTotal() {
        int iva = p.getIva();

        switch (iva) {
            case 4:
                return 1.04 * (this.cantidad * this.p.getPrecio());
            case 10:
                return 1.1 * (this.cantidad * this.p.getPrecio());
            case 21:
                return 1.21 * (this.cantidad * this.p.getPrecio());

        }

        return 0;
    }

    public Object[] getLinea() {

        Object[] a = {this.p.getNombre(), this.cantidad, this.getTotal()};
        return a;
    }
}
