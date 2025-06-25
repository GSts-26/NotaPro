package modelos.Bean;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
//@ToString
public class Alumno {

    private int cedula_alumno;
    private String nombre_alumno;
    private String genero_alumno;
    private String correo_alumno;
    private String tipo_sangre_alumno;
    private String facultad_alumno;
    private LocalDateTime fecha_creacion_alumno = LocalDateTime.now();
}
