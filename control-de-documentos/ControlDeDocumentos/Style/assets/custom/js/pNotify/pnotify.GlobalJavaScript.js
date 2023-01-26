function pNotify(t, msg, typ) {
    $(function () {
        var opts = {
            title: t,
            text: msg,
            type: typ
            //styling: "bootstrap3"
            //animate: { animate: true, in_class: 'zoomInLeft', out_class: 'zoomOutRight'},
            //nonblock: {nonblock: true,nonblock_opacity: .2}
        };
        new PNotify(opts);
    });
}

function pNotifyBarTop(t, msg, typ) {
    $(function () {
        var optsTop = {
            title: t,
            text: msg,
            type: typ,
            //styling: "bootstrap3",
            cornerclass: "",
            width: "95%",
            //animate: {animate: true,in_class: 'zoomInLeft',out_class: 'zoomOutRight'
            //}
        };
        new PNotify(optsTop);
    });
}

function pNotifyDesktop(t, msg, typ) {
    $(function () {
        PNotify.desktop.permission();
        var opts = {
            title: t,
            text: msg,
            type: typ,
            desktop: {desktop: true}
        };
        new PNotify(opts);
    });
}

