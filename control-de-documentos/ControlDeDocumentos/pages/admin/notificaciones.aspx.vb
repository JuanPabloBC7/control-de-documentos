Public Class notificaciones
  Inherits System.Web.UI.Page

  Public Shared n As notifications = New notifications()

  Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    If Not Page.IsPostBack Then
      create_notifications()

      If Request.QueryString.ToString.Contains("p") Then
        Dim priority As String = Request.QueryString("p")
        showNotifications(priority)
      End If
    End If
  End Sub

  Private Sub create_notifications()
    Dim ds As DataSet = New DataSet
    Dim today As DateTime = DateTime.Now.ToString("yyyy/MM/dd")
    Dim count As Int32 = 0

    numImportantNotf.InnerText = 0
    numFixesNotf.InnerText = 0
    numUpgradesNotf.InnerText = 0
    numHistorial.InnerText = 0

    fixes.Text = ""
    upgrade.Text = ""
    notificationslist.Text = ""

    ds = n.notificaciones()
    If ds.Tables(0).Rows.Count > 0 Then
      For i = 0 To ds.Tables(0).Rows.Count - 1
        If ds.Tables(0).Rows(i)("show").Equals("Y") Then
          Select Case ds.Tables(0).Rows(i)("priority")
            Case "0"

            Case "1"
              numImportantNotf.InnerText += Int32.Parse(numImportantNotf.InnerText) + 1
            Case "2"
              fixes.Text += ds.Tables(0).Rows(i)("notification")
              numFixesNotf.InnerText = Int32.Parse(numFixesNotf.InnerText) + 1
            Case "3"
              upgrade.Text += ds.Tables(0).Rows(i)("notification")
              numUpgradesNotf.InnerText = Int32.Parse(numUpgradesNotf.InnerText) + 1
            Case Else

          End Select

          notificationslist.Text += "<li class=""nav-item"">"
          notificationslist.Text += " <a href=""#" + ds.Tables(0).Rows(i)("anchor").ToString() + """ class=""nav-link""> "
          notificationslist.Text += "  <i class=""" + ds.Tables(0).Rows(i)("icon").ToString() + " mr-2""></i>" + ds.Tables(0).Rows(i)("title").ToString()
          If DateDiff(DateInterval.Day, today, ds.Tables(0).Rows(i)("expires")) >= 0 Then
            count += 1
            notificationslist.Text += "  <span class=""text-danger text-sm float-right"">nuevo</span>"
          End If
          notificationslist.Text += " </a>"
          notificationslist.Text += "</li>"

        End If
      Next

      numHistorial.InnerText = ds.Tables(0).Rows.Count
    End If

  End Sub

  Protected Sub importantlink_ServerClick(sender As Object, e As EventArgs)
    showNotifications("1")
    Response.Redirect("/pages/admin/notificaciones.aspx?p=1")
  End Sub

  Protected Sub fixeslink_ServerClick(sender As Object, e As EventArgs)
    showNotifications("2")
    Response.Redirect("/pages/admin/notificaciones.aspx?p=2")
  End Sub

  Protected Sub upgradeslink_ServerClick(sender As Object, e As EventArgs)
    showNotifications("3")
    Response.Redirect("/pages/admin/notificaciones.aspx?p=3")
  End Sub

  Protected Sub historylink_ServerClick(sender As Object, e As EventArgs)
    showNotifications("0")
    Response.Redirect("/pages/admin/notificaciones.aspx?p=0")
  End Sub

  Private Sub showNotifications(priority As String)
    Select Case priority
      Case "0"
        importantes.Visible = True
        correcciones.Visible = True
        mejoras.Visible = True
      Case "1"
        importantes.Visible = True
        correcciones.Visible = False
        mejoras.Visible = False
      Case "2"
        importantes.Visible = False
        correcciones.Visible = True
        mejoras.Visible = False
      Case "3"
        importantes.Visible = False
        correcciones.Visible = False
        mejoras.Visible = True
      Case Else
        importantes.Visible = False
        correcciones.Visible = False
        mejoras.Visible = False
    End Select
  End Sub
End Class