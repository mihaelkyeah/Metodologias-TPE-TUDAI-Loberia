
function eliminar(id, apellido){
  parametros = {"id": id}
  console.log(parametros);
  $.ajax({
    data: parametros,
    url: '..router.php?action=collectors/DELETE/'+id,
    type: 'POST',
    beforeSend: function(){},
    success: function(){
      Swal.fire(
        'Eliminado!',
        'El recolector ' +apellido+ ' fue eliminado de la Base de Datos.',
        'success'
        )
        window. location. reload();
      }

  });

}

function alertDelete(id, nombre, apellido) {
    Swal.fire({
        title: 'Está seguro que desea eliminar a ' +apellido+ ', '  + nombre+ ' ?',
        text: "Se perderá por completo la información de " + nombre,
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Si, deseo borrarlo!'
      }).then((result) => {
        if (result.isConfirmed) {
          eliminar(id, apellido)
        }
      })
}