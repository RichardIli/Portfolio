<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class LoginForm
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.loginButton = New System.Windows.Forms.Button()
        Me.passTextBox = New System.Windows.Forms.TextBox()
        Me.passLabel = New System.Windows.Forms.Label()
        Me.userTextBox = New System.Windows.Forms.TextBox()
        Me.usernameLabel = New System.Windows.Forms.Label()
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Panel1
        '
        Me.Panel1.Controls.Add(Me.loginButton)
        Me.Panel1.Controls.Add(Me.passTextBox)
        Me.Panel1.Controls.Add(Me.passLabel)
        Me.Panel1.Controls.Add(Me.userTextBox)
        Me.Panel1.Controls.Add(Me.usernameLabel)
        Me.Panel1.Location = New System.Drawing.Point(158, 88)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(200, 149)
        Me.Panel1.TabIndex = 0
        '
        'loginButton
        '
        Me.loginButton.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.loginButton.Location = New System.Drawing.Point(0, 126)
        Me.loginButton.Name = "loginButton"
        Me.loginButton.Size = New System.Drawing.Size(200, 23)
        Me.loginButton.TabIndex = 4
        Me.loginButton.Text = "Log in"
        Me.loginButton.UseVisualStyleBackColor = True
        '
        'passTextBox
        '
        Me.passTextBox.Dock = System.Windows.Forms.DockStyle.Top
        Me.passTextBox.Location = New System.Drawing.Point(0, 80)
        Me.passTextBox.Name = "passTextBox"
        Me.passTextBox.Size = New System.Drawing.Size(200, 20)
        Me.passTextBox.TabIndex = 3
        '
        'passLabel
        '
        Me.passLabel.Dock = System.Windows.Forms.DockStyle.Top
        Me.passLabel.Location = New System.Drawing.Point(0, 50)
        Me.passLabel.Name = "passLabel"
        Me.passLabel.Padding = New System.Windows.Forms.Padding(5, 10, 5, 5)
        Me.passLabel.Size = New System.Drawing.Size(200, 30)
        Me.passLabel.TabIndex = 2
        Me.passLabel.Text = "Password"
        Me.passLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'userTextBox
        '
        Me.userTextBox.Dock = System.Windows.Forms.DockStyle.Top
        Me.userTextBox.Location = New System.Drawing.Point(0, 30)
        Me.userTextBox.Name = "userTextBox"
        Me.userTextBox.Size = New System.Drawing.Size(200, 20)
        Me.userTextBox.TabIndex = 1
        '
        'usernameLabel
        '
        Me.usernameLabel.Dock = System.Windows.Forms.DockStyle.Top
        Me.usernameLabel.Location = New System.Drawing.Point(0, 0)
        Me.usernameLabel.Name = "usernameLabel"
        Me.usernameLabel.Padding = New System.Windows.Forms.Padding(5, 10, 5, 5)
        Me.usernameLabel.Size = New System.Drawing.Size(200, 30)
        Me.usernameLabel.TabIndex = 0
        Me.usernameLabel.Text = "User Name"
        Me.usernameLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'LoginForm
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(519, 337)
        Me.Controls.Add(Me.Panel1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Name = "LoginForm"
        Me.ShowIcon = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Login Form"
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents Panel1 As Panel
    Friend WithEvents passTextBox As TextBox
    Friend WithEvents passLabel As Label
    Friend WithEvents userTextBox As TextBox
    Friend WithEvents usernameLabel As Label
    Friend WithEvents loginButton As Button
End Class
