
document.addEventListener('DOMContentLoaded', () => {
    const indicador = document.getElementById("mostrar-alerta-agregado")
    const dialog = document.getElementById("alumno-agregado");
    if (indicador && indicador.dataset.show === "true") {
        dialog.show();
        setTimeout(() => {
            dialog.close();
        }, 3000);
    }
})

