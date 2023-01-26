Public Class notifications
  Public Function notificaciones() As DataSet
    Dim ds As DataSet = New DataSet()
    Dim dt As DataTable = New DataTable("")
    Dim row As DataRow
    Dim col As DataColumn

    col = New DataColumn("status")
    dt.Columns.Add(col)
    col = New DataColumn("priority")
    dt.Columns.Add(col)
    col = New DataColumn("anchor")
    dt.Columns.Add(col)
    col = New DataColumn("icon")
    dt.Columns.Add(col)
    col = New DataColumn("title")
    dt.Columns.Add(col)
    col = New DataColumn("notification")
    dt.Columns.Add(col)
    col = New DataColumn("publish_date")
    dt.Columns.Add(col)
    col = New DataColumn("show")
    dt.Columns.Add(col)
    col = New DataColumn("expires")
    dt.Columns.Add(col)

    row = dt.NewRow()
    row("status") = "1"
    row("priority") = "3"
    row("anchor") = "new_toasts"
    row("icon") = "fas fa-comment-alt"
    row("title") = "Notificaciones Toast"
    row("notification") = "<div class=""card card-dark card-outline""><div class=""card-header""><h3 id=""new_toasts"" name=""new_toasts"" class=""card-title""><iclass=""fas fa-comment-alt mr-2""></i>Notificaciones toast y swal</h3><p class=""float-right m-0"">Diciembre 06, 2022</p></div><div class=""card-body p-4""><div class=""row""><div class=""col-sm-12 col-md-12 col-lg-12 text-justify mb-3"">Se han actualizado las notificaciones y ahora puedes verlas con nuevos diseños, cuando hayan advertencias, errores o información que dar.</div></div><div class=""row""><div class=""col-sm-12 col-md-12 col-lg-12 mb-2""><h3 class=""card-title"">Notificaciones Toast Normales</h3></div><div class=""col-sm-12 col-md-12 col-lg-12 d-flex justify-content-between align-items-stretch mb-4""><button type=""button"" class=""btn btn-success btn-block toastsDefaultSuccess"">Éxito</button><button type=""button"" class=""btn btn-info btn-block toastsDefaultInfo"">Información</button><button type=""button"" class=""btn btn-warning btn-block toastsDefaultWarning"">Advertencia</button><button type=""button"" class=""btn btn-danger btn-block toastsDefaultDanger"">Error</button><button type=""button"" class=""btn bg-maroon btn-block toastsDefaultMaroon"">Pregunta</button></div><div class=""col-sm-12 col-md-12 col-lg-12 mb-2""><h3 class=""card-title"">Notificaciones Toastr</h3></div><div class=""col-sm-12 col-md-12 col-lg-12 d-flex justify-content-between align-items-stretch mb-4""><button type=""button"" class=""btn btn-success btn-block toastrDefaultSuccess"">Éxito</button><button type=""button"" class=""btn btn-info btn-block toastrDefaultInfo"">Información</button><button type=""button"" class=""btn btn-danger btn-block toastrDefaultError"">Error</button><button type=""button"" class=""btn btn-warning btn-block toastrDefaultWarning"">Advertencia</button></div><div class=""col-sm-12 col-md-12 col-lg-12 mb-2""><h3 class=""card-title"">Notificaciones Swal</h3></div><div class=""col-sm-12 col-md-12 col-lg-12 d-flex justify-content-between align-items-stretch mb-4""><button type=""button"" class=""btn btn-success btn-block swalDefaultSuccess"">Éxito</button><button type=""button"" class=""btn btn-info btn-block swalDefaultInfo"">Información</button><button type=""button"" class=""btn btn-danger btn-block swalDefaultError"">Error</button><button type=""button"" class=""btn btn-warning btn-block swalDefaultWarning"">Advertencia</button><button type=""button"" class=""btn btn-default btn-block swalDefaultQuestion"">Pregunta</button></div></div></div></div>"
    row("publish_date") = "Diciembre 06, 2022"
    row("show") = "Y"
    row("expires") = "2022/12/16"
    dt.Rows.Add(row)

    row = dt.NewRow()
    row("status") = "0"
    row("priority") = "2"
    row("anchor") = "mejoras_al_sistema"
    row("icon") = "fas fa-comment-dots"
    row("title") = "Texto Avanzado"
    row("notification") = "<li><span class=""fa-li""><i class=""fas fa-comment-dots text-primary""></i></span><strong>Texto Acanzado:</strong> Ahora podras ver el texto avanzado de la forma en la que se almacena. <p style=""text-align: justify;"">Este es un comentario con <b>negrita</b>, <i>cursiva </i>y <u>subrayado</u>, y este es un comentario <font color=""#000000"" style=""""><span style=""background-color: rgb(255, 255, 0);"">resaltado!!!</span></font>. <br /><span class=""text-sm font-italic"">Cambio publicado noviembre 25, 2022</span></p></li>"
    row("publish_date") = "Noviembre 25, 2022"
    row("show") = "Y"
    row("expires") = "2022/12/02"
    dt.Rows.Add(row)

    row = dt.NewRow()
    row("status") = "0"
    row("priority") = "3"
    row("anchor") = "comentarios_avanzados"
    row("icon") = "fas fa-comments"
    row("title") = "Comentarios avanzados"
    row("notification") = "<div class=""card card-primary card-outline""><div class=""card-header""><h3 id=""comentarios_avanzados"" name=""comentarios_avanzados"" class=""card-title""><i class=""fas fa-comments mr-2""></i>Comentarios avanzados</h3><p class=""float-right m-0"">Noviembre 22, 2022</p></div><div class=""card-body p-4""><div class=""row""><div class=""col-sm-12 col-md-12 col-lg-12 text-justify mb-3"">Ahora puedes realizar comentarios con una mejor experiencia que te va a permitir implementar un texto enriquecido bastante liviano pero con las opciones más que suficientes para sorprender a tus lectores. Los comentarios se realizan al momentos de crear, marginar y asignar documentos, y también las encuentras al agregar actividades.</div></div><div class=""row""><div class=""col-sm-12 col-md-12 col-lg-12 mb-3""><div class=""form-group""><label><span class=""text-danger mr-2"">*</span>Comentarios</label><textarea id=""descripcion_avanzados"" class=""form-control""><p style=""text-align: justify;"">Este es un comentario con <b>negrita</b>, <i>cursiva </i>y <u>subrayado</u>, y este es un comentario <font color=""#000000"" style=""""><span style=""background-color: rgb(255, 255, 0);"">resaltado!!!</span></font>.</p></textarea></div></div></div></div></div>"
    row("publish_date") = "Noviembre 22, 2022"
    row("show") = "Y"
    row("expires") = "2022/12/02"
    dt.Rows.Add(row)

    ds.Tables.Add(dt)
    Return ds
  End Function
End Class
