Public Class WarningForm
    Public Property useriput As String

    Private Sub Label2_Click(sender As Object, e As EventArgs) Handles Label2.Click
        Label2.Text = useriput
        Print(useriput)

    End Sub
End Class