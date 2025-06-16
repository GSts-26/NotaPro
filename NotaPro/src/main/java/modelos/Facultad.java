package modelos;
import lombok.Data;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Facultad {

    private int codigo_facultad;
    private String nombre_facultad;
    private LocalDateTime fecha_creacion_facultad= LocalDateTime.now();


}
