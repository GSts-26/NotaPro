package modelos.DAO.Admin;


import modelos.Bean.Alumno;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import db.database;

public class AlumnoDao {

    private int mapearGenero(String genero) {
        return "femenino".equalsIgnoreCase(genero) ? 1 : 0;
    }

    public boolean nuevoAlumno(Alumno alumno) {
        boolean respuesta = false;
        String sqlInsert = "insert into alumno " +
                "(cedula_alumno, nombre_alumno, genero_alumno, correo_alumno, tipo_sangre_alumno, facultad_alumno, fecha_creacion_alumno) " +
                "values (?,?,?,?,?,?,?)";
        int genero = mapearGenero(alumno.getGenero_alumno());
        try (Connection conn = database.getInstancia().getConnection();) {
            PreparedStatement ps = conn.prepareStatement(sqlInsert);
            ps.setInt(1, alumno.getCedula_alumno());
            ps.setString(2, alumno.getNombre_alumno());
            ps.setInt(3, genero);
            ps.setString(4, alumno.getCorreo_alumno());
            ps.setString(5, alumno.getTipo_sangre_alumno());
            ps.setInt(6, Integer.parseInt(alumno.getFacultad_alumno()));
            ps.setObject(7, alumno.getFecha_creacion_alumno());
            respuesta = ps.executeUpdate() > 0;
            return respuesta;
        } catch (SQLException e) {
            System.out.println("Error el insertar un nuevo alumno:" + e.getMessage());
        }
        return respuesta;
    }


    public List<Alumno> listarAlumnos() {
        List<Alumno> alumnos = new ArrayList<>();
        String sqlget = "select * from Alumno";
        try (Connection conn = database.getInstancia().getConnection();
             PreparedStatement ps = conn.prepareStatement(sqlget);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Alumno alumno = new Alumno(rs.getInt("cedula_alumno"),
                        rs.getString("nombre_alumno"),
                        String.valueOf(rs.getInt("genero_alumno")),
                        rs.getString("correo_alumno"),
                        rs.getString("tipo_sangre_alumno"),
                        String.valueOf(rs.getInt("facultad_alumno")),
                        rs.getObject("fecha_creacion_alumno", LocalDateTime.class));
                alumnos.add(alumno);
            }
        } catch (SQLException e) {
            System.out.println("Error al consultar alumnos " + e.getMessage());
        }
        return alumnos;
    }

    public boolean eliminarAlumno(int cedula_alumno) {
        boolean respuesta = false;
        String sqlDelete = "delete from Alumno where cedula_alumno = ?";
        try (Connection conn = database.getInstancia().getConnection();) {
            PreparedStatement ps = conn.prepareStatement(sqlDelete);
            ps.setInt(1, cedula_alumno);
            respuesta = ps.executeUpdate() > 0;
            return respuesta;
        } catch (SQLException e) {
            System.out.println("Error al eliminar alumno" + e.getMessage());
        }
        return respuesta;
    }

//    public boolean actualizarAlumno(Alumno alumno){
//        boolean respuesta = false;
//        String sqlUpdate = "update set nombre_alumno=?, genero_alumno=?, correo_alumno=?, tipo_sangre_alumno=? where cedula_alumno=?";

//        return respuesta;
//    }

    public String CrearCorreo(String nombre, int cedula) {
        if (nombre.length() >= 3 && String.valueOf(cedula).length() >= 3) {
            String parteNombre = nombre.substring(0, 3).toLowerCase();
            String parteCedula = String.valueOf(cedula).substring(0, 3);
            return parteNombre + parteCedula + "@notapro.edu";
        }
        return null;
    }


}
