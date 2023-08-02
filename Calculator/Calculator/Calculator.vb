Public Class CalculatorForm

    Dim num1 As String = "  "
    Dim num2 As String
    Dim num3 As String
    Dim arr() As String = {" ", "*", "/", "+", "-"}
    Dim ar As Integer = 0
    Dim ans As String = "="

    Function LabelsettingnunbersFunction(arinput As String, input3 As String) As String
        If arinput = 0 Then
            num1 = num1 & input3
            Label1.Text = num1
        ElseIf ar = 1 Then
            num2 = num2 & input3
            Label2.Text = arr(ar) & num2
        ElseIf ar = 2 Then
            num2 = num2 & input3
            Label2.Text = arr(ar) & num2
        ElseIf ar = 3 Then
            num2 = num2 & input3
            Label2.Text = arr(ar) & num2
        ElseIf ar = 4 Then
            num2 = num2 & input3
            Label2.Text = arr(ar) & num2
        Else
            num2 = num2 & "0"
        End If
    End Function

    Function IdentifyingFormulaFunction()
        Label2.Text = arr(ar) & "0"
    End Function

    Dim num1st
    Dim num2nd
    Dim ans1
    Function MFunction()
        num1st = Convert.ToDecimal(num1)
        num2nd = Convert.ToDecimal(num2)
        ans1 = num1st * num2nd
        Label3.Text = ans & ans1
        ButtonDisabling()
    End Function

    Function DFunction()
        num1st = Convert.ToDecimal(num1)
        num2nd = Convert.ToDecimal(num2)
        ans1 = num1st / num2nd
        Label3.Text = ans & ans1
        ButtonDisabling()
    End Function

    Function AFunction()
        num1st = Convert.ToDecimal(num1)
        num2nd = Convert.ToDecimal(num2)
        ans1 = num1st + num2nd
        Label3.Text = ans & ans1
        ButtonDisabling()
    End Function

    Function SFunction()
        num1st = Convert.ToDecimal(num1)
        num2nd = Convert.ToDecimal(num2)
        ans1 = num1st - num2nd
        Label3.Text = ans & ans1
        ButtonDisabling()
    End Function

    Function ButtonDisabling()
        Button0.Enabled = False
        Button1.Enabled = False
        Button2.Enabled = False
        Button3.Enabled = False
        Button4.Enabled = False
        Button5.Enabled = False
        Button6.Enabled = False
        Button7.Enabled = False
        Button8.Enabled = False
        Button9.Enabled = False
        dotButton.Enabled = False
        clearButton.Enabled = False
        multiplyButton.Enabled = False
        divideButton.Enabled = False
        subtractButton.Enabled = False
        addButton.Enabled = False
        equalButton.Enabled = False

    End Function

    Private Sub offButton_Click(sender As Object, e As EventArgs) Handles clearButton.Click
        Application.Restart()
    End Sub

    Private Sub Button0_Click(sender As Object, e As EventArgs) Handles Button0.Click
        num3 = "0"
        LabelsettingnunbersFunction(ar, num3)
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        num3 = "1"
        LabelsettingnunbersFunction(ar, num3)

    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        num3 = "2"
        LabelsettingnunbersFunction(ar, num3)
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        num3 = "3"
        LabelsettingnunbersFunction(ar, num3)
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        num3 = "4"
        LabelsettingnunbersFunction(ar, num3)
    End Sub

    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        num3 = "5"
        LabelsettingnunbersFunction(ar, num3)
    End Sub

    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        num3 = "6"
        LabelsettingnunbersFunction(ar, num3)
    End Sub

    Private Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        num3 = "7"
        LabelsettingnunbersFunction(ar, num3)
    End Sub

    Private Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        num3 = "8"
        LabelsettingnunbersFunction(ar, num3)
    End Sub

    Private Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        num3 = "9"
        LabelsettingnunbersFunction(ar, num3)
    End Sub

    Private Sub dotButton_Click(sender As Object, e As EventArgs) Handles dotButton.Click
        num3 = "."
        LabelsettingnunbersFunction(ar, num3)
    End Sub

    'sdjkfkewj
    Private Sub equalButton_Click(sender As Object, e As EventArgs) Handles equalButton.Click
        If ar = 0 Then
            Label3.Text = "=0"
        ElseIf ar = 1 Then
            MFunction()
        ElseIf ar = 2 Then
            DFunction()
        ElseIf ar = 3 Then
            AFunction()
        ElseIf ar = 4 Then
            SFunction()
        End If

    End Sub

    Private Sub multiplyButton_Click(sender As Object, e As EventArgs) Handles multiplyButton.Click
        ar = 1
        IdentifyingFormulaFunction()
    End Sub
    Private Sub divideButton_Click(sender As Object, e As EventArgs) Handles divideButton.Click
        ar = 2
        IdentifyingFormulaFunction()
    End Sub

    Private Sub addButton_Click(sender As Object, e As EventArgs) Handles addButton.Click
        ar = 3
        IdentifyingFormulaFunction()
    End Sub

    Private Sub subtractButton_Click(sender As Object, e As EventArgs) Handles subtractButton.Click
        ar = 4
        IdentifyingFormulaFunction()
    End Sub

    Private Sub enternewButton_Click(sender As Object, e As EventArgs) Handles enternewButton.Click
        Application.Restart()
    End Sub
End Class
