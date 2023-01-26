<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="404.aspx.vb" Inherits="ControlDeDocumentos._404" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>CDD | 404 Not found</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/Style/plugins/fontawesome-free/css/all.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="/Style/dist/css/adminlte.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="container">
                <section class="content-header pt-5">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-12">
                                <h1>404 Error en la P&aacute;gina</h1>
                            </div>
                            <div class="col-sm-12">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#" onclick="history.back()">Inicio</a></li>
                                    <li class="breadcrumb-item active">404 Error en la P&aacute;gina</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="content">
                    <div class="error-page">
                        <h2 class="headline text-warning">404</h2>

                        <div class="error-content">
                            <h3><i class="fas fa-exclamation-triangle text-warning"></i>Oops! P&aacute;gina no encontrada.</h3>

                            <p>
                                No hemos podido encontrar la p&aacute;gina que desea buscar, 
                        probablemente usted desee <a href="#" onclick="history.back()">regresar a inicio</a>.
                            </p>
                        </div>
                    </div>
                </section>
            </div>
        </div>

        <!-- jQuery -->
        <script src="/Style/plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="/Style/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- AdminLTE App -->
        <script src="/Style/dist/js/adminlte.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="/Style/dist/js/demo.js"></script>
    </form>
</body>
</html>
