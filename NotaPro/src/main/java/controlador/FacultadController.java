package controlador;

import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import modelos.Bean.Facultad;
import db.database;

public class FacultadController {

    public boolean newFacultad(Facultad facultad) {
        boolean respuesta = false;
        String sqlInsert = "insert into Facultad (codigo_facultad, nombre_facultad,fecha_creacion_facultad) VALUES (?,?,?)";
        try (Connection con = database.getInstancia().getConnection();
             PreparedStatement ps = con.prepareStatement(sqlInsert)){
            ps.setInt(1, facultad.getCodigo_facultad());
            ps.setString(2, facultad.getNombre_facultad());
            ps.setObject(3, facultad.getFecha_creacion_facultad());
            return respuesta = ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println("Error al insertar el facultad" + e.getMessage());
        }
        return respuesta;
    }

    public List<Facultad> listarFacultad() {
        List<Facultad> listaFacultad = new ArrayList<>();
        String query = "select * from Facultad";

        try (Connection con = database.getInstancia().getConnection();
             PreparedStatement ps = con.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Facultad faculty = new Facultad(rs.getInt("codigo_facultad"), rs.getString("nombre_facultad"), rs.getObject("fecha_creacion_facultad", LocalDateTime.class));
                listaFacultad.add(faculty);
            }
        } catch (SQLException e) {
            System.out.println("Error al consultar el facultad" + e.getMessage());
        }
        return listaFacultad;
    }


}
