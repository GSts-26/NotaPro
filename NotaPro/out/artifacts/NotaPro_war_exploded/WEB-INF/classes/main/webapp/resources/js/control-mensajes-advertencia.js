document.addEventListener("DOMContentLoaded", function () {
    const dialog = document.getElementById('confirmar-eliminar');
    const dialog_alumn_eliminado = document.getElementById('dialog-mensaje-alumno-eliminado');
    const btn_cerrar = document.getElementById('btn-cancel');
    const btn_eliminar = document.getElementById('btn-delete');
    const indicadorAlumnoEliminado = document.getElementById('mostrar_alerta_alumno_eliminado');
    let cedula = null;
    document.querySelectorAll('.abrir-alerta').forEach(btn => {
        btn.addEventListener('click', function () {
            cedula = this.dataset.cedula;
            document.getElementById('cedula-seleccionada-alumno').value = cedula;
            dialog.show();
        });
    });
    btn_cerrar.addEventListener('click', (event) => {
        dialog.close();
    });
    btn_eliminar.addEventListener('click', (event) => {
        console.log("Eliminar es:  " + cedula);
        dialog.close();
    });
    if (indicadorAlumnoEliminado && indicadorAlumnoEliminado.dataset.show === "true") {
        dialog_alumn_eliminado.show();
        setTimeout(() => {
            dialog_alumn_eliminado.close();
        }, 2500);
    }
});



