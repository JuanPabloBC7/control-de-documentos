<%@ Page Title="Notificaciones" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage/Site.Master" CodeBehind="notificaciones.aspx.vb" Inherits="ControlDeDocumentos.notificaciones" %>

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
              <h1>Notificaciones</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="../KPIs.aspx">Inicio</a></li>
                <li class="breadcrumb-item active">Notificaciones</li>
              </ol>
            </div>
          </div>
        </div>
      </section>

      <!-- MAIN CONTENT -->
      <section class="content">
        <div class="row">
          <!-- LEFT -->
          <div class="col-md-3">
            <!-- PRIORITY -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Prioridades</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
              </div>
              <div class="card-body p-0">
                <ul class="nav nav-pills flex-column">
                  <li class="nav-item">
                    <a id="importantlink" onserverclick="importantlink_ServerClick" href="?p=1" class="nav-link" runat="server">
                      <i class="far fa-circle text-danger mr-2"></i>Importantes
                      <span id="numImportantNotf" class="badge bg-danger float-right" runat="server">0</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a id="fixeslink" onserverclick="fixeslink_ServerClick" href="?p=2" class="nav-link" runat="server">
                      <i class="far fa-circle text-warning mr-2"></i>Correcciones
                      <span id="numFixesNotf" class="badge bg-warning float-right" runat="server">0</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a id="upgradeslink" onserverclick="upgradeslink_ServerClick" href="?p=3" class="nav-link" runat="server">
                      <i class="far fa-circle text-primary mr-2"></i>Mejoras
                      <span id="numUpgradesNotf" class="badge bg-primary float-right" runat="server">0</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a id="historylink" onserverclick="historylink_ServerClick" href="?p=0" class="nav-link" runat="server">
                      <i class="far fa-circle text-gray mr-2"></i>Historial
                      <span id="numHistorial" class="badge bg-gray float-right" runat="server">0</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <!-- NOTIFICATIOS -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Notificaciones</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
              </div>
              <div class="card-body p-0">
                <ul class="nav nav-pills flex-column">
                  <asp:Literal ID="notificationslist" runat="server"></asp:Literal>
                </ul>
              </div>
            </div>
          </div>
          <!-- RIGHT -->
          <div class="col-md-9">
            <!-- IMPORTANTES 1 -->
            <div id="importantes" visible="false" runat="server">
              <asp:Literal ID="important" runat="server"></asp:Literal>
            </div>
            <!-- CORRECCIONES 2 -->
            <div id="correcciones" visible="false" runat="server">
              <div class="card card-warning card-outline">
                <div class="card-header">
                  <h3 id="mejoras_al_sistema" name="mejoras_al_sistema" class="card-title"><i class="fas fa-tools mr-2"></i>Mejoras al sistema</h3>
                  <p class="float-right m-0">Noviembre 25, 2022</p>
                </div>
                <div class="card-body p-4">
                  <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12 text-justify mb-3">
                      <ul class="fa-ul">
                        <asp:Literal id="fixes" runat="server"></asp:Literal>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- MEJORAS 3 -->
            <div id="mejoras" visible="false" runat="server">
              <asp:Literal ID="upgrade" runat="server"></asp:Literal>
            </div>
            <!-- HISTORY NOTIFICATIONS -->
            <div id="historial" runat="server"></div>
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
    $(function () {
      $('#descripcion_avanzados').summernote({
        placeholder: 'Ingresa un comentario enriquecido.',
        width: '100%',
        height: 150,
        toolbar: [
          ['style', ['bold', 'italic', 'underline', 'clear']],
          ['insert', ['table']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['misc', ['fullscreen']] //, 'help']]
        ],
        maxTextLength: 1500,
        tooltip: false
      });

      const urlParams = new URLSearchParams(window.location.search);
      const p = urlParams.get('p');

      var Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000
      });

      $('.swalDefaultSuccess').click(function () {
        Toast.fire({
          icon: 'success',
          title: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
        })
      });
      $('.swalDefaultInfo').click(function () {
        Toast.fire({
          icon: 'info',
          title: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
        })
      });
      $('.swalDefaultError').click(function () {
        Toast.fire({
          icon: 'error',
          title: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
        })
      });
      $('.swalDefaultWarning').click(function () {
        Toast.fire({
          icon: 'warning',
          title: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
        })
      });
      $('.swalDefaultQuestion').click(function () {
        Toast.fire({
          icon: 'question',
          title: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
        })
      });

      toastr.options = {
        "closeButton": true,
        "newestOnTop": true,
        "progressBar": true,
        "timeOut": 1000,
      };
      $('.toastrDefaultSuccess').click(function () {
        toastr.success('Lorem ipsum dolor sit amet, consetetur sadipscing elitr.')
      });
      $('.toastrDefaultInfo').click(function () {
        toastr.info('Lorem ipsum dolor sit amet, consetetur sadipscing elitr.')
      });
      $('.toastrDefaultError').click(function () {
        toastr.error('Lorem ipsum dolor sit amet, consetetur sadipscing elitr.')
      });
      $('.toastrDefaultWarning').click(function () {
        toastr.warning('Lorem ipsum dolor sit amet, consetetur sadipscing elitr.')
      });

      $('.toastsDefaultSuccess').click(function () {
        $(document).Toasts('create', {
          class: 'bg-success',
          title: 'Título',
          subtitle: 'Subtítulo',
          body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.',
          autohide: true,
          delay: 1000,
        })
      });
      $('.toastsDefaultInfo').click(function () {
        $(document).Toasts('create', {
          class: 'bg-info',
          title: 'Título',
          subtitle: 'Subtítulo',
          body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.',
          autohide: true,
          delay: 1000,
        })
      });
      $('.toastsDefaultWarning').click(function () {
        $(document).Toasts('create', {
          class: 'bg-warning',
          title: 'Título',
          subtitle: 'Subtítulo',
          body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.',
          autohide: true,
          delay: 1000,
        })
      });
      $('.toastsDefaultDanger').click(function () {
        $(document).Toasts('create', {
          class: 'bg-danger',
          title: 'Título',
          subtitle: 'Subtítulo',
          body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.',
          autohide: true,
          delay: 1000,
        })
      });
      $('.toastsDefaultMaroon').click(function () {
        $(document).Toasts('create', {
          class: 'bg-maroon',
          title: 'Título',
          subtitle: 'Subtítulo',
          body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.',
          autohide: true,
          delay: 1000,
        })
      });
    })
  </script>
</asp:Content>
