package modelos.bean;

import lombok.Data;
import java.sql.Timestamp;

@Data
public class Asignatura {
    private int codigo;
    private String nombre_asignatura;
    private long cedula_profesor;
    private int id_area;
    private Timestamp fecha_creacion;
}