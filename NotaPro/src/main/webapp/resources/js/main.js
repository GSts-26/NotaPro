document.addEventListener("DOMContentLoaded", async () => {
    await mostrar();

//    funcion de crear una nueva facultad
    document.getElementById("si").addEventListener("click", async function (e) {
        e.preventDefault();
        const form = document.getElementById("formFacultad");
        const enviar = document.getElementById("si");
        const formData = new URLSearchParams(new FormData(document.getElementById("formFacultad")));

        enviar.disabled = true;
        try {
            const response = await fetch("/NotaPro/facultad", {
                method: "POST",
                body: formData
            })

            const result = await response.text();
            alert(result.trim());
            await mostrar();
            form.reset();
        } catch (e) {

        } finally {
            enviar.disabled = false;
        }
    });

//    funcion de mostrar todas las listas
    async function mostrar() {
        try {
            animateDOMChange(async () => {
                const response = await fetch("/NotaPro/facultad", {
                    method: "GET",
                    headers: {
                        "Content-Type": "application/x-www-form-urlencoded"
                    },
                });
                const html = await response.text();
                document.getElementById("lista").innerHTML = html.trim();
            });
        } catch (error) {
            console.error("Error al obtener las facultades:", error);
            document.getElementById("lista").innerHTML = "<p>Error al cargar las facultades. Por favor, intente de nuevo más tarde.</p>";
        }
    }

    //funcion de eliminar una facultad
    document.getElementById("eliminar").addEventListener("click", async function (e) {
        e.preventExtensions();

        console.log("aca");
        const facultyCard = this.closest('.faculty-card');
        const facultyId = facultyCard.dataset.id;

        try {
            fetch(`/NotaPro/facultad/${facultyId}`, {
                method: 'DELETE'
            });
            const result = await response.text();
            alert(result.trim);
            await mostrar();
        } catch (e) {

        }

    });

});







