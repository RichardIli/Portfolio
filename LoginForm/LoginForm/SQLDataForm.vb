'Importing the plugin needed to connect the VB to MySQL wich is the "MySQL.Data"
Imports MySql.Data.MySqlClient

Public Class SQLdataForm

    'assuming that the database has 127.0.0.1 as server address, root as user connection name, 091234 as user connection password and sampledb as database name
    'declaring the needed variables for MySQL query
    Private Const server As String = "127.0.0.1"
    Private Const user As String = "root"
    Private Const password As String = "091234"
    Private Const database As String = "sampledb"

    'declaring conn as MySQL Connection
    Private conn As MySqlConnection

    Private Sub Panel1_Paint(sender As Object, e As PaintEventArgs) Handles Panel1.Paint
        'Stablishing the connection between VB and MySQL
        conn = New MySqlConnection("server=" & server & ";user=" & user & ";password=" & password & ";database=" & database & ";")

        'Openning the MySQL database
        conn.Open()

        'Prepare SQL query and assuming that the table name is userandpass
        Dim strSQL As String = "SELECT * FROM userandpass;"
        Dim cmd As New MySqlCommand(strSQL, conn)

        ' Execute the SQL statement
        Dim reader As MySqlDataReader = cmd.ExecuteReader()

        ' Assuming that the database has username and userpass collumn and Print the data to the screen 
        While reader.Read()
            userListBox.Items.Add(reader("username").ToString())
            passListBox.Items.Add(reader("userpass").ToString())
        End While


    End Sub
End Class