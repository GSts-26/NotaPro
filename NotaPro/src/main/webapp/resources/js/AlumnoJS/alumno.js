



document.addEventListener("DOMContentLoaded", () => {

    const  dialog = document.getElementById("dialog-info-alumno");
    const btn_profile_alumno = document.getElementById('btn-profile-alumno');
    const btn_cerrar = document.getElementById('btn-cerrar-info-alumno');
    btn_profile_alumno.addEventListener('click', (event) => {
        dialog.show();
    })
    btn_cerrar.addEventListener('click', (event) => {
        dialog.close();
    })


})