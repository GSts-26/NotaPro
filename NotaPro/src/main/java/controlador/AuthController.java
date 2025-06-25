/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import db.database;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.Optional;
import modelos.Bean.Usuario;

/**
 *
 * @author SENA
 */
public class AuthController {
    
    public boolean registrarUsuario(Usuario usuario) {
        String sql = "INSERT INTO usuarios (nombre, contrasena, tipo_usuario, referencia_id, fecha_creacion) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = database.getInstancia().getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, usuario.getNombre());
            pstmt.setString(2, usuario.getContrasena()); 
            pstmt.setString(3, usuario.getTipoUsuario().name());
            pstmt.setLong(4, usuario.getReferenciaId());
            pstmt.setObject(5, usuario.getFechaCreacion());

            int affectedRows = pstmt.executeUpdate();
            return affectedRows > 0;

        } catch (SQLException e) {
            System.err.println("Error al registrar usuario: " + e.getMessage());
            return false;
        }
    }
    
      public Optional<Usuario> iniciarSesion(Usuario user) {
        String sqlSelect = "SELECT nombre, contrasena, tipo_usuario, referencia_id, ultimo_login, fecha_creacion FROM usuarios WHERE nombre = ? AND contrasena = ?";
        String sqlUpdateLogin = "UPDATE usuarios SET ultimo_login = ? WHERE nombre = ?";
        Usuario usuario = null;

        try (Connection conn = database.getInstancia().getConnection();
             PreparedStatement pstmtSelect = conn.prepareStatement(sqlSelect);
             PreparedStatement pstmtUpdate = conn.prepareStatement(sqlUpdateLogin)) {

            pstmtSelect.setString(1, user.getNombre());
            pstmtSelect.setString(2, user.getContrasena()); // ¡ADVERTENCIA: Aquí también, se asume contraseña sin hashear!

            ResultSet rs = pstmtSelect.executeQuery();

            if (rs.next()) {
                usuario = new Usuario();
                usuario.setNombre(rs.getString("nombre"));
                usuario.setContrasena(rs.getString("contrasena"));
                usuario.setTipoUsuario(Usuario.TipoUsuario.valueOf(rs.getString("tipo_usuario")));
                usuario.setReferenciaId(rs.getLong("referencia_id"));
                usuario.setUltimoLogin(rs.getObject("ultimo_login", LocalDateTime.class));
                usuario.setFechaCreacion(rs.getObject("fecha_creacion", LocalDateTime.class));

              
                LocalDateTime ahora = LocalDateTime.now();
                pstmtUpdate.setObject(1, ahora);
                pstmtUpdate.setInt(2, rs.getInt("id")); 
                pstmtUpdate.executeUpdate();

                usuario.setUltimoLogin(ahora); 
            }else{
                System.out.println("no hay");
            }
        } catch (SQLException e) {
            System.err.println("Error al iniciar sesión: " + e.getMessage());
           
            usuario = null; 
        }
        return Optional.of(usuario);
    }
}
