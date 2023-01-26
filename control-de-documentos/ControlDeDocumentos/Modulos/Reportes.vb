Module Reportes

    Dim PathContratoIni As String = String.Empty

#Region "LOGIN"

    Public User As String = ConfigurationManager.AppSettings("User").ToString
    Public Pass As String = ConfigurationManager.AppSettings("Pass").ToString
    Public Server As String = ConfigurationManager.AppSettings("Server").ToString
    Public Database As String = ConfigurationManager.AppSettings("Database").ToString
    Public AttachmentName As String = Nothing

#End Region

#Region "PATH"

    Private PathReporte As String = ConfigurationManager.AppSettings("PathReportes").ToString

#End Region

#Region "FUNCIONES"
    Public Function UbicacionReportes(ByVal Reporte As String)

        Select Case Reporte
            Case "Reporte_1"
                AttachmentName = "ListadoUsuariosJP " & DateTime.Now()
                Return PathReporte & "ListadoUsuarioJP.rpt"
            Case "Reporte_2"
                AttachmentName = "ListadoAsistenciaJP " & DateTime.Now()
                Return PathReporte & "ListadoAsistenciaJP.rpt"
            Case "Reporte_3"
                AttachmentName = "PadrónUsuarios_JP " & DateTime.Now()
                Return PathReporte & "PadronUsuarios_JP.rpt"
            Case "Reporte_4"
                AttachmentName = "PadrónUnidadGenero_JP " & DateTime.Now()
                Return PathReporte & "PadronUnidadGenero_JP.rpt"
            Case "Reporte_5"
                AttachmentName = "InscritoDesagregadoPorSexo_JP " & DateTime.Now()
                Return PathReporte & "InscritoDesagregadoPorSexo_JP.rpt"
            Case "Reporte_6"
                AttachmentName = "Inscritos_JP " & DateTime.Now()
                Return PathReporte & "Inscritos_JP.rpt"
            Case "Reporte_7"
                AttachmentName = "Inscritos12a30_JP " & DateTime.Now()
                Return PathReporte & "Inscritos12a30_JP.rpt"
            Case "Reporte_8"
                AttachmentName = "PadronUnidadGeneroMasculinoFemenino_JP " & DateTime.Now()
                Return PathReporte & "PadronUnidadGeneroMasculinoFemenino_JP.rpt"
            Case "Reporte_9"
                AttachmentName = "ConsolidadoUsrTaller_JP " & DateTime.Now()
                Return PathReporte & "ConsolidadoUsrTaller_JP.rpt"
            Case "Reporte_10"
                AttachmentName = "PadronUsr_DeptoMun_JP " & DateTime.Now()
                Return PathReporte & "PadronUsr_DeptoMun_JP.rpt"
            Case "Reporte_11"
                AttachmentName = "PadronUsrDepartamento_JP " & DateTime.Now()
                Return PathReporte & "PadronUsrDepartamento_JP.rpt"
            Case "Reporte_12"
                AttachmentName = "PadronUsuarios_JP_1 " & DateTime.Now()
                Return PathReporte & "PadronUsuarios_JP_1.rpt"
            Case "Reporte_13"
                AttachmentName = "PadronUsuarios_JP_2 " & DateTime.Now()
                Return PathReporte & "PadronUsuarios_JP_2.rpt"
            Case "Reporte_14"
                AttachmentName = "PadronUsuarios_JP_3 " & DateTime.Now()
                Return PathReporte & "PadronUsuarios_JP_3.rpt"
            Case "Reporte_15"
                AttachmentName = "PadronUsuarios_JP_4 " & DateTime.Now()
                Return PathReporte & "PadronUsuarios_JP_4.rpt"
            Case "Reporte_16"
                AttachmentName = "PadronUsuarios_JP_5 " & DateTime.Now()
                Return PathReporte & "PadronUsuarios_JP_5.rpt"
            Case "Reporte_17"
                AttachmentName = "PadronUnidadGeneroMonitoreoEvaluacion_JP " & DateTime.Now()
                Return PathReporte & "PadronUnidadGeneroMonitoreoEvaluacion_JP.rpt"
            Case "Reporte_18"
                AttachmentName = "PadronUnidadGeneroMasculinoFemeninoPueblos_JP " & DateTime.Now()
                Return PathReporte & "PadronUnidadGeneroMasculinoFemeninoPueblos_JP.rpt"
            Case "Reporte_19"
                AttachmentName = "MenoresEdadInscritos_JP " & DateTime.Now()
                Return PathReporte & "MenoresEdadInscritos_JP.rpt"
            Case "Reporte_20"
                AttachmentName = "AsistenciaUsuario_JP " & DateTime.Now()
                Return PathReporte & "AsistenciaUsuario_JP.rpt"
            Case "Reporte_21"
                AttachmentName = "TransferenciaUsuario_JP " & DateTime.Now()
                Return PathReporte & "TransferenciaUsuario_JP.rpt"
            Case "Reporte_22"
                AttachmentName = "ASISTENCIA DE USUARIOS POR DEPARTAMENTO Y EDAD_JP " & DateTime.Now()
                Return PathReporte & "ASISTENCIA DE USUARIOS POR DEPARTAMENTO Y EDAD_JP.rpt"

            Case "Reporte_23"
                AttachmentName = "CODISRA_JP " & DateTime.Now()
                Return PathReporte & "CODISRA_JP.rpt"

            Case "Reporte_24"
                AttachmentName = "PADRON DE INSCRITOS POR EDAD Y ETNIA DIRECCION_JP " & DateTime.Now()
                Return PathReporte & "PADRON DE INSCRITOS POR EDAD Y ETNIA DIRECCION_JP.rpt"

            Case "Reporte_25"
                AttachmentName = "PRODUCCION FISICA MENSUAL JOVENES PROTAGONISTAS_JP " & DateTime.Now()
                Return PathReporte & "PRODUCCION FISICA MENSUAL JOVENES PROTAGONISTAS_JP.rpt"

            Case "Reporte_26"
                AttachmentName = "FichaInscripcion_JP " & DateTime.Now()
                Return PathReporte & "FichaInscripcion_JP.rpt"

            Case "Reporte_27"
                AttachmentName = "RecibieronRefaccion_JP" & DateTime.Now()
                Return PathReporte & "RecibieronRefaccion_JP.rpt"

            Case "Reporte_28"
                AttachmentName = "AsistenciaUsuarios_JP" & DateTime.Now()
                Return PathReporte & "AsistenciaUsuarios_JP.rpt"

            Case "Reporte_29"
                AttachmentName = "PadronComunidadLing_JP" & DateTime.Now()
                Return PathReporte & "PadronComunidadLing_JP.rpt"

            Case "Reporte_30"
                AttachmentName = "PadronUsrIngresaFicha_JP" & DateTime.Now()
                Return PathReporte & "PadronUsrIngresaFicha_JP.rpt"

            Case "Reporte_31"
                AttachmentName = "GestoresJuvenilesInscritos" & DateTime.Now()
                Return PathReporte & "GestoresJuvenilesInscritos.rpt"

            Case Else
                Return Nothing
        End Select

    End Function

#End Region

    

End Module
