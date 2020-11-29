package Negocio;


import Datos.Conexion;


public class Cliente {
    

    private String nombreEquipo, juego, plataforma;
    private String nombreciudad;
    private int habitantes, universidad;
    private String nombrepabellon, tematica, ubicacion;
    private int area, capacidad;
    private String id, nombreCampusero, ciudad, serial, ram, dd, marca, procesador, nomS, tipoS, valorS, auto, placa;

    public void setNombreEquipo(String nombreEquipo) {
        this.nombreEquipo = nombreEquipo;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNombreCampusero() {
        return nombreCampusero;
    }

    public void setNombreCampusero(String nombreCampusero) {
        this.nombreCampusero = nombreCampusero;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public void setSerial(String serial) {
        this.serial = serial;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public void setDd(String dd) {
        this.dd = dd;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public void setProcesador(String procesador) {
        this.procesador = procesador;
    }

    public void setNomS(String nomS) {
        this.nomS = nomS;
    }

    public void setTipoS(String tipoS) {
        this.tipoS = tipoS;
    }

    public void setValorS(String valorS) {
        this.valorS = valorS;
    }

    public void setAuto(String auto) {
        this.auto = auto;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public void setNombrepabellon(String nombrepabellon) {
        this.nombrepabellon = nombrepabellon;
    }

    public void setTematica(String tematica) {
        this.tematica = tematica;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    public void setJuego(String juego) {
        this.juego = juego;
    }

    public void setPlataforma(String plataforma) {
        this.plataforma = plataforma;
    }

    public void setNombreciudad(String nombreciudad) {
        this.nombreciudad = nombreciudad;
    }

    public void setHabitantes(int habitantes) {
        this.habitantes = habitantes;
    }

    public void setUniversidad(int universidad) {
        this.universidad = universidad;
    }

    public boolean Insertarteam(){
        
        boolean respuesta;
        
        Conexion co = new Conexion();
        
        co.abrirConexion();
        respuesta = co.Insertarequipo(nombreEquipo, juego, plataforma);
        co.cerrarConexion();
        
        return respuesta;
        
    }

    public boolean Insertarciudad(){
        
        boolean respuesta;
        
        Conexion co = new Conexion();
        
        co.abrirConexion();
        respuesta = co.Insertarciudad(nombreciudad, habitantes, universidad);
        co.cerrarConexion();
        
        return respuesta;
        
    }
    
    public boolean InsertarPabellon(){
        
        boolean respuesta;
        
        Conexion co = new Conexion();
        
        co.abrirConexion();
        respuesta = co.Insertarpabellon(nombrepabellon, tematica, area, ubicacion, capacidad);
        co.cerrarConexion();
        
        return respuesta;
        
    }    
    
    public boolean insertarCampusero(){
        
        boolean respuesta;
        
        Conexion co = new Conexion();
        
        co.abrirConexion();
        respuesta = co.Insertarcampusero(id, nombreCampusero,ciudad,serial, ram, dd, marca, procesador, nomS, tipoS, valorS, auto, placa);
        co.cerrarConexion();
        
        return respuesta;
        
    }
    public void consultar(String id){
        
        Conexion co = new Conexion();
        
        
        co.abrirConexion();
        nombreCampusero = co.ConsultarBD(id);
        co.cerrarConexion();
        
        
    }
    
    
}
