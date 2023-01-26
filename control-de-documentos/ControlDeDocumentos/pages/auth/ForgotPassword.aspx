<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ForgotPassword.aspx.vb" Inherits="ControlDeDocumentos.ForgotPassword" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mides - Login</title>
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../../Style/plugins/fontawesome-free/css/all.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="../../Style/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../Style/dist/css/adminlte.min.css">
    <style>
        body  {
            background-image: url("../../Style/backGroundImage/image5.jpg");
            backdrop-filter: blur(5px);
            background-size: cover;
            background-repeat: no-repeat;
            transition:all 1s ease;
            margin: 0;
            height: 100vh;
        }
    </style>
</head>
<body class="hold-transition login-page">
    <div class="login-box">
      <div class="card card-outline card-primary dark-mode" style="background-color: #454d55d9 !important; color: #fff;">
        <div class="card-header text-center">
          <a href="https://www.mides.gob.gt/" class="h1"><b>Mides</b> Login</a>
        </div>
        <div class="card-body">
          <p class="login-box-msg">Recuperar contrase&ntilde;a</p>

          <form action="https://www.mides.gob.gt/" method="post" runat="server">
            <div class="input-group mb-3">
                <asp:TextBox ID="tbUser" TextMode="Number" placeholder="Ingrese su usuario (NIT)" CssClass="form-control" runat="server" style="background-color: #343a4099 !important;"></asp:TextBox>
              <div class="input-group-append">
                <div class="input-group-text" style="background-color: #343a4099 !important;">
                  <span class="fas fa-user"></span>
                </div>
              </div>
            </div>
            <div class="input-group mb-3">
                <asp:TextBox ID="tbMail" placeholder="Correo Electr&oacute;nico" CssClass="form-control" runat="server" style="background-color: #343a4099 !important;"></asp:TextBox>
              <div class="input-group-append">
                <div class="input-group-text" style="background-color: #343a4099 !important;">
                  <span class="fas fa-at"></span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-12 text-center">
                  <asp:Button ID="btnRecoverPass" Text="Recuperar contrase&ntilde;a" CssClass="btn btn-primary btn-block" runat="server" />
              </div>
            </div>
          </form>
          <p class="mb-1 mt-4">
              <a href="/login.aspx" class="h6">Iniciar sesi&oacute;n</a>
          </p>
        </div>
      </div>
    </div>

    <!-- jQuery -->
    <script src="../../Style/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="../../Style/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../../Style/dist/js/adminlte.min.js"></script>
    <script type="text/javascript">
        //CHANGE IMAGE
        var index = 0;
        var listaimg = ["../../Style/backGroundImage/image6.jpg", "../../Style/backGroundImage/image7.jpg", "../../Style/backGroundImage/image8.jpg",
            "../../Style/backGroundImage/image1.jpg", "../../Style/backGroundImage/image2.jpg", "../../Style/backGroundImage/image3.jpg", "../../Style/backGroundImage/image4.jpg", "../../Style/backGroundImage/image5.jpg"];

        $(function () {
            setInterval(changeImage, 8000);
        });

        function changeImage() {
            $('body').css("background-image", 'url(' + listaimg[index] + ')');
            index++;
            if (index == 8)
                index = 0;
        }
    </script>
</body>
</html>
