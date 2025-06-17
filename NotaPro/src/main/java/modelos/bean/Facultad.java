package modelos.bean;

import java.time.LocalDateTime;
import lombok.Data;

@Data
public class Facultad {
    private Integer codigo;
    private String nombre;
    private LocalDateTime fechaCreacion;
    private String imagenUrl;
}