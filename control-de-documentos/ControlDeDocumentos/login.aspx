<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="ControlDeDocumentos.LoginPage" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Mides - Login</title>
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="Style/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="Style/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="Style/dist/css/adminlte.min.css">
  <!-- Toastr -->
  <link rel="stylesheet" href="Style/plugins/toastr/toastr.min.css">
  <!-- SweetAlert2 -->
  <link rel="stylesheet" href="/Style/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
  <style>
    body {
      background-image: url("../Style/backGroundImage/image1.jpg");
      backdrop-filter: blur(5px);
      background-size: cover;
      background-repeat: no-repeat;
      transition: all 1s ease;
      margin: 0;
      height: 100vh;
    }
  </style>
</head>
<body class="hold-transition login-page">
  <form method="post" runat="server">
    <div class="login-box" style="margin: 0 !important;">
      <div class="card card-outline card-primary dark-mode" style="background-color: #454d55d9 !important; color: #fff;">
        <div class="card-header text-center">
          <a href="https://www.mides.gob.gt/" class="h1"><b>Mides</b> Login</a>
        </div>
        <div class="card-body">
          <p class="login-box-msg">Sign in</p>

          <div class="input-group mb-3">
            <asp:TextBox ID="tbUser" placeholder="Ingrese su usuario (NIT)" CssClass="form-control" runat="server" Style="background-color: #343a4099 !important;"></asp:TextBox>
            <div class="input-group-append">
              <div class="input-group-text" style="background-color: #343a4099 !important;">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <asp:TextBox ID="tbPassword" TextMode="Password" placeholder="Ingrese su contrase&ntilde;a" CssClass="form-control" runat="server" Style="background-color: #343a4099 !important;"></asp:TextBox>
            <div class="input-group-append">
              <div class="input-group-text" style="background-color: #343a4099 !important;">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>
          <%--<div class="form-check mb-2">
                            <input  id="rememberMe" name="rememberMe" type="checkbox" class="form-check-input" runat="server">
                            <label class="form-check-label" for="exampleCheck1">Recordar usuario</label>
                        </div>--%>
          <div class="row">
            <div class="col-12 text-center">
              <a href="/Pages/KPIs.aspx" CssClass="btn btn-primary btn-block">Ingresar</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- jQuery -->
    <script src="Style/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="Style/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="Style/dist/js/adminlte.min.js"></script>
    <!-- Toastr -->
    <script src="Style/plugins/toastr/toastr.min.js"></script>
    <!-- SweetAlert2 -->
    <script src="/Style/plugins/sweetalert2/sweetalert2.min.js"></script>
    <script type="text/javascript">
      function toastLP(typeToast, titleToast, subTitleToast, bodyToast) {
        $(document).Toasts('create', {
          class: typeToast,
          title: titleToast,
          subtitle: subTitleToast,
          body: bodyToast
        })
      };

      function loginData() {
        if (localStorage.getItem('usr') != null && localStorage.getItem('pw') != null) {
          if (localStorage.getItem('usr').length > 0 && localStorage.getItem('pw').length > 0) {
            document.getElementById('tbUser').setAttribute('value', localStorage.getItem('usr'));
            document.getElementById('tbPassword').setAttribute('value', localStorage.getItem('pw'));
          }
        } else if (sessionStorage.getItem('usr') != null && sessionStorage.getItem('pw') != null) {
          if (sessionStorage.getItem('usr').length > 0 && sessionStorage.getItem('pw').length > 0) {
            document.getElementById('tbUser').setAttribute('value', sessionStorage.getItem('usr'));
            document.getElementById('tbPassword').setAttribute('value', sessionStorage.getItem('pw'));
          }
        }
      };

      //CHANGE IMAGE
      var index = 0;
      var listaimg = ["/Style/backGroundImage/image2.jpg", "/Style/backGroundImage/image3.jpg", "/Style/backGroundImage/image4.jpg",
        "/Style/backGroundImage/image5.jpg", "/Style/backGroundImage/image6.jpg", "/Style/backGroundImage/image7.jpg", "/Style/backGroundImage/image8.jpg", "/Style/backGroundImage/image1.jpg"];

      $(function () {
        setInterval(changeImage, 10000);
      });

      function changeImage() {
        $('body').css("background-image", 'url(' + listaimg[index] + ')');
        index++;
        if (index == 8)
          index = 0;
      }

      function showToast(type, icon, title, subtitle, content, position = 'topRight', autohide = true, delay = 7000) {
        /**
         * Toasts documentation
         * 
         * class: bg-anything and you have many option, if have 100 grades you have a range [100 - 800]
         *  [
         *   '.bg-red-100', '.bg-pink-100', '.bg-purple-100', '.bg-indigo-100', '.bg-blue-100', '.bg-green-100','.bg-light-green-100','.bg-yellow-100', '.bg-orange-100', '.bg-orange-200', '.bg-brown-100', '.bg-grey-100', '.bg-blue-grey-100', '.bg-primary-100', 
         *   '.bg-primary', '.bg-white', '.bg-success', '.bg-info', '.bg-warning', '.bg-danger', '.bg-dark', 
         *   '.bg-facebook', '.bg-twitter', '.bg-google-plus', '.bg-linkedin', '.bg-flickr', '.bg-tumblr', '.bg-xing', '.bg-github', '.bg-html5', '.bg-openid', '.bg-stack-overflow', '.bg-css3', '.bg-youtube', 
         *   '.bg-dribbble', '.bg-instagram', '.bg-pinterest', '.bg-vk', '.bg-yahoo', '.bg-behance', '.bg-dropbox', '.bg-reddit', '.bg-spotify', '.bg-vine', '.bg-foursquare', '.bg-vimeo', '.bg-skype', '.bg-evernote'
         *  ]
         * icon: v5 free https://fontawesome.com/v5/search?o=r&m=free
         * position: ['topRight', 'topLeft', 'bottomRight', 'bottomLeft']
         * autohide: [ture, false]
         * delay: number (ms)
         * */

        $(document).Toasts('create', {
          class: type,
          icon: icon + ' fa-lg',
          title: title,
          subtitle: subtitle,
          body: content,
          position: position,
          fixed: true,
          autohide: autohide,
          autoremove: true,
          delay: delay,
          fade: true,
          //image: '/Style/dist/img/user3-128x128.jpg',
          //imageAlt: 'User Picture',
          //imageHeight: '25px',
          close: true,
        });
      }

      function showToastr(type, title, content, position = 'toast-top-right', delay = 7000, closeButton = true, progressBar = true) {
        /**
         * Toastr documentation
         * 
         * site:  https://codeseven.github.io/toastr/
         *        https://preview.keenthemes.com/metronic/demo4/features/miscellaneous/toastr.html
         * toastr_type: [success, info, warning, error]
         * closeButton: [true, false]
         * progressBar: [true, false]
         * positionClass: ['.toast-top-center', '.toast-bottom-center', '.toast-top-full-width', '.toast-bottom-full-width', '.toast-top-left', '.toast-top-right', '.toast-bottom-right', '.toast-bottom-left']
         * icon: v5 free https://fontawesome.com/v5/search?o=r&m=free
         * timeOut: number (ms)
         * */
        toastr.options = {
          "closeButton": closeButton,
          "debug": false,
          "newestOnTop": true,
          "progressBar": progressBar,
          "positionClass": position,
          "preventDuplicates": false,
          "onclick": null,
          "showDuration": "300",
          "hideDuration": "1000",
          "timeOut": delay,
          "extendedTimeOut": "1000",
          "showEasing": "swing",
          "hideEasing": "linear",
          "showMethod": "fadeIn",
          "hideMethod": "fadeOut"
        };

        switch (type) {
          case 'success':
            toastr.success(content, title);
            break;
          case 'info':
            toastr.info(content, title);
            break;
          case 'warning':
            toastr.warning(content, title);
            break;
          case 'error':
            toastr.error(content, title);
            break;
          default:
            toastr.info(content, title);
            break;
        }
      }

      function showSweetToast(type, content, position = 'top-end', delay = 7000, progressBar = true) {
        /**
         * Swal toast documentation
         * 
         * site: https://sweetalert2.github.io/
         * icon: ['success', 'error', 'warning', 'info', 'question']
         * position: ['top', 'top-start', 'top-end', 'center', 'center-start', 'center-end', 'bottom', 'bottom-start', 'bottom-end']
         * */
        const Toast = Swal.mixin({
          toast: true,
          position: position,
          showConfirmButton: false,
          timer: delay,
          timerProgressBar: progressBar,
          didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
          }
        });

        Toast.fire({
          icon: type,
          title: content
        });
      }
    </script>
  </form>
</body>
</html>
