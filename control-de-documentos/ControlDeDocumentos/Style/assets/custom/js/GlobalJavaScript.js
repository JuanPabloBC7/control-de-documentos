/*
//AUTOR: VHF
//REV: 12.08.2016
//INICIO - Sesion a punto de expirar KeepAlive!
*/
var minutos = 13 //Default 13 - Test 2
var PaginaLogout = "/Vista/Login/frmLogin.aspx"

setInterval("Alert_KeepAlive()", minutos * 60000);
var pe = setInterval(Request_KeepAlive, 1000); // Llamar la función cada segundo
var t = 0

function Alert_KeepAlive() {
    //$('.modal').modal('hide')
    //$('.modal').removeClass('show');
    //$('.modal').modal('hide');
    openModal("#myModalKeepAlive")
    t = 59;// Cuenta regresiva comienza en segundos

}

function Request_KeepAlive() {
    if (t > 0) {
        t--;
        document.getElementById("time").innerHTML = "<p>La sesión se cerrará automáticamente en <b>" + t + "</b> segundos</p>"; // Actualizamos el contador
        if (t <= 0) {
            location.href = PaginaLogout
            clearInterval(pe); //Detenemos el contador
            t = 0;// Resetea el contador 
        }
    }
}

function ResetKeepAlive() {
    $('#myModalKeepAlive').modal('hide')
    t = 0
}
//FIN - Sesion a punto de expirar KeepAlive!


/*
//AUTOR: VHF
//REV: 27.09.2017
//INICIO - Mostrar Vista Previa de imagen en base64
*/
function VistaPreviaImagen(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {

            var filePreview = document.createElement('img');
            filePreview.id = 'file-preview';
            //e.target.result contents the base64 data from the image uploaded
            filePreview.src = e.target.result;
            filePreview.className = "img-fluid"
            filePreview.runnat = "server"
            console.log(e.target.result);

            var previewZone = document.getElementById('file-preview-zone');
            previewZone.innerHTML = "" //Evita la concatenación de muchas imagenes
            previewZone.appendChild(filePreview);
        }

        reader.readAsDataURL(input.files[0]);
    }
}


// No permite ingresar texto    	
        function NoIngreso(e) {
            return false;
        }

        //Solo números
        function isNumberKey(e) {
            var charCode = (e.which) ? e.which : event.keyCode
            // NOTE: Backspace = 8, Enter = 13, '0' = 48, '9' = 57, '.' = 46
            if ((charCode > 31 && (charCode < 48 || charCode > 57)) || charCode == 8)
                return false;

            return true;
        }
        
        //Numero de 3 enteros con 0-2 decimales y solamente 1 punto.
        function NumCheck(e, field) {
            key = e.keyCode ? e.keyCode : e.which
            // backspace
            if (key == 8) return true
            // 0-9
            if (key > 47 && key < 58) {
                if (field.value == "") return true
                regexp = /.[0-9]{6}$/
                return !(regexp.test(field.value))
            }
            // .
            if (key == 46) {
                if (field.value == "") return false
                regexp = /^[0-9]+$/
                return regexp.test(field.value)
            }
            // other key
            return false

        }


        //Permite unicamente el ingreso de caracteres indicados.
        function TextoConEspaciosSignosPuntuacion(e) {
            key = e.keyCode || e.which;
            tecla = String.fromCharCode(key).toLowerCase();
            letras = "aábcdeéfghiíjklmnñoópqrstuúvwxyz0123456789_-.,;´()' ";
            especiales = [8];//Backspace --- e.keycode

            tecla_especial = false
            for (var i in especiales) {
                if (key == especiales[i]) {
                    tecla_especial = true;
                    break;
                }
            }

            if (letras.indexOf(tecla) == -1 && !tecla_especial)
                return false;
        }

        //Permite unicamente el ingreso de caracteres indicados.
        function EmailRestrictiva(e) {
            key = e.keyCode || e.which;
            tecla = String.fromCharCode(key).toLowerCase();
            letras = "abcdefghijklmnñopqrstuvwxyz0123456789_-.";
            especiales = [8];//Backspace --- e.keycode

            tecla_especial = false
            for (var i in especiales) {
                if (key == especiales[i]) {
                    tecla_especial = true;
                    break;
                }
            }

            if (letras.indexOf(tecla) == -1 && !tecla_especial)
                return false;
        }

        //Permite unicamente el ingreso de caracteres indicados.
        function ParametrosEmail(e) {
            key = e.keyCode || e.which;
            tecla = String.fromCharCode(key).toLowerCase();
            letras = "abcdefghijklmnñopqrstuvwxyz0123456789_-.;@";
            especiales = [8];//Backspace --- e.keycode

            tecla_especial = false
            for (var i in especiales) {
                if (key == especiales[i]) {
                    tecla_especial = true;
                    break;
                }
            }

            if (letras.indexOf(tecla) == -1 && !tecla_especial)
                return false;
        }


        //Permite unicamente el ingreso de caracteres indicados.
        function SoloTextoConEspacio(e) {
            key = e.keyCode || e.which;
            tecla = String.fromCharCode(key).toLowerCase();
            letras = "abcdefghijklmnñopqrstuvwxyz0123456789 ";
            especiales = [8];//Backspace --- e.keycode

            tecla_especial = false
            for (var i in especiales) {
                if (key == especiales[i]) {
                    tecla_especial = true;
                    break;
                }
            }

            if (letras.indexOf(tecla) == -1 && !tecla_especial)
                return false;
        }

            //Permite unicamente el ingreso de caracteres indicados.
            function ParametrosFicha(e) {
                key = e.keyCode || e.which;
                tecla = String.fromCharCode(key).toLowerCase();
                letras = "0123456789";
                especiales = [8];//Backspace --- e.keycode

                tecla_especial = false
                for (var i in especiales) {
                    if (key == especiales[i]) {
                        tecla_especial = true;
                        break;
                    }
                }
            }

 

            //Permite unicamente el ingreso de caracteres indicados.
            function ParametrosEstado(e) {
                key = e.keyCode || e.which;
                tecla = String.fromCharCode(key).toLowerCase();
                letras = "01";
                especiales = [8];//Backspace --- e.keycode

                tecla_especial = false
                for (var i in especiales) {
                    if (key == especiales[i]) {
                        tecla_especial = true;
                        break;
                    }
                }

            if (letras.indexOf(tecla) == -1 && !tecla_especial)
                return false;
        }

        //Permite unicamente el ingreso de caracteres indicados.
        function NitRestrictiva(e) {
            key = e.keyCode || e.which;
            tecla = String.fromCharCode(key).toLowerCase();
            letras = "abcdefghijklmnñopqrstuvwxyz0123456789";
            especiales = [8];//Backspace --- e.keycode

            tecla_especial = false
            for (var i in especiales) {
                if (key == especiales[i]) {
                    tecla_especial = true;
                    break;
                }
            }

            if (letras.indexOf(tecla) == -1 && !tecla_especial)
                return false;
        }

        //Permite unicamente el ingreso de caracteres indicados.
        function LetrasNumerosGuion(e) {
            key = e.keyCode || e.which;
            tecla = String.fromCharCode(key).toLowerCase();
            letras = "abcdefghijklmnñopqrstuvwxyz0123456789-";
            especiales = [8];//Backspace --- e.keycode

            tecla_especial = false
            for (var i in especiales) {
                if (key == especiales[i]) {
                    tecla_especial = true;
                    break;
                }
            }

            if (letras.indexOf(tecla) == -1 && !tecla_especial)
                return false;
        }

        //Permite unicamente el ingreso de caracteres indicados.
        function RestrictivaCorrelativos(e) {
            key = e.keyCode || e.which;
            tecla = String.fromCharCode(key).toLowerCase();
            letras = "0123456789-";
            especiales = [8];//Backspace --- e.keycode

            tecla_especial = false
            for (var i in especiales) {
                if (key == especiales[i]) {
                    tecla_especial = true;
                    break;
                }
            }

            if (letras.indexOf(tecla) == -1 && !tecla_especial)
                return false;
        }

        //Permite unicamente el ingreso de NUMEROS Y LA COMA DE SIMBOLO
        function NumeroFichasCV(e) {
            key = e.keyCode || e.which;
            tecla = String.fromCharCode(key).toLowerCase();
            letras = "0123456789,";
            especiales = [8];//Backspace --- e.keycode

            tecla_especial = false
            for (var i in especiales) {
                if (key == especiales[i]) {
                    tecla_especial = true;
                    break;
                }
            }

            if (letras.indexOf(tecla) == -1 && !tecla_especial)
                return false;
        }

        //Permite unicamente el ingreso de caracteres indicados.
        function RestrictivaPartidas(e) {
            key = e.keyCode || e.which;
            tecla = String.fromCharCode(key).toLowerCase();
            letras = "0123456789-";
            especiales = [8];//Backspace --- e.keycode

            tecla_especial = false
            for (var i in especiales) {
                if (key == especiales[i]) {
                    tecla_especial = true;
                    break;
                }
            }

            if (letras.indexOf(tecla) == -1 && !tecla_especial)
                return false;
        }

        //Muestra díalogo de confirmación Delete
        function isDelete() {
            return confirm("¿Esta seguro de eliminar este registro?");
        }

        //Muestra díalogo de confirmación Update
        function isUpdate() {
            return confirm("¿Esta seguro de actualizar este registro?");
        }

        //Muestra díalogo de confirmación Insert
        function isInsert() {
            return confirm("¿Esta seguro de agregar este registro?");
        }


        function openModal(ID) {
            //'#myModal'
            $('.modal-backdrop').remove();
            $(ID).modal({ backdrop: 'static', keyboard: false, show: true });
        }

        function CloseModal_Congelar(ID) {
            //'#myModal'
            $('.modal-backdrop').remove();
            $(ID).modal('hide');
        }

     

        //Muestra div cargando... y deshabilita boton usando una clase css boostrap
        function showLoading(btn, div) {
            document.getElementById(div).style.display = "";
            btn.className = "btn btn-default disabled btn-block";
            btn.value = "Espere...";
            document.getElementById(div).innerHTML = document.getElementById(div).innerHTML;
        }

        //deshabilita boton usando una clase css boostrap
        function showLoadingEspere(btn) {
            btn.className = "btn btn-default btn-block disabled";
            btn.value = "Espere...";
        }

        //Muestra div cargando... y deshabilita boton usando una clase css boostrap
        function showLoadingIcon(btn,div) {
            document.getElementById(div).style.display = "";
            btn.className = "btn btn-default disabled";
            btn.value = "Espere...";
            document.getElementById(div).innerHTML = document.getElementById(div).innerHTML;
        }

       

