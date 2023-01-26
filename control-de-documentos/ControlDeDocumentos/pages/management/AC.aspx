<%@ Page Title="Administrar Cat&aacute;logos" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage/Site.Master" CodeBehind="AC.aspx.vb" Inherits="ControlDeDocumentos.AC" %>
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
                            <h1>Cat&aacute;logos</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="../KPIs.aspx">Inicio</a></li>
                                <%--<li class="breadcrumb-item active">Cat&aacute;logos</li>--%>
                                <li class="breadcrumb-item active">Editar Cat&aacute;logos</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </section>

            <!-- CONTENT BODY -->
            <section class="content">
                <div class="container-fluid">
                    <div id="Tabs" class="card card-orange card-outline" role="tabpanel">
                        <div class="card-header">
                            <h3 class="card-title">
                                <i class="nav-icon fas fa-tasks m-2"></i>Editar Catálogos
                            </h3>
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-12 col-md-6 col-lg-6">
                                        <label style="font-weight:400;">Catálogos</label>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-tasks"></i></span>
                                            </div>
                                            <asp:DropDownList ID="catalogs" AutoPostBack="true" class="form-control dropDownList" runat="server">
                                                <asp:ListItem Text="Seleccione un Catálogo" Value="0"></asp:ListItem>
                                                <asp:ListItem Text="Tipo de Documento" Value="1"></asp:ListItem>
                                                <asp:ListItem Text="Estatus de Documento" Value="2"></asp:ListItem>
                                                <asp:ListItem Text="SubEstatus de Documento" Value="3"></asp:ListItem>
                                                <asp:ListItem Text="Estatus de Actividad" Value="4"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-sm-12 col-md-6 col-lg-6">
                                        <label style="font-weight:400;">Texto</label>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-sitemap"></i></span>
                                            </div>
                                            <asp:TextBox ID="item" class="form-control" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-12 text-center mt-2">
                                        <asp:LinkButton ID="addItem" Class="btn btn-outline-success" runat="server" >
                                            <i class="fas fa-plus mr-1"></i> Agregar
                                        </asp:LinkButton>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-12 mt-4">
                                        <div class="card" id="cardTable" runat="server" visible="false">
                                            <div class="card-body table-responsive">
                                                <asp:UpdatePanel runat="server">
                                                    <ContentTemplate>
                                                        <asp:GridView ID="gvCatTable" runat="server" AutoGenerateColumns="false" class="display table table-striped table-bordered table-hover"
                                                            ClientIDMode="Static">
                                                            <Columns>
                                                                <asp:BoundField DataField="NO" HeaderText="No" />
                                                                <asp:BoundField DataField="ITEM" HeaderText="Item" />
                                                                <asp:BoundField DataField="STATUS" HeaderText="Estatus" />
                                                                <asp:TemplateField HeaderText="Acciones">
                                                                    <ItemTemplate>
                                                                        <div class="row">
                                                                            <div class="col-6 text-center">
                                                                                <asp:LinkButton ID="btnEnabled" Text="Habilitar" runat="server">
                                                                                    <i class="fas fa-toggle-on text-gray"></i>
                                                                                </asp:LinkButton>
                                                                            </div>
                                                                            <div class="col-6 text-center">
                                                                                <asp:LinkButton ID="btnViewEdit" Text="Editar" runat="server">
                                                                                    <i class="fas fa-edit text-orange"></i>
                                                                                </asp:LinkButton>
                                                                            </div>
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
            </section>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Message" runat="server">
    <!-- EDIT ITEM -->
    <div class="modal fade" id="editItemModal" tabindex="-1" role="dialog" aria-labelledby="editItemModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-md" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">
                        Registro
                    </h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-12 col-md-12 col-lg-12 mt-3">
                            <label style="font-weight:400;">Texto</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-sitemap"></i></span>
                                </div>
                                <asp:TextBox ID="newItemText" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-12 text-center mt-2">
                            <asp:LinkButton ID="btnEdit" Class="btn btn-outline-secondary" runat="server" >
                                <i class="fas fa-pen mr-1"></i> Modificar
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Script" runat="server">
    <script type="text/javascript">
        whoIsActive('lvlMng1', 'lvlMng2', 'AC');

        $(function () {
            $('#gvCatTable').DataTable();
        })
    </script>
</asp:Content>
