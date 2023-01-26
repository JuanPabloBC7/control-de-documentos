function ValidarFoto(btn) {
    "use strict";

    $('.face').remove();

    $('#file-preview').faceDetection({
        complete: function (faces) {

            var hcaras = document.getElementById("Caras")
            hcaras.innerHTML = faces.length
            for (var i = 0; i < faces.length; i++) {
                $('<div>', {
                    'class': 'face',
                    'css': {
                        'position': 'absolute',
                        'left': faces[i].x * faces[i].scaleX + 'px',
                        'top': faces[i].y * faces[i].scaleY + 'px',
                        'width': faces[i].width * faces[i].scaleX + 'px',
                        'height': faces[i].height * faces[i].scaleY + 'px'
                    }
                })
                .insertAfter(this);
            }
            
            var hfFaceCount = document.getElementById('ContentPlaceHolder1_hfFaceCount')
            var hfFaceSrc = document.getElementById('ContentPlaceHolder1_hfFaceSrc')

            hfFaceCount.value = document.getElementById('Caras').innerHTML
            hfFaceSrc.value = document.getElementById('file-preview').src;
            //document.getElementById('ContentPlaceHolder1_hfFaceCount').value = document.getElementById('Caras').innerHTML; document.getElementById('ContentPlaceHolder1_hfFaceSrc').value = document.getElementById('file-preview').src;
        },
        error: function (code, message) {
            alert('Error: ' + message);
        }
    });
};
