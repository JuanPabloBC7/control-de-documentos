<%@ Page Title="Ingreso de Documento" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage/Site.Master" CodeBehind="ID.aspx.vb" Inherits="ControlDeDocumentos.ID" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Link" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="wrapper">
    <div class="content-wrapper" style="margin-left: 0px !important;">
      <!-- CONTENT HEADER -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Control de Documentos</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="../KPIs.aspx">Inicio</a></li>
                <li class="breadcrumb-item active">Ingresar Documento</li>
              </ol>
            </div>
          </div>
        </div>
      </section>

      <!-- CONTENT BODY -->
      <section class="content">
        <div class="container-fluid">
          <div id="Tabs" class="card card-primary card-outline" role="tabpanel" runat="server">
            <div class="card-header">
              <h3 class="card-title">
                <i class="nav-icon fas fa-file-upload text-primary m-2"></i>Ingresar Documento
              </h3>
            </div>
            <div class="card-body">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-sm-12 col-md-6 col-lg-6 mb-3" runat="server">
                    <div class="form-group">
                      <label><span class="text-danger mr-2">*</span>Tipo de documento</label>
                      <select id="tipoDocumento" class="form-control select2" style="width: 100%;" runat="server">
                        <option value="0" selected="selected">Sin información</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-sm-12 col-md-6 col-lg-6 mb-3" runat="server">
                    <label><span class="text-danger mr-2">*</span>Correlativo Remitente</label>
                    <input type="text" id="correlativo" class="form-control" runat="server"/>
                  </div>
                  <div class="col-sm-12 col-md-6 col-lg-6 mb-3" runat="server">
                    <div class="form-group">
                      <label><span class="text-danger mr-2">*</span>Remitente</label>
                      <select id="remitente" class="form-control select2" style="width: 100%;" runat="server">
                        <option value="0" selected="selected">Sin información</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-sm-12 col-md-6 col-lg-6 mb-3" runat="server">
                    <div class="form-group">
                      <label><span class="text-danger mr-2">*</span>Destinatario</label>
                      <select id="destinatario" class="form-control select2" style="width: 100%;" runat="server">
                        <option value="0" selected="selected">Sin información</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-sm-12 col-md-4 col-lg-4 mb-3" runat="server">
                    <div class="form-group">
                      <label><span class="text-danger mr-2">*</span>Fecha de Creación</label>
                      <input type="date" id="fechaCreacion" class="form-control" runat="server"/>
                    </div>
                  </div>
                  <div class="col-sm-12 col-md-4 col-lg-4 mb-3" runat="server">
                    <div class="form-group">
                      <label><span class="text-danger mr-2">*</span>Fecha de Recibido</label>
                      <input type="date" id="fechaRecibido" class="form-control" runat="server"/>
                    </div>
                  </div>
                  <div class="col-sm-12 col-md-4 col-lg-4 mb-3">
                    <div class="form-group">
                      <label>Fecha Requerido</label>
                      <input type="date" id="fechaRequerido" class="form-control" runat="server"/>
                    </div>
                  </div>
                  <div class="col-sm-12 col-md-6 col-lg-6">
                    <div class="form-group">
                      <label for="archivo"><span class="text-danger mr-2">*</span>Cargar Archivo (100MB max)</label> 
                      <div class="custom-file">
                        <input type="file" id="archivo" oninput="showList('MainContent_archivo', 'listadoArchivo');" class="custom-file-input"  accept=".pdf" runat="server">
                        <label class="custom-file-label" for="archivo">Seleccionar un archivo</label>
                      </div>
                      <div>
                        <ul id="listadoArchivo"></ul>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-12 col-md-6 col-lg-6">
                    <div class="form-group">
                      <label for="adjuntos">Cargar Adjuntos (100MB max)</label> 
                      <div class="custom-file">
                        <input type="file" id="adjuntos" oninput="showList('MainContent_adjuntos', 'listadoAdjuntos');" class="custom-file-input"  accept=".xlsx,.xls,.doc,.docx,.pdf,.txt,.png,.jpg,.jpeg" multiple runat="server">
                        <label class="custom-file-label" for="adjuntos">Seleccionar un archivo</label>
                      </div>
                      <div>
                        <ul id="listadoAdjuntos"></ul>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-12 col-md-12 col-lg-12 mb-3" runat="server">
                    <div class="form-group">
                      <label><span class="text-danger mr-2">*</span>Descripción</label>
                      <textarea id="descripcion" class="form-control" rows="7" 
                        placeholder="Descripción breve y consisa del documento." 
                        runat="server"></textarea>
                    </div>
                  </div>
                </div>
                
                <div class="row">
                  <div class="col-sm-12 col-md-12 col-lg-12 text-center">
                    <button type="button" id="guardar" class="btn btn-outline-primary" runat="server"><i class="fas fa-save mr-2"></i>Guardar Información</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Message" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Script" runat="server">
  <script type="text/javascript">
    whoIsActive('lvl1', 'lvl1A', 'ID'); 

    $(function () {
      $('#MainContent_descripcion').summernote({
        placeholder: 'Descripción breve y consisa del documento.',
        width: '100%',
        height: 150,
        toolbar: [
          ['style', ['bold', 'italic', 'underline', 'clear']],
          ['insert', ['table']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['misc', ['fullscreen']] //, 'help']]
        ],
        maxTextLength: 4500,
        tooltip: false
      });
    })

    //$(function () {
    //  const today = new Date();

    //  let day = today.getDate();
    //  let month = today.getMonth() + 1;
    //  let year = today.getFullYear();

    //  if (month < 10) {
    //    month = "0" + month
    //  }
    //  if (day < 10) {
    //    day = "0" + day
    //  }

    //  let currentDate = `${day}-${month}-${year}`;
    //  console.log(currentDate);
    //  if (document.getElementById('MainContent_fechaCreacion').value != null) {
    //    document.getElementById('MainContent_fechaCreacion').value = `${year}-${month}-${day}`;
    //  }
    //  if (document.getElementById('MainContent_fechaRecibido').value != null) {
    //    document.getElementById('MainContent_fechaRecibido').value = `${year}-${month}-${day}`;
    //  }
    //})
  </script>
</asp:Content>
