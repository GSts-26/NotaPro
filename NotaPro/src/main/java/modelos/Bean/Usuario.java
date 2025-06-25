/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelos.Bean;

import java.time.LocalDateTime;
import lombok.Data;

@Data
public class Usuario {

    public enum TipoUsuario {
        ADMINISTRADOR,
        CLIENTE,
        EMPLEADO,
    }
    
    private String nombre;
    private String contrasena;
    private TipoUsuario tipoUsuario;
    private long referenciaId;
    private LocalDateTime ultimoLogin;
    private LocalDateTime fechaCreacion;

}
