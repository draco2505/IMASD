
Partial Class Temas_de_interes
    Inherits System.Web.UI.Page

    Protected Sub btnguardar_Click(sender As Object, e As ImageClickEventArgs)
        txtinstitucion.Text = "instituto del solario"
        txtnombrepro.Text = "cataclismos"
        txttitulo.Text = "consecuencias del calentamiento global"
    End Sub

    Protected Sub btncancel_Click(sender As Object, e As ImageClickEventArgs)
        txtinstitucion.Text = ""
        txtnombrepro.Text = ""
        txttitulo.Text = ""
    End Sub
End Class
