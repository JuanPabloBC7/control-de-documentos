﻿#If _MyType <> "Empty" Then

Namespace My
    ''' <summary>
    ''' Módulo usado para definir las propiedades que están disponibles en el espacio de nombres My para proyectos web.
    ''' </summary>
    ''' <remarks></remarks>
    <Global.Microsoft.VisualBasic.HideModuleName()> _
    Module MyWebExtension
        Private ReadOnly s_Computer As New ThreadSafeObjectProvider(Of Global.Microsoft.VisualBasic.Devices.ServerComputer)
        Private ReadOnly s_User As New ThreadSafeObjectProvider(Of Global.Microsoft.VisualBasic.ApplicationServices.WebUser)
        Private ReadOnly s_Log As New ThreadSafeObjectProvider(Of Global.Microsoft.VisualBasic.Logging.AspLog)
        ''' <summary>
        ''' Devuelve información sobre el equipo host.
        ''' </summary>
        <Global.System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")> _
        Friend ReadOnly Property Computer() As Global.Microsoft.VisualBasic.Devices.ServerComputer
            Get
                Return s_Computer.GetInstance()
            End Get
        End Property
        ''' <summary>
        ''' Devuelve información del usuario web actual.
        ''' </summary>
        <Global.System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")> _
        Friend ReadOnly Property User() As Global.Microsoft.VisualBasic.ApplicationServices.WebUser
            Get
                Return s_User.GetInstance()
            End Get
        End Property
        ''' <summary>
        ''' Devuelve un objeto Request.
        ''' </summary>
        <Global.System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")> _
        <Global.System.ComponentModel.Design.HelpKeyword("My.Request")> _
        Friend ReadOnly Property Request() As Global.System.Web.HttpRequest
            <Global.System.Diagnostics.DebuggerHidden()> _
            Get
                Dim CurrentContext As Global.System.Web.HttpContext = Global.System.Web.HttpContext.Current
                If CurrentContext IsNot Nothing Then
                    Return CurrentContext.Request
                End If
                Return Nothing
            End Get
        End Property
        ''' <summary>
        ''' Devuelve un objeto Response.
        ''' </summary>
        <Global.System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")> _
         <Global.System.ComponentModel.Design.HelpKeyword("My.Response")> _
         Friend ReadOnly Property Response() As Global.System.Web.HttpResponse
            <Global.System.Diagnostics.DebuggerHidden()> _
            Get
                Dim CurrentContext As Global.System.Web.HttpContext = Global.System.Web.HttpContext.Current
                If CurrentContext IsNot Nothing Then
                    Return CurrentContext.Response
                End If
                Return Nothing
            End Get
        End Property
        ''' <summary>
        ''' Devuelve el objeto de registro Asp.
        ''' </summary>
        <Global.System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")> _
        Friend ReadOnly Property Log() As Global.Microsoft.VisualBasic.Logging.AspLog
            Get
                Return s_Log.GetInstance()
            End Get
        End Property
     End Module
End Namespace

#End If