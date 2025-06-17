package modelos.dao;

import db.database;
import modelos.bean.Facultad;

import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class FacultadDAO {

    // metodo para crear una facultad
    public boolean createFacultad(Facultad facultad) {
        String sql = "INSERT INTO facultad (nombre_facultad,fecha_creacion_facultad) VALUES (?, ?)";
        try (Connection conn = database.getInstancia().getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {

            LocalDateTime now = LocalDateTime.now();
            Timestamp timestamp = Timestamp.valueOf(now);
            pstmt.setString(1, facultad.getNombre());
            pstmt.setTimestamp(2, timestamp);

            int filas = pstmt.executeUpdate();

            return filas > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // listar pero solo uno por id
    public Facultad getFacultadById(int id) {
        String sql = "SELECT * FROM facultad WHERE id = ?";
        Facultad facultad = null;
        try (Connection conn = database.getInstancia().getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                facultad = new Facultad();
                facultad.setCodigo(rs.getInt("codigo"));
                facultad.setNombre(rs.getString("nombre_facultad"));
                facultad.setFechaCreacion(rs.getTimestamp("fecha_creacion_facultad").toLocalDateTime());
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facultad;
    }

    // traer todas las facultades
    public List<Facultad> getAllFacultades() {
        List<Facultad> facultades = new ArrayList<>();
        String sql = "SELECT * FROM facultad";
        try (Connection conn = database.getInstancia().getConnection(); Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Facultad facultad = new Facultad();
                facultad.setCodigo(rs.getInt("codigo"));
                facultad.setNombre(rs.getString("nombre_facultad"));
                facultad.setFechaCreacion(rs.getTimestamp("fecha_creacion_facultad").toLocalDateTime());
                facultades.add(facultad);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facultades;
    }

    // actualizar facultad
    public boolean updateFacultad(Facultad facultad) {
        String sql = "UPDATE facultad SET nombre_facultad = ? WHERE codigo = ?";
        try (Connection conn = database.getInstancia().getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, facultad.getNombre());
            pstmt.setInt(2, facultad.getCodigo());
           int filas= pstmt.executeUpdate();
           return filas>0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        
    }

    // eliminar facultad
    public boolean deleteFacultad(int id) {
        String sql = "DELETE FROM facultad WHERE id = ?";
        try (Connection conn = database.getInstancia().getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);
            int filas = pstmt.executeUpdate();
            return filas > 1;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
