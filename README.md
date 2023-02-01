# Control de Documentos
[<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Visual_Studio_Icon_2019.svg/2060px-Visual_Studio_Icon_2019.svg.png" alt="Visual Studio 2022" width="25px" height="25px">](https://visualstudio.microsoft.com/es/vs/) [<img src="https://static.vecteezy.com/system/resources/previews/011/260/238/original/html5-css3-js-icon-set-web-development-logo-icon-set-of-html-css-and-javascript-programming-symbol-free-vector.jpg" alt="HTML 5" width="90px" height="25px">](#) [<img src="https://static.cdnlogo.com/logos/c/27/c.svg" alt="C#" width="25px" height="25px">](https://learn.microsoft.com/es-es/dotnet/csharp/) [<img src="https://www.edureka.co/blog/wp-content/uploads/2019/10/logo.png" alt="SQL Server Management" width="25px" height="25px">](https://learn.microsoft.com/en-us/sql/ssms/sql-server-management-studio-ssms?view=sql-server-ver16) 

El sistema de control de documentos está encargado de almacenar documentos que ingresan a una unidad operativa con el fin de almacenar información relacionada a ellos en base de datos y registrar un documento virtual en formato PDF, con la oportunidad de registrar documentos adjuntos, y poder procesarlos y registrar una respuesta relacionada a dicha solicitud ingresada, con la oportunidad de registrar un historial para determinar el flujo y los usuarios involucrados dentro de la respuesta.

## Tabla de Contenido
* [Control de Documentos](#Control-de-Documentos)
* [Technology](#Technology)
* [File Structure](#File-Structure)
* [Browsers Support](#Browsers-Support)
* [Demo](#Demo)
  * [Dashboard](#Dashboard)
  * [Ingresar Documento](#Ingresar-Documento)
  * [Marginar Documento](#Change-Password)
  * [Administrar Requerimiento](#Administrar-Requerimiento)
  * [Principal Page](#Principal-Page)
  * [Administrar Actividades](#Administrar-Actividades)

## Table of Contents
* [Autenticacion](#Autenticacion)
* [Technology](#Technology)
* [File Structure](#File-Structure)
* [Browsers Support](#Browsers-Support)
* [Demo](#Demo)
  * [Login](#Login)
  * [Reset Password](#Reset-Password)
  * [Change Password](#Change-Password)
  * [Lock Screen](#Lock-Screen)
  * [Principal Page](#Principal-Page)
  * [Dashboard Search](#Dashboard-Search)
  * [Dashboard Change Password](#Dashboard-Change-Password)
  * [Dashboard Information](#Dashboard-Information)
  * [Dashboard Darkmode](#Dashboard-Darkmode)

## Technology

La tecnología utilizada para el proyecto es la siguiente:
* FRONT END:
  * Template Base: [AdminLTE 3](https://adminlte.io/themes/v3/index.html)
  * Pugins Agregados:
    * [JQuery](https://jquery.com/)
    * [DataTables](https://datatables.net/)
    * [InputMask](https://plugins.jquery.com/jquery.inputmask/)
    * [SweetAlert2](https://sweetalert2.github.io/)
    * [FontAwesome Icon](https://fontawesome.com/v5/search?o=r&m=free)
    * [MaxLenght](http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js)
    * [MaxLenght2](https://htmldom.dev/count-the-number-of-characters-of-a-textarea/)
  * [JavaScript](https://developer.mozilla.org/es/docs/Web/JavaScript)
  * [LocalStorage](https://developer.mozilla.org/es/docs/Web/API/Window/localStorage)
  * [SessionStorage](https://developer.mozilla.org/es/docs/Web/API/Window/sessionStorage)
  * [Cookies](https://learn.microsoft.com/es-es/aspnet/web-api/overview/advanced/http-cookies)
  * [SQL Server Managment](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16)

## File Structure
Within the download you’ll find the following directories and files:

```
control-de-documentos/
├── README.md
├── control-de-documentos/
  ├── controlDeDocumentos/
  │ ├── folders/...
  │ ├── files/...
  │ ├── pages/
  │ │ ├── KPIs.aspx
  │ │ ├── KPIs.aspx.cs
  │ │ ├── KPIs.aspx.designer.cs
  │ │ ├── admin/
  │ │ │ ├── notificaciones.aspx
  │ │ │ ├── notificaciones.aspx.cs
  │ │ │ ├── notificaciones.aspx.designer.cs
  │ │ │ ├── sistemas/
  │ │ │ ├── admin.Master
  │ │ │ ├── admin.Master.cs
  │ │ │ ├── admin.Master.designer.cs
  │ │ ├── auth/
  │ │ │ ├── ForgotPassword.aspx
  │ │ │ ├── ForgotPassword.aspx.cs
  │ │ │ ├── ForgotPassword.aspx.designer.cs
  │ │ │ ├── lockscreen.aspx
  │ │ │ ├── lockscreen.aspx.cs
  │ │ │ ├── lockscreen.aspx.designer.cs
  │ │ ├── error/
  │ │ │ ├── 404.aspx
  │ │ │ ├── 404.aspx.cs
  │ │ │ ├── 404.aspx.designer.cs
  │ │ ├── managment/
  │ │ │ ├── AC.aspx
  │ │ │ ├── AC.aspx.cs
  │ │ │ ├── AC.aspx.designer.cs
  │ │ ├── CD/
  │ │   ├── ARD.aspx
  │ │   ├── ARD.aspx.cs
  │ │   ├── ARD.aspx.designer.cs
  │ │   ├── ARO.aspx
  │ │   ├── ARO.aspx.cs
  │ │   ├── ARO.aspx.designer.cs
  │ │   ├── ARS.aspx
  │ │   ├── ARS.aspx.cs
  │ │   ├── ARS.aspx.designer.cs
  │ │   ├── ARSD.aspx
  │ │   ├── ARSD.aspx.cs
  │ │   ├── ARSD.aspx.designer.cs
  │ │   ├── ID.aspx
  │ │   ├── ID.aspx.cs
  │ │   ├── ID.aspx.designer.cs
  │ ├── controlDeDocumentos.vbproj
  │ ├── Global.asax
  │ ├── Web.config
  └── packages/
  │ ├── Microsoft.CodeDom.Providers.DotNetCompilerPlatform.2.0.1/
  │   ├── build/...
  │   ├── content/...
  │   ├── lib/...
  │   ├── tools/...
  │   ├── .signature
  │   ├── Microsoft.CodeDom.Providers.DotNetCompilerPlatform.2.0.1.nupkg
  └── controlDeDocumentos.sln
```

## Browsers Support

<img src="https://raw.githubusercontent.com/alrra/browser-logos/master/src/edge/edge_48x48.png" alt="IE / Edge" width="24px" height="24px" />   <img src="https://raw.githubusercontent.com/alrra/browser-logos/master/src/chrome/chrome_48x48.png" alt="Chrome" width="24px" height="24px" />   <img src="https://raw.githubusercontent.com/alrra/browser-logos/master/src/safari/safari_48x48.png" alt="Safari" width="24px" height="24px" />   <img src="https://raw.githubusercontent.com/alrra/browser-logos/master/src/firefox/firefox_48x48.png" alt="Firefox" width="24px" height="24px" />

## Demo
### Dashboard
Diseño personalizado para mostrar indicadores por usuarios.

![Alt text](/control-de-documentos/ControlDeDocumentos/Style/manual/1.png "Dashboard")

### Ingresar Documento
Permite el ingreso de información principal y documentos adjuntos con el objetivo de administrar un documento y llevar el flujo correspondiente.

![Alt text](/control-de-documentos/ControlDeDocumentos/Style/manual/3.png "Ingresar Documento")

![Alt text](/control-de-documentos/ControlDeDocumentos/Style/manual/4.png "Notificación de éxito")

### Marginar Documento
Proceso correspondiente al director de una unidad, encargado de distribuir tareas a sus sub alternos, es decir subdirectores.

![Alt text](/control-de-documentos/ControlDeDocumentos/Style/manual/5.png "Ingresar Documento")

### Administrar Requerimiento
Proceso correspondiente al subdirector de una unidad, encargado de distribuir tareas a sus sub alternos, es decir a sus operadores, quienes se encargan de resolver el requerimiento.

![Alt text](/control-de-documentos/ControlDeDocumentos/Style/manual/13.png "Ingresar Documento")

### Administrar Actividades
Proceso de resolución de requerimientos con el objetivo de solucionar una solicitud e indicar la razón o motivo dejando evidencia y documentación correspondiente.

![Alt text](/control-de-documentos/ControlDeDocumentos/Style/manual/14.png "Ingresar Documento")