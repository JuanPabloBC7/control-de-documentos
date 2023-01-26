<%@ Page Title="Marginar Documento Director" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage/Site.Master" CodeBehind="ARD.aspx.vb" Inherits="ControlDeDocumentos.ARD" %>

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
                <li class="breadcrumb-item active">Marginar Documento</li>
              </ol>
            </div>
          </div>
        </div>
      </section>

      <!-- MAIN CONTENT -->
      <section class="content">
        <div class="container-fluid">
          <!-- CARD -->
          <div class="card card-dark card-outline">
            <div class="card-header">
              <h3 class="card-title">
                <i class="nav-icon fas fa-file-alt text-dark m-2"></i>Marginar Documento
              </h3>
            </div>
            <div class="card-body">
              <!-- TAB HEADER -->
              <ul class="nav nav-tabs" id="custom-content-below-tab" role="tablist">
                <li id="manageDocumentsLi" onclick="tabs(1)" class="nav-item" runat="server">
                  <a class="nav-link active" id="manageDocumentsTab" data-toggle="pill" href="#manageDocuments" role="tab" aria-selected="true" runat="server">Marginar Documento</a>
                </li>
                <li id="historyDocumentsLi" onclick="tabs(2)" class="nav-item" runat="server">
                  <a class="nav-link" id="historyDocumentsTab" data-toggle="pill" href="#historyDocuments" role="tab" aria-selected="true" runat="server">Historial de Documentos</a>
                </li>
              </ul>

              <!-- TAB BODY -->
              <div class="tab-content" id="custom-content-below-tabContent">
                <!--MANAGE DOCUMENTS TAB-->
                <div id="manageDocuments" class="tab-pane fade show active mt-5" role="tabpanel" aria-labelledby="manageDocumentsTab" runat="server">
                  <div class="container-fluid">
                    <div class="row my-4">
                      <div class="col-sm-12 col-md-6 col-lg-4 mb-2">
                        <div class="form-group">
                          <label>Estatus</label>
                          <select id="estatus" class="form-control select2" style="width: 100%;" runat="server">
                            <option value="0" selected="selected">Sin información</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-sm-12 col-md-6 col-lg-4 mb-2">
                        <div class="form-group">
                          <label>Sub Estatus</label>
                          <select id="subEstatus" class="form-control select2" style="width: 100%;" runat="server">
                            <option value="0" selected="selected">Sin información</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-sm-12 col-md-6 col-lg-6 mb-2">
                        <div class="form-group">
                          <label>Destinatario</label>
                          <select id="destinatario" class="form-control select2" style="width: 100%;" runat="server">
                            <option value="0" selected="selected">Sin información</option>
                          </select>
                        </div>
                      </div>
                    </div>

                    <div class="row my-4 d-flex align-items-center">
                      <div class="col-sm-12 col-md-12 col-lg-12 mb-2 text-center">
                        <div class="form-group">
                          <div class="custom-control custom-switch">
                            <input type="checkbox" id="actividades" onclick="isChecked('MainContent_actividades', '0');" class="custom-control-input" runat="server">
                            <label class="custom-control-label" onclick="isChecked('MainContent_actividades', '0');" for="documentos">Buscar por actividades</label>
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-12 col-md-3 col-lg-3 mb-2">
                        <div class="form-group">
                          <label>Actividades Asignadas</label>
                          <select id="actividadAsignada" class="form-control select2" style="width: 100%;" runat="server">
                            <option value="2">Seleccione una opción</option>
                            <option value="1" selected="selected">Asignadas</option>
                            <option value="0">Operadas</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-sm-12 col-md-3 col-lg-3 mb-2">
                        <div class="form-group">
                          <label>Estatus de Actividad</label>
                          <select id="estatusActividad" class="form-control select2" style="width: 100%;" runat="server">
                            <option value="0" selected="selected">Sin información</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-sm-12 col-md-6 col-lg-6 mb-2">
                        <div class="form-group">
                          <label>Usuario</label>
                          <select id="operador" class="form-control select2" style="width: 100%;" runat="server">
                            <option value="0" selected="selected">Sin información</option>
                          </select>
                        </div>
                      </div>
                    </div>

                    <div class="row mt-4">
                      <div class="col-sm-12 col-md-12 col-lg-12 text-center">
                        <asp:LinkButton ID="btnBuscar" CssClass="btn btn-outline-secondary" runat="server">
                          <i class="fas fa-search"></i> Buscar
                        </asp:LinkButton>
                      </div>
                    </div>

                    <div class="row mt-4">
                      <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="table-responsive-lg">
                          <asp:UpdatePanel runat="server">
                            <ContentTemplate>
                              <asp:GridView 
                                ID="gvADTable" 
                                class="display table table-hover table-striped table-bordered table-valign-middle table-sm overflow-hidden align-middle"
                                AutoGenerateColumns="false" 
                                ClientIDMode="Static"
                                runat="server">
                                <Columns>
                                  <asp:BoundField DataField="DCTO_ID" HeaderText="Id" />
                                  <asp:BoundField DataField="CORRELATIVO" HeaderText="No. Documento" />
                                  <asp:BoundField DataField="DOCTO_CORRELAT_REMITENTE" HeaderText="Correlativo" />
                                  <asp:BoundField DataField="DOCTO_FECRECIBIDO" HeaderText="Fecha Recibido" />
                                  <asp:BoundField DataField="STAT_DOCTO" HeaderText="Estatus" />
                                  <asp:BoundField DataField="SUBST_DOCTO" HeaderText="Sub Estatus" />
                                  <asp:BoundField DataField="STACT_ACTIVIDAD" HeaderText="Estatus Actividad" />
                                  <asp:TemplateField HeaderText="Acciones">
                                    <ItemTemplate>
                                      <div class="d-flex justify-content-center text-center">
                                        <asp:LinkButton ID="btnADView" ToolTip="Ver detalle" Text="Ver" class="mx-2" runat="server" Style="color: #e83e8c"><i class="fas fa-eye"></i></asp:LinkButton>
                                        <asp:LinkButton ID="btnADAddUser" ToolTip="Asignar a Subdirector" class="mx-2" runat="server" Style="color: #03650b"><i class="fa fa-user-plus"></i></asp:LinkButton>
                                        <asp:LinkButton ID="btnADAddTask" ToolTip="Actividades" class="mx-2" runat="server" Style="color: #17a2b8"><i class="fas fa-clipboard-list"></i></asp:LinkButton>
                                        <asp:LinkButton ID="archivoDeSalida" ToolTip="Archivo de salida" class="mx-2" runat="server" Style="color: #dc3545"><i class="fas fa-reply"></i></asp:LinkButton>
                                      </div>
                                    </ItemTemplate>
                                  </asp:TemplateField>
                                </Columns>
                              </asp:GridView>
                            </ContentTemplate>
                          </asp:UpdatePanel>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--HISTORY DOCUMENTS TAB-->
                <div id="historyDocuments" class="tab-pane fade show mt-5" role="tabpanel" aria-labelledby="historyDocumentsTab" runat="server">
                  <div class="container-fluid">
                    <div class="row my-2">
                      <div class="col-sm-12 col-md-12 col-lg-12 mt-2">
                        <h3 id="actividadesTitulo" class="text-bold text-dark" runat="server">Actividades</h3>
                      </div>
                      <div class="col-sm-12 col-md-12 col-lg-12 mb-2">
                        <asp:Literal ID="actividadDescripcion" runat="server"></asp:Literal>
                      </div>
                      <div class="col-sm-12 col-md-12 col-lg-12 my-2">
                        <div class="form-group">
                          <label>Descripción de lo Realizado:</label>
                          <div class="input-group mb-3">
                            <textarea id="comentarioActividad" class="form-control" rows="5" placeholder="Descripción..." runat="server"></textarea>
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-12 col-md-9 col-lg-6 my-2">
                        <div class="form-group" runat="server">
                          <label for="archivosActividad">Cargar Adjuntos (100MB max)</label> 
                          <div class="custom-file">
                            <input type="file" id="archivosActividad" oninput="showList('MainContent_archivosActividad', 'listadoArchivosActividad');" class="custom-file-input" accept=".xlsx,.xls,.doc,.docx,.pdf,.txt,.png,.jpg,.jpeg,.rar,.zip" multiple runat="server">
                            <label class="custom-file-label" for="archivosActividad">Seleccionar un archivo</label>
                          </div>
                          <div>
                            <ul id="listadoArchivosActividad"></ul>
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-12 col-md-3 col-lg-6 my-2 d-flex align-items-center">
                        <button type="button" id="verAdjuntos" class="btn btn-outline-info mx-2" visible="false" data-toggle="modal" data-target="#modal-view-attachments" runat="server"><i class="fas fa-paperclip mr-2"></i>Ver Adjuntos</button>
                      </div>
                      <div class="col-sm-12 col-md-12 col-lg-12 text-center my-2">
                        <button type="button" id="actualizarActividad" class="btn btn-outline-warning mx-2" visible="false" runat="server"><i class="fas fa-sync-alt mr-2"></i>Actualizar Actividad</button>
                        <button type="button" id="agregarActividad" class="btn btn-outline-primary mx-2" visible="false" runat="server"><i class="fas fa-save mr-2"></i>Agregar Actividad</button>
                        <button type="button" id="cancelarActividad" class="btn btn-outline-secondary mx-2" visible="false" runat="server"><i class="fas fa-times-circle mr-2"></i>Cancelar</button>
                      </div>
                      <div class="col-sm-12 col-md-6 col-lg-6 my-2">
                        <div class="form-group">
                          <label>Remitir actividad a:</label>
                          <select id="usuariosActividad" class="form-control select2" style="width: 100%;" runat="server">
                            <option value="0" selected="selected">Sin información</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-sm-12 col-md-12 col-lg-12 my-2">
                        <div class="form-group">
                          <label>Notificar a:</label>
                          <select id="usuariosANotificar" class="select2" multiple="true" data-placeholder="Notificar a" style="width: 100%;" runat="server">
                            <option value="0" selected="selected">Sin información</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-sm-12 col-md-12 col-lg-12 text-center my-2">
                        <button type="button" id="confirmarRechazoActividad" class="btn btn-outline-danger mx-2" visible="false" data-toggle="modal" data-target="#modal-confirm-rejection-act" runat="server"><i class="fas fa-times mr-2"></i>Rechazar Actividad</button>
                        <button type="button" id="confirmarFinalizarActividad" class="btn btn-outline-secondary mx-2" visible="false" data-toggle="modal" data-target="#modal-confirm-finish" runat="server"><i class="fas fa-check mr-2"></i>Finalizar Actividad</button>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-12 col-md-12 col-lg-12 mt-4" id="cHDTable" runat="server" visible="false">
                        <div class="table-responsive-lg">
                          <asp:UpdatePanel runat="server">
                            <ContentTemplate>
                              <asp:GridView 
                                ID="gvHDTable" 
                                class="display table table-hover table-striped table-bordered table-valign-middle table-sm overflow-hidden align-middle"
                                ClientIDMode="Static"
                                AutoGenerateColumns="false" 
                                runat="server">
                                <Columns>
                                  <asp:BoundField DataField="ID" HeaderText="No" />
                                  <asp:BoundField DataField="EMISOR" HeaderText="Emisor" />
                                  <asp:BoundField DataField="RECEPTOR" HeaderText="Receptor" />
                                  <asp:BoundField DataField="ESTATUS" HeaderText="Estatus" />
                                  <asp:BoundField DataField="ASIGNADO" HeaderText="Asignado" />
                                  <asp:BoundField DataField="FECHA" HeaderText="Fecha" />
                                  <asp:TemplateField HeaderText="Acciones">
                                    <ItemTemplate>
                                      <div class="d-flex justify-content-center text-center">
                                        <asp:LinkButton ID="btnHDEdit" ToolTip="Editar actividad" class="mx-2" runat="server" Style="color: #e83e8c"><i class="fas fa-eye"></i></asp:LinkButton>
                                        <asp:LinkButton ID="verAdjuntosActividad" ToolTip="Ver adjuntos" class="mx-2" runat="server" Style="color: #021830"><i class="fas fa-paperclip"></i></asp:LinkButton>
                                      </div>
                                    </ItemTemplate>
                                  </asp:TemplateField>
                                </Columns>
                              </asp:GridView>
                            </ContentTemplate>
                          </asp:UpdatePanel>
                        </div>
                      </div>
                    </div>
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
  <!-- VER DETALLE -->
  <div class="modal fade" id="viewADDetail" tabindex="-1" role="dialog" aria-labelledby="viewModalLabelAD" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Información del documento
            <strong>
              <asp:Label ID="viewModalADCorrelativoRemitente" runat="server" />
            </strong>
          </h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="row mt-4">
            <div class="col-sm-12 col-md-12 col-lg-12 mb-1">
              <h5>Información del Principal</h5>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-2 mb-1">
              <div class="form-group">
                <label>Correlativo:</label>
                <input id="mvCorrelative" class="form-control" placeholder="Sin información" disabled runat="server" />
              </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 mb-1">
              <div class="form-group">
                <label>Tipo de Documento:</label>
                <input id="mvDocumentType" class="form-control" placeholder="Sin información" disabled runat="server" />
              </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-3 mb-1">
              <div class="form-group">
                <label>Estatus:</label>
                <input id="mvStatus" class="form-control" placeholder="Sin información" disabled runat="server" />
              </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-3 mb-1">
              <div class="form-group">
                <label>Sub-Estatus:</label>
                <input id="mvSubStatus" class="form-control" placeholder="Sin información" disabled runat="server" />
              </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-6 mb-1">
              <div class="form-group">
                <label>Correlativo Remitente:</label>
                <input id="mvSenderCorrelative" class="form-control" placeholder="Sin información" disabled runat="server" />
              </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-6 mb-1">
              <div class="form-group">
                <label>Correlativo de Salida:</label>
                <input id="mvReceiverCorrelative" class="form-control" placeholder="Sin información" disabled runat="server" />
              </div>
            </div>
          </div>

          <div class="row mt-2">
            <div class="col-sm-12 col-md-12 col-lg-12 mb-1">
              <h5>Información del Remitente</h5>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-12 col-md-8 col-lg-8 mb-1">
              <div class="form-group">
                <label>Dirección/Subdirección:</label>
                <input id="mvSenderUO" class="form-control" placeholder="Sin información" disabled runat="server" />
              </div>
            </div>
            <div class="col-sm-12 col-md-4 col-lg-4 mb-1">
              <div class="form-group">
                <label>Fecha de Creación:</label>
                <input id="mvSenderCreatedDate" class="form-control" placeholder="Sin información" disabled runat="server" />
              </div>
            </div>
            <div class="col-sm-12 col-md-8 col-lg-8 mb-1">
              <div class="form-group">
                <label>Solicitante:</label>
                <input id="mvSenderUser" class="form-control" placeholder="Sin información" disabled runat="server" />
              </div>
            </div>
            <div class="col-sm-12 col-md-4 col-lg-4 mb-1">
              <div class="form-group">
                <label>Fecha Requerida:</label>
                <input id="mvSenderRequiredDate" class="form-control" placeholder="Sin información" disabled runat="server" />
              </div>
            </div>
          </div>

          <div class="row mt-2">
            <div class="col-sm-12 col-md-12 col-lg-12 mb-1">
              <h5>Información del Remitente</h5>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-12 col-md-8 col-lg-8 mb-1">
              <div class="form-group">
                <label>Usuario de Destino:</label>
                <input id="mvReceiverUser" class="form-control" placeholder="Sin información" disabled runat="server" />
              </div>
            </div>
            <div class="col-sm-12 col-md-4 col-lg-4 mb-1">
              <div class="form-group">
                <label>Fecha de Recepción:</label>
                <input id="mvReceiverDate" class="form-control" placeholder="Sin información" disabled runat="server" />
              </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-12 mb-1">
              <div class="form-group">
                <label>Descripción:</label>
                <textarea id="mvReceiverDescription" class="form-control" rows="6" placeholder="Sin información" disabled runat="server"></textarea>
              </div>
            </div>
          </div>

          <div class="row my-4">
            <asp:Literal ID="tbViewDocument" runat="server" />
          </div>
          <div class="row my-2">
            <div class="col-sm-12 col-md-12 col-lg-12 my-2">
              <div class="form-group">
                <label for="archivosPrincipalesTable">Archivos Adjuntos</label>
                <asp:UpdatePanel runat="server">
                  <ContentTemplate>
                    <asp:GridView ID="archivosPrincipalesTable" runat="server" AutoGenerateColumns="false" 
                      class="table table-sm table-bordered" ClientIDMode="Static">
                      <Columns>
                        <asp:BoundField DataField="ARCH_ID" HeaderText="Id"/>
                        <asp:BoundField DataField="ARCH_TABLA" HeaderText="Tabla"  Visible="false"/>
                        <asp:BoundField DataField="ARCH_TABLAID" HeaderText="Tabla Id"  Visible="false"/>
                        <asp:BoundField DataField="ARCH_NOMBRE" HeaderText="Archivo" />
                        <asp:TemplateField HeaderText="Acciones">
                          <ItemTemplate>
                            <div class="d-flex justify-content-center text-center">
                              <asp:LinkButton ID="descargarArchivo" ToolTip="Descargar Archivo" class="mx-2" runat="server" Style="color: #3f6791"><i class="fas fa-file-download"></i></asp:LinkButton>
                              <asp:LinkButton ID="confirmarActualizarArchivo" ToolTip="Actualizar Archivo" class="mx-2" runat="server" style="color: #b18815"><i class="fas fa-sync-alt"></i></asp:LinkButton>
                              <asp:LinkButton ID="confirmarEliminarArchivo" ToolTip="Eliminar Archivo" class="mx-2" runat="server" style="color: #dc3545"><i class="fas fa-trash"></i></asp:LinkButton>
                            </div>
                          </ItemTemplate>
                        </asp:TemplateField>
                      </Columns>
                    </asp:GridView>
                  </ContentTemplate>
                </asp:UpdatePanel>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-outline-secondary" data-dismiss="modal"><i class="far fa-times-circle mr-2"></i>Cerrar</button>
        </div>
      </div>
    </div>
  </div>

  <!-- ADD USER - DIRECTOR -->
  <div class="modal fade" id="viewAddUser575" tabindex="-1" role="dialog" aria-labelledby="viewModalLabelAD" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Agregar usuario para el documento 
            <strong>
              <asp:Label ID="addUserModalADCorrelativoRemitente1" runat="server" />
            </strong>
          </h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 pl-4">
              <blockquote class="quote-secondary text-justify mb-0 ml-0">
                <asp:Literal ID="description" runat="server"></asp:Literal>
              </blockquote>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-12 pl-4 pt-3">
              <div class="form-group">
                <label>Marginar documento a:</label>
                <select id="usuarios" class="select2" multiple="true" data-placeholder="Marginar a..." style="height: 300px" runat="server">
                  <option selected="selected">Sin información</option>
                </select>
              </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-12 pl-4 pt-3">
              <div class="callout callout-info p-2 mb-0">
                <div class="custom-control custom-checkbox">
                  <input type="checkbox" id="cb_description1" clientidmode="Static" class="custom-control-input" runat="server">
                  <label for="cb_description1" class="custom-control-label font-weight-normal">Para su conocimiento, seguimiento y efectos correspondientes.</label>
                </div>
              </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-12 pl-4 pt-1">
              <div class="callout callout-info p-2 mb-0">
                <div class="custom-control custom-checkbox">
                  <input type="checkbox" id="cb_description2" clientidmode="Static" class="custom-control-input" runat="server">
                  <label for="cb_description2" class="custom-control-label font-weight-normal">Para que remita a la Dirección de Informática la Información solicitada.</label>
                </div>
              </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-12 pl-4 pt-1">
              <div class="callout callout-info p-2 mb-0">
                <div class="custom-control custom-checkbox">
                  <input type="checkbox" id="cb_description3" clientidmode="Static" class="custom-control-input" runat="server">
                  <label for="cb_description3" class="custom-control-label font-weight-normal">Da seguimiento y de lo actuado informe al interesado, con Vo.Bo. de la DI.</label>
                </div>
              </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-12 pt-3 pl-4 pr-4 pb-4">
              <div class="form-group">
                <label>Comentario</label>
                <div class="input-group">
                  <textarea id="ta_descriptionDirector" class="form-control" rows="4" placeholder="Ingrese una descripción..." runat="server"></textarea>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer d-flex justify-content-between">
          <button type="button" class="btn btn-outline-danger mx-2" data-toggle="modal" data-target="#modal-confirm-rejection"><i class="fas fa-times mr-2"></i>Rechazar</button>
          <asp:LinkButton ID="btnADAsignar575" CssClass="btn btn-outline-success" runat="server"><i class="fas fa-plus"></i> Asignar</asp:LinkButton>
          <button type="button" class="btn btn-outline-secondary" data-dismiss="modal"><i class="far fa-times-circle mr-2"></i>Cerrar</button>
        </div>
      </div>
    </div>
  </div>

  <!-- CARGAR ARCHIVO DE SALIDA -->
  <div class="modal fade" id="modal-upload-file" tabindex="-1" role="dialog" aria-labelledby="uploadModal" aria-hidden="true">
    <div class="modal-dialog" style="max-width: 831px;" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Información del documento 
            <strong>
              <asp:Label ID="uploadFileModalADCorrelativoRemitente" runat="server" />
            </strong>
          </h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12" id="IDGrupoCoRemitente" runat="server">
              <div class="form-group">
                <label>Correlativo de Salida</label>
                <input type="text" id="correlativoDeSalida" class="form-control" runat="server"/>
              </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-12 my-2">
              <div class="form-group">
                <label>Notificar a:</label>
                <select id="usuariosANotificarSalida" class="select2" multiple="true" data-placeholder="Notificar a" style="width: 100%;" runat="server">
                  <option value="0" selected="selected">Sin información</option>
                </select>
              </div>
            </div>
            <div class="col-sm-12 col-md-9 col-lg-9">
              <div class="form-group">
                <label for="archivosSalida">Cargar Archivos (100MB max)</label> 
                <div class="custom-file">
                  <input type="file" id="archivosSalida" oninput="showList('Message_archivosSalida', 'listadoArchivosDeSalida');" class="custom-file-input"  accept=".xlsx,.xls,.doc,.docx,.pdf,.txt,.png,.jpg,.jpeg,.rar,.zip" multiple runat="server">
                  <label class="custom-file-label" for="archivosSalida">Seleccionar un archivo</label>
                </div>
                <div>
                  <ul id="listadoArchivosDeSalida"></ul>
                </div>
              </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-12 my-2">
              <div class="form-group">
                <label for="archivosSalidaTable">Archivos Adjuntos</label>
                <asp:UpdatePanel runat="server">
                  <ContentTemplate>
                    <asp:GridView ID="archivosSalidaTable" runat="server" AutoGenerateColumns="false" 
                      class="table table-sm table-bordered" ClientIDMode="Static">
                      <Columns>
                        <asp:BoundField DataField="ARCH_ID" HeaderText="Id"/>
                        <asp:BoundField DataField="ARCH_TABLA" HeaderText="Tabla"  Visible="false"/>
                        <asp:BoundField DataField="ARCH_TABLAID" HeaderText="Tabla Id"  Visible="false"/>
                        <asp:BoundField DataField="ARCH_NOMBRE" HeaderText="Archivo" />
                        <asp:TemplateField HeaderText="Acciones">
                          <ItemTemplate>
                            <div class="d-flex justify-content-center text-center">
                              <asp:LinkButton ID="descargarArchivo" ToolTip="Descargar Archivo" class="mx-2" runat="server" Style="color: #3f6791"><i class="fas fa-file-download"></i></asp:LinkButton>
                              <asp:LinkButton ID="confirmarActualizarArchivo" ToolTip="Actualizar Archivo" class="mx-2" runat="server" style="color: #b18815"><i class="fas fa-sync-alt"></i></asp:LinkButton>
                              <asp:LinkButton ID="confirmarEliminarArchivo" ToolTip="Eliminar Archivo" class="mx-2" runat="server" style="color: #dc3545"><i class="fas fa-trash"></i></asp:LinkButton>
                            </div>
                          </ItemTemplate>
                        </asp:TemplateField>
                      </Columns>
                    </asp:GridView>
                  </ContentTemplate>
                </asp:UpdatePanel>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" id="confirmarArchivoSalida" class="btn btn-outline-primary mx-2" data-toggle="modal" data-target="#modal-confirm-output-file" runat="server"><i class="fas fa-save mr-2"></i>Guardar Información</button>
          <button type="button" class="btn btn-outline-secondary" data-dismiss="modal"><i class="far fa-times-circle mr-2"></i>Cerrar</button>
        </div>
      </div>
    </div>
  </div>

  <!-- VER ADJUNTOS -->
  <div class="modal fade" id="modal-view-attachments" tabindex="-1" role="dialog" aria-labelledby="modal-view-attachments-label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Adjuntos de la actividad</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 my-2">
              <div class="form-group">
                <label for="archivosTable">Archivos Adjuntos</label>
                <asp:UpdatePanel runat="server">
                  <ContentTemplate>
                    <asp:GridView ID="archivosTable" runat="server" AutoGenerateColumns="false" 
                      class="table table-sm table-bordered" ClientIDMode="Static">
                      <Columns>
                        <asp:BoundField DataField="ARCH_ID" HeaderText="Id"/>
                        <asp:BoundField DataField="ARCH_TABLA" HeaderText="Tabla"  Visible="false"/>
                        <asp:BoundField DataField="ARCH_TABLAID" HeaderText="Tabla Id"  Visible="false"/>
                        <asp:BoundField DataField="ARCH_NOMBRE" HeaderText="Archivo" />
                        <asp:TemplateField HeaderText="Acciones">
                          <ItemTemplate>
                            <div class="d-flex justify-content-center text-center">
                              <asp:LinkButton ID="descargarArchivo" ToolTip="Descargar Archivo" class="mx-2" runat="server" Style="color: #3f6791"><i class="fas fa-file-download"></i></asp:LinkButton>
                              <asp:LinkButton ID="confirmarActualizarArchivo" ToolTip="Actualizar Archivo" class="mx-2" runat="server" style="color: #b18815"><i class="fas fa-sync-alt"></i></asp:LinkButton>
                              <asp:LinkButton ID="confirmarEliminarArchivo" ToolTip="Eliminar Archivo" class="mx-2" runat="server" style="color: #dc3545"><i class="fas fa-trash"></i></asp:LinkButton>
                            </div>
                          </ItemTemplate>
                        </asp:TemplateField>
                      </Columns>
                    </asp:GridView>
                  </ContentTemplate>
                </asp:UpdatePanel>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-outline-secondary" data-dismiss="modal"><i class="far fa-times-circle mr-2"></i>Cerrar</button>
        </div>
      </div>
    </div>
  </div>

  <!--MENSAJE DE CONFIRMACIÓN - RECHAZO DE ASIGNACIÓN-->
  <div class="modal fade" id="modal-confirm-rejection" tabindex="-1" role="dialog" aria-labelledby="modal-confirm-rejection-label" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content position-relative">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body p-0">
          <div class="p-4 pb-0">
            <div class="row mb-2 text-center">
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">
                <i class="fas fa-exclamation-triangle fw-light fa-5x" style="color:#facea8;"></i>
              </div>
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">
                <h3 class="mb-1 text-bold">¿Está seguro que desea rechazar?</h3>
              </div>
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">¿Desea rechazar la asignación?, esta acción no se puede revertir.</div>
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">
                <button type="button" id="rechazar" class="btn btn-primary" runat="server">Si, rechazar!</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal" aria-label="Close">Cancelar</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!--MENSAJE DE CONFIRMACIÓN - RECHAZO DE ACTIVIDAD-->
  <div class="modal fade" id="modal-confirm-rejection-act" tabindex="-1" role="dialog" aria-labelledby="modal-confirm-rejection-act-label" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content position-relative">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body p-0">
          <div class="p-4 pb-0">
            <div class="row mb-2 text-center">
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">
                <i class="fas fa-exclamation-triangle fw-light fa-5x" style="color:#facea8;"></i>
              </div>
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">
                <h3 class="mb-1 text-bold">¿Está seguro que desea rechazar?</h3>
              </div>
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">¿Desea rechazar la asignación?, esta acción no se puede revertir.</div>
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">
                <button type="button" id="rechazarActividad" class="btn btn-primary" runat="server">Si, rechazar!</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal" aria-label="Close">Cancelar</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!--MENSAJE DE CONFIRMACIÓN - FINALIZAR DE ASIGNACIÓN-->
  <div class="modal fade" id="modal-confirm-finish" tabindex="-1" role="dialog" aria-labelledby="modal-confirm-finish-label" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content position-relative">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body p-0">
          <div class="p-4 pb-0">
            <div class="row mb-2 text-center">
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">
                <i class="far fa-question-circle fw-light fa-5x" style="color:#facea8;"></i>
              </div>
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">
                <h3 class="mb-1 text-bold">Está seguro que desea finalizar?</h3>
              </div>
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">¿Desea finalizar el documento? Esta acción no se puede revertir.</div>
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">
                <button type="button" id="finalizar" class="btn btn-primary" runat="server">Si, finalizar!</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal" aria-label="Close">Cancelar</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!--MENSAJE DE CONFIRMACIÓN - ARCHIVO DE SALIDA-->
  <div class="modal fade" id="modal-confirm-output-file" tabindex="-1" role="dialog" aria-labelledby="modal-confirm-output-file-label" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content position-relative">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body p-0">
          <div class="p-4 pb-0">
            <div class="row mb-2 text-center">
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">
                <i class="fas fa-exclamation-triangle fw-light fa-5x" style="color:#facea8;"></i>
              </div>
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">
                <h3 class="mb-1 text-bold">Está seguro que desea realizar esta acción?</h3>
              </div>
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">¿Desea realizar esta acción? Esta acción no se puede revertir.</div>
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">
                <button type="button" id="archivoSalida" class="btn btn-primary" runat="server">Si, guardar!</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal" aria-label="Close">Cancelar</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!--MENSAJE DE CONFIRMACIÓN - ACTUALIZAR ARCHIVO-->
  <div class="modal fade" id="modal-confirm-update-file" tabindex="-1" role="dialog" aria-labelledby="modal-confirm-update-file-label" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content position-relative">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body p-0">
          <div class="p-4 pb-0">
            <div class="row mb-2">
              <div class="col-sm-12 col-md-12 col-lg-12">
                <div class="form-group">
                  <label for="archivoActividad">Cargar Adjuntos (100MB max)</label> 
                  <div class="custom-file">
                    <input type="file" id="archivoActividad" oninput="showList('Message_archivoActividad', 'listadoArchivoActividad');" 
                      class="custom-file-input" accept=".xlsx,.xls,.doc,.docx,.pdf,.txt,.png,.jpg,.jpeg,.rar,.zip" runat="server">
                    <label class="custom-file-label" for="archivoActividad">Seleccionar un archivo</label>
                  </div>
                  <div>
                    <ul id="listadoArchivoActividad"></ul>
                  </div>
                </div>
              </div>
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3 text-center">
                <button type="button" id="actualizarArchivo" class="btn btn-primary" runat="server">Actualizar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal" aria-label="Close">Cancelar</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!--MENSAJE DE CONFIRMACIÓN - ELIMINAR ARCHIVO-->
  <div class="modal fade" id="modal-confirm-delete-file" tabindex="-1" role="dialog" aria-labelledby="modal-confirm-delete-file-label" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content position-relative">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body p-0">
          <div class="p-4 pb-0">
            <div class="row mb-2 text-center">
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">
                <i class="fas fa-exclamation-circle fw-light fa-5x" style="color:#facea8;"></i>
              </div>
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">
                <h3 class="mb-1 text-bold">Está seguro que desea eliminar?</h3>
              </div>
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">¿Desea eliminar el archivo? Esta acción no se puede revertir.</div>
              <div class="col-lg-12 col-md-12 col-sm-12 mb-3">
                <button type="button" id="eliminarArchivo" class="btn btn-danger" runat="server">Si, eliminar!</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal" aria-label="Close">Cancelar</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- IFRAME -->
  <div class="modal fade" id="display-files-modal" tabindex="-1" role="dialog" aria-labelledby="display-files-modal-label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content bg-dark">
        <div class="modal-header">
          <h4 class="modal-title"><strong><span id="showFilesModalTitle" runat="server"></span></strong></h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <%--<embed id="filecontent" style="width: 100%; height: 800px;" runat="server"/>--%>
          <%--<object id="filecontent" type="application/pdf" style="width: 100%; height: 800px;" runat="server"></object>--%>
          <iframe id="filecontent" style="width: 100%; height: 800px;" runat="server"></iframe>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-outline-secondary" data-dismiss="modal"><i class="far fa-times-circle mr-2"></i>Cerrar</button>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Script" runat="server">
  <script type="text/javascript">
    $(function () {
      $('#MainContent_tbNoDocumento').inputmask('9999-9999', { 'placeholder': '0000-0000' })

      $('#requiredDate').datetimepicker({ format: 'L' });
      $('#Message_tb_requiredDateModal').inputmask('99/99/9999', { 'placeholder': 'mm/dd/yyyy' })
      
      $('#Message_ta_descriptionDirector').summernote({
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
        maxTextLength: 1500,
        tooltip: false
      });

      $('#MainContent_comentarioActividad').summernote({
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

      $('#Message_mvReceiverDescription').summernote({
        placeholder: 'Descripción breve y consisa del documento.',
        width: '100%',
        height: 150,
        toolbar: [],
        maxTextLength: 4500,
        tooltip: false
      });

      $('#gvADTable').DataTable({
        "bStateSave": true,
        "fnStateSave": function (oSettings, oData) {
          localStorage.setItem('offersDataTables', JSON.stringify(oData));
        },
        "fnStateLoad": function (oSettings) {
          return JSON.parse(localStorage.getItem('offersDataTables'));
        }
      })
      $('#gvHDTable').DataTable({
        "bStateSave": true,
        "fnStateSave": function (oSettings, oData) {
          localStorage.setItem('offersDataTables', JSON.stringify(oData));
        },
        "fnStateLoad": function (oSettings) {
          return JSON.parse(localStorage.getItem('offersDataTables'));
        }
      })

      $("input[data-bootstrap-switch]").each(function () {
        $(this).bootstrapSwitch('state', $(this).prop('checked'));
      });

      tabs(0);
    });

    function isChecked(element, input) {
      if (document.querySelector('#' + element).checked) {
        document.getElementById(element).checked = false

        if (input != '0') {
          document.getElementById(input).setAttribute('disabled', '')
        }
      } else {
        document.getElementById(element).checked = true

        if (input != '0') {
          document.getElementById(input).removeAttribute('disabled')
        }
      }
    };

    whoIsActive('lvl1', 'lvl1A', 'ARD');
  </script>
</asp:Content>
