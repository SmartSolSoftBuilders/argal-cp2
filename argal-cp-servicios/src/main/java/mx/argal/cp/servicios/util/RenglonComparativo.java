package mx.argal.cp.servicios.util;

public class RenglonComparativo implements Comparable<RenglonComparativo> {
	
	Integer distancia;
	String descripcion;
	String precio;

	public Integer getDistancia() {
		return distancia;
	}

	public void setDistancia(Integer distancia) {
		this.distancia = distancia;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getPrecio() {
		return precio;
	}

	public void setPrecio(String precio) {
		this.precio = precio;
	}

	@Override
	public int compareTo(RenglonComparativo o) {
		String a=new String(String.valueOf(this.distancia));
	    String b=new String(String.valueOf(o.distancia));
	    return a.compareTo(b);
	}	
}
