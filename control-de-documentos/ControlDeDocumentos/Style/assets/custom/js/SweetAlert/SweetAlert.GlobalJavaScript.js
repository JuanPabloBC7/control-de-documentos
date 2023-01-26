function sAlert(btn) {
	swal({
	    title: '¿Está seguro?',
	    text: 'Esta acción no se puede revertir',
	    type: 'warning',
		showCancelButton: true,
		confirmButtonClass: "btn-danger",
		confirmButtonText: "Sí, Continuar!",
		cancelButtonText: "No, Cancelar!",
		closeOnConfirm: true,
		closeOnCancel: false
	},
	function (isConfirm) {
	    if (isConfirm) {
	        __doPostBack(btn.name, '');
	        return true;
	    } else {
	        swal("Cancelado", "No se realizó ningún cambio", "info");
	        return false;
		}
	});
}