package Datos;

import java.sql.*;

public class Conexion {
    
    private String bd;
    private String dsn;
    private Connection cn;
    private Statement s;
    private ResultSet rs;
    private CallableStatement cstmt;
    
    
    public Conexion(){
        
        bd="CampusParty";
        dsn="jdbc:sqlserver://localhost;databaseName=" + bd + ";user=sa;password=123456";
        
    }
    
    public void abrirConexion(){
        
        try{
            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            cn= DriverManager.getConnection(dsn);
            
        
        
        }catch(Exception ex){
            
            System.out.println("Error: " + ex.getMessage());
            
        }
        
        
    }
    
    
    public boolean Insertarcampusero(String id, String nombreCampusero, String ciudad, String serial, String ram, String dd, String marca, String procesador, String nomS, String tipoS, String valorS, String auto, String placa){
        
        try{
            
            int filaguardada;
            
           /* s = cn.createStatement();
           
           filaguardada = s.executeUpdate("Insert into Cliente values('" + ced + "', '" + nom + "')"); */
            
           cstmt = cn.prepareCall("{call insertarcampusero('" + id + "','" + nombreCampusero + "','" + ciudad + "','" + serial + "','" + ram + "','" + dd + "','" + marca + "','" + procesador + "','" + nomS + "','" + tipoS + "','" + valorS + "','" + auto + "','" + placa + "')}");
            
            filaguardada = cstmt.executeUpdate();
           
           //filaguardada = cstmt.executeUpdate();
           
           
           if (filaguardada == 1){
               
               return true;
               
           }else{
               
               return false;
           }
            
            
            
        }catch(Exception ex){
            
            return false;
            
        }
        
    }
    
    public boolean Insertarciudad(String nombreciudad, int habitantes, int universidad){
        
        try{
            
            int filaguardada;
            
           /* s = cn.createStatement();
           
           filaguardada = s.executeUpdate("Insert into Cliente values('" + ced + "', '" + nom + "')"); */
            
           cstmt = cn.prepareCall("{call insertarciudad('" + nombreciudad + "','" + habitantes + "','" + universidad + "')}");
            
            filaguardada = cstmt.executeUpdate();
           
           //filaguardada = cstmt.executeUpdate();
           
           
           if (filaguardada == 1){
               
               return true;
               
           }else{
               
               return false;
           }
            
            
            
        }catch(Exception ex){
            
            return false;
            
        }
        
    }
    
    
    public boolean Insertarequipo(String nombreEquipo, String juego, String plataforma){
        
        try{
            
            int filaguardada;
            
           /* s = cn.createStatement();
           
           filaguardada = s.executeUpdate("Insert into Cliente values('" + ced + "', '" + nom + "')"); */
            
           cstmt = cn.prepareCall("{call insertarequipo('" + nombreEquipo + "','" + juego + "','" + plataforma + "')}");
            
            filaguardada = cstmt.executeUpdate();
           
           //filaguardada = cstmt.executeUpdate();
           
           
           if (filaguardada == 1){
               
               return true;
               
           }else{
               
               return false;
           }
            
            
            
        }catch(Exception ex){
            
            return false;
            
        }
        
    }
    
    
    
    public boolean Insertarpabellon(String nombrepabellon, String tematica, int area, String ubicacion, int capacidad){
        
        try{
            
            int filaguardada;
            
           /* s = cn.createStatement();
           
           filaguardada = s.executeUpdate("Insert into Cliente values('" + ced + "', '" + nom + "')"); */
            
           cstmt = cn.prepareCall("{call insertarpabellon('" + nombrepabellon + "','" + tematica + "','" + area + "','" + ubicacion + "','" + capacidad + "')}");
            
            filaguardada = cstmt.executeUpdate();
           
           
           
           
           if (filaguardada == 1){
               
               return true;
               
           }else{
               
               return false;
           }
            
            
            
        }catch(Exception ex){
            
            return false;
            
        }
        
    }    
     public String ConsultarBD(String ced){
        
        try{
        
        s = cn.createStatement();
        
        
        rs = s.executeQuery ("select * from Campusero where id = '"+ced+"'");
                     
        
        rs.next();
                
        
        return rs.getString(2);
        
                
        }catch(Exception ex){
            
            return null;
            
        }
    }
    
    public void cerrarConexion(){
        
        try{
            
           cn.close();
            
        }catch(Exception e){
            
            System.out.println("Error: "+ e.getMessage());
        }   
    }
}
