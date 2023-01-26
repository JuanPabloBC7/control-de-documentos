<%@ Page Title="Indicadores" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage/Site.Master" CodeBehind="KPIs.aspx.vb" Inherits="ControlDeDocumentos.KPIs" %>

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
              <h1>KPIs</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item active">Inicio</li>
              </ol>
            </div>
          </div>
        </div>
      </section>
      <section class="content">
        <div id="KPIdashboard" class="container-fluid" runat="server">
          <!-- CARDS -->
          <div class="row">
            <div class="col-lg-3 col-6">
              <a id="newReqLink" class="small-box bg-info" runat="server">
                <div class="inner">
                  <h3 id="newReq" runat="server"></h3>
                  <p>Nuevos Requerimientos</p>
                </div>
                <div class="icon">
                  <i class="far fa-newspaper"></i>
                </div>
              </a>
            </div>
            <div class="col-lg-3 col-6">
              <a id="reqPenLink" class="small-box bg-danger" runat="server">
                <div class="inner">
                  <%--<h3>53<sup style="font-size: 20px">%</sup></h3>--%>
                  <h3 id="reqPen" runat="server"></h3>
                  <p>Documentos Pendientes</p>
                </div>
                <div class="icon">
                  <i class="fas fa-file-powerpoint"></i>
                  <%--<i class="ion ion-stats-bars"></i>--%>
                </div>
              </a>
            </div>
            <div class="col-lg-3 col-6">
              <a id="reqResLink" class="small-box bg-success" runat="server">
                <div class="inner">
                  <h3 id="reqRes" runat="server"></h3>
                  <p>Documentos Resueltos</p>
                </div>
                <div class="icon">
                  <i class="fas fa-clipboard-check"></i>
                </div>
              </a>
            </div>
            <div class="col-lg-3 col-6">
              <a id="totalReqLink" class="small-box bg-warning" runat="server">
                <div class="inner">
                  <h3 id="totalReq" runat="server"></h3>
                  <p>Total de Documentos</p>
                </div>
                <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
              </a>
            </div>
          </div>
          <div class="row">
            <section class="col-lg-7 connectedSortable ui-sotable">
              <!--ESTATUS DE UN DOCUMENTO-->
              <div class="card card-gray">
                <div class="card-header ui-sortable-handle" style="cursor: move;">
                  <h5 class="card-title">Estatus de un Documento</h5>
                </div>
                <div class="card-body">
                  <p class="text-center">
                    <strong>Tipos de Estatus</strong>
                  </p>
                  <div class="progress-group">
                    Documentos Abiertos
                                        <span id="openDocuments" class="float-right" runat="server"></span>
                    <div class="progress progress-sm">
                      <div id="openDocProgress" class="progress-bar bg-success" runat="server"></div>
                    </div>
                  </div>
                  <div class="progress-group">
                    Documentos Cerrados
                                        <span id="closeDocuments" class="float-right" runat="server"></span>
                    <div class="progress progress-sm">
                      <div id="closeDocProgress" class="progress-bar bg-primary" runat="server"></div>
                    </div>
                  </div>
                </div>
              </div>
              <!--TOP 10 POR UNIDAD OPERATIVA-->
              <div class="card">
                <div class="card-header border-0 ui-sortable-handle" style="cursor: move;">
                  <h3 class="card-title">Top 10 por Unidad Operativa</h3>
                </div>
                <div class="card-body table-responsive p-0">
                  <asp:Literal ID="operativeUnitTable" runat="server" />
                </div>
              </div>
              <!--TOP 10 POR USUARIO-->
              <div class="card">
                <div class="card-header border-0 ui-sortable-handle" style="cursor: move;">
                  <h3 class="card-title">Top 10 por Usuario</h3>
                </div>
                <div class="card-body table-responsive p-0">
                  <asp:Literal ID="userTable" runat="server" />
                </div>
              </div>
            </section>
            <section class="col-lg-5 connectedSortable ui-sotable">
              <!--TOP 10 POR AÑO-->
              <div class="card">
                <div class="card-header border-0 ui-sortable-handle" style="cursor: move;">
                  <h3 class="card-title">Top 10 por año</h3>
                </div>
                <div class="card-body table-responsive p-0">
                  <asp:Literal ID="yearTable" runat="server" />
                </div>
              </div>
              <!--SUB ESTATUS DE UN DOCUMENTO-->
              <div class="card card-danger">
                <div class="card-header ui-sortable-handle" style="cursor: move;">
                  <h3 class="card-title">Sub Estatus de un Documento</h3>
                </div>
                <div class="card-body">
                  <canvas id="pieSubStatus" style="height: 230px; min-height: 230px"></canvas>
                </div>
              </div>
              <!--ESTATUS DE UNA ACTIVIDAD-->
              <div class="card card-info">
                <div class="card-header ui-sortable-handle" style="cursor: move;">
                  <h3 class="card-title">Estatus de un Actividad</h3>
                </div>
                <div class="card-body">
                  <canvas id="donutStatus" style="height: 230px; min-height: 230px"></canvas>
                </div>
              </div>
            </section>
            <section class="col-lg-12 connectedSortable ui-sotable">
              <!--TIPOS DE DOCUMENTOS-->
              <div class="card card-success">
                <div class="card-header ui-sortable-handle" style="cursor: move;">
                  <h3 class="card-title">Tipos de Documentos</h3>
                </div>
                <div class="card-body">
                  <div class="chart">
                    <canvas id="barDocTypes" style="height: 230px; min-height: 230px"></canvas>
                  </div>
                </div>
              </div>
              <!--FECHA DE CREACION Y DE REGISTRO MENSUAL-->
              <div class="card card-primary">
                <div class="card-header ui-sortable-handle" style="cursor: move;">
                  <h3 class="card-title">Fecha de Creaci&oacute;n y de Registro Mensual</h3>
                </div>
                <div class="card-body">
                  <div class="chart">
                    <canvas id="areaMonthChart" style="height: 250px; min-height: 250px"></canvas>
                  </div>
                </div>
              </div>
              <!--FECHA DE CREACION Y DE REGISTRO ANUAL-->
              <div class="card card-primary">
                <div class="card-header ui-sortable-handle" style="cursor: move;">
                  <h3 class="card-title">Fecha de Creaci&oacute;n y de Registro Anual</h3>
                </div>
                <div class="card-body">
                  <div class="chart">
                    <canvas id="areaYearChart" style="height: 250px; min-height: 250px"></canvas>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </div>
      </section>
    </div>
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Message" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Script" runat="server">
  <!-- ChartJS -->
  <script src="../Style/plugins/chart.js/Chart.min.js"></script>

  <script type="text/javascript"> 
    $(function () {
      /* ChartJS
       * -------
       * Here we will create a few charts using ChartJS
       */

      //-------------
      //- LINE CHART -
      //--------------
      //var lineChartCanvas = $('#lineChart').get(0).getContext("2d")
      //var lineChartOptions = jQuery.extend(true, {}, areaChartOptions)
      //var lineChartData = jQuery.extend(true, {}, areaChartData)
      //lineChartData.datasets[0].fill = false;
      //lineChartData.datasets[1].fill = false;
      //lineChartOptions.datasetFill = false

      //var lineChart = new Chart(lineChartCanvas, {
      //    type: 'line',
      //    data: lineChartData,
      //    options: lineChartOptions
      //})

      //---------------------
      //- STACKED BAR CHART -
      //---------------------
      //var stackedBarChartCanvas = $('#stackedBarChart').get(0).getContext("2d")
      //var stackedBarChartData = jQuery.extend(true, {}, barChartData)

      //var stackedBarChartOptions = {
      //    responsive: true,
      //    maintainAspectRatio: false,
      //    scales: {
      //        xAxes: [{
      //            stacked: true,
      //        }],
      //        yAxes: [{
      //            stacked: true
      //        }]
      //    }
      //}

      //var stackedBarChart = new Chart(stackedBarChartCanvas, {
      //    type: 'bar',
      //    data: stackedBarChartData,
      //    options: stackedBarChartOptions
      //})
    })
    //-------------
    //- PIE CHART -
    //-------------
    function subStatusPie(lablesArray, dataArray, colorArray) {
      var donutData = {
        labels: lablesArray,
        datasets: [
          {
            data: dataArray,
            backgroundColor: colorArray,
          }
        ]
      }

      // Get context with jQuery - using jQuery's .get() method.
      var pieChartCanvas = $('#pieSubStatus').get(0).getContext("2d")
      var pieData = donutData;
      var pieOptions = {
        maintainAspectRatio: false,
        responsive: true,
      }
      //Create pie or douhnut chart
      // You can switch between pie and douhnut using the method below.
      var pieChart = new Chart(pieChartCanvas, {
        type: 'pie',
        data: pieData,
        options: pieOptions
      })
    }

    //-------------
    //- DONUT CHART -
    //-------------
    function statusActivityDonut(lablesArray, dataArray, colorArray) {
      // Get context with jQuery - using jQuery's .get() method.
      var donutChartCanvas = $('#donutStatus').get(0).getContext("2d")
      var donutData = {
        labels: lablesArray,
        datasets: [
          {
            data: dataArray,
            backgroundColor: colorArray,
          }
        ]
      }
      var donutOptions = {
        maintainAspectRatio: false,
        responsive: true,
      }
      //Create pie or douhnut chart
      // You can switch between pie and douhnut using the method below.
      var donutChart = new Chart(donutChartCanvas, {
        type: 'doughnut',
        data: donutData,
        options: donutOptions
      })
    }

    //-------------
    //- BAR CHART -
    //-------------
    function documentTBar(datasetVar) {
      var areaChartData = {
        labels: ['Tipos de Documentos'],
        datasets: datasetVar
      }

      var barChartCanvas = $('#barDocTypes').get(0).getContext("2d")
      var barChartData = jQuery.extend(true, {}, areaChartData)
      for (var i = 0; i < areaChartData.datasets.length; i++) {
        barChartData.datasets[i] = areaChartData.datasets[i]
      }

      var barChartOptions = {
        responsive: true,
        maintainAspectRatio: false,
        datasetFill: false
      }

      var barChart = new Chart(barChartCanvas, {
        type: 'bar',
        data: barChartData,
        options: barChartOptions
      })
    }

    //--------------
    //- AREA CHART -
    //--------------
    function monthAreas(datasetVar, labelsVar) {
      var areaChartCanvas = $('#areaMonthChart').get(0).getContext("2d")

      var areaChartData = {
        labels: labelsVar,
        datasets: datasetVar
      }

      var areaChartOptions = {
        maintainAspectRatio: false,
        responsive: true,
        legend: {
          display: true
        },
        scales: {
          xAxes: [{
            gridLines: {
              display: true,
            }
          }],
          yAxes: [{
            gridLines: {
              display: true,
            }
          }]
        }
      }

      var areaChart = new Chart(areaChartCanvas, {
        type: 'line',
        data: areaChartData,
        options: areaChartOptions
      })
    }

    function yearAreas(datasetVar, labelsVar) {
      var areaChartCanvas = $('#areaYearChart').get(0).getContext("2d")

      var areaChartData = {
        labels: labelsVar,
        datasets: datasetVar
      }

      var areaChartOptions = {
        maintainAspectRatio: false,
        responsive: true,
        legend: {
          display: true
        },
        scales: {
          xAxes: [{
            gridLines: {
              display: true,
            }
          }],
          yAxes: [{
            gridLines: {
              display: true,
            }
          }]
        }
      }

      var areaChart = new Chart(areaChartCanvas, {
        type: 'line',
        data: areaChartData,
        options: areaChartOptions
      })
    }

    function localStorageSave(usr, pass) {
      localStorage.setItem('usr', usr);
      localStorage.setItem('pw', pass);
    };

    function sessionStorageSave(usr, pass) {
      sessionStorage.setItem('usr', usr);
      sessionStorage.setItem('pw', pass);
    };
  </script>
</asp:Content>
