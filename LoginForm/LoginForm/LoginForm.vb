'Importing the plugin needed to connect the VB to MySQL wich is the "MySQL.Data"
Imports MySql.Data.MySqlClient

Public Class LoginForm
    'assuming that the database has 127.0.0.1 as server address, root as user connection name, 091234 as user connection password and sampledb as database name
    'declaring the needed variables for MySQL query
    Private Const server As String = "127.0.0.1"
    Private Const user As String = "root"
    Private Const password As String = "091234"
    Private Const database As String = "sampledb"

    'declaring conn as MySQL Connection
    Private conn As MySqlConnection

    'Action perform uppon clicking the login button
    Private Sub loginButton_Click(sender As Object, e As EventArgs) Handles loginButton.Click

        'Declaring variable that will be used to compare in MySQL data
        Dim userinput = userTextBox.Text, passinput = passTextBox.Text

        'Stablishing the connection between VB and MySQL
        conn = New MySqlConnection("server=" & server & ";user=" & user & ";password=" & password & ";database=" & database & ";")

        'Openning the MySQL database
        conn.Open()

        'Assuming that the database has the userandpass as the table name, username collumn and userpass collumn for user login comparison and Preparing MySQL query
        Dim strSQL As String = "SELECT * FROM userandpass WHERE username=@username AND userpass=@userpassword;"
        Dim cmd As New MySqlCommand(strSQL, conn)
        cmd.Parameters.AddWithValue("@username", userinput)
        cmd.Parameters.AddWithValue("@userpassword", passinput)

        'Executing MySQL query
        Dim reader As MySqlDataReader = cmd.ExecuteReader()

        'Checking if the login was succesful and navigate to the next window form
        If reader.HasRows Then

            'openthe SQLdataForm
            Dim newForm As New SQLdataForm()
            SQLdataForm.Show()

        Else
            MessageBox.Show("Login failed. Invalid username or password.", "warning", MessageBoxButtons.OK, MessageBoxIcon.Warning)
        End If

        'closing MySQL database
        conn.Close()


    End Sub

    Private Sub passTextBox_TextChanged(sender As Object, e As EventArgs) Handles passTextBox.TextChanged
        passTextBox.UseSystemPasswordChar = True
    End Sub
End Class
