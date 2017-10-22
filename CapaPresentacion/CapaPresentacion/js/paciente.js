

function addRowDT(data) {//FUNCION PARA AGREGAR UNA FILA
    var tabla = $("#tbl_pacientes").DataTable();

    for (var i = 0; i < data.length; i++) {
        tabla.fnAddData([
            data[i].IdPaciente,
            data[i].Nombres,
            (data[i].ApPaterno + "" + data[i].ApMaterno),
            ((data[i].Sexo == 'M')? "Masculino": "Femenino"),
            data[i].Edad,
            data[i].Direccion,
            ((data[i].Estado == true)? "Activo": "Inactivo")
        ]);
    }
}


function sendDataAjax() {//LLAMARLO POR MEDIO DE AJAX
    $.ajax({
        type: "POST",
        url: "GestionarPaciente.aspx/ListarPacientes",//EL NOMBRE DE LA PAGINA/ Y METODO
        data: {},
        contentType:'application/json; charset=utf-8',
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status + " \n" + xhr.responseText, "\n" + thrownError);
        },
        success: function (data) {// SI ES EXITOSO
            console.log(data.d);
            addRowDT(data.d);
        }
    });
}

//LLAMANDO A LA FUNCION DE AJAX AL CARGAR EL DOCUMENTO
sendDataAjax();