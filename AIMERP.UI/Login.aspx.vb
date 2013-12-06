Public Class Login
    Inherits BaseWebForm

#Region "Declare"

#End Region

#Region "Page Event"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.Page.IsPostBack Then
            Me.PageTitle.Text = "AIM Thai Fruit"
        Else

        End If

        Me.lblVersion.Text = " v." & My.Application.Info.Version.ToString()
        Me.lblHostName.Text = System.Net.Dns.GetHostName
    End Sub
#End Region

#Region "Control Method"
    Private Sub btnLogin_Click(sender As Object, e As System.EventArgs) Handles btnLogin.Click
        Dim ErrorMsg As String
        Dim ErrorControl As Control

        ErrorMsg = ValidateValue(ErrorControl)

        If ErrorMsg.ToString.Trim = "" Then

        Else
            Me.Blur()
            Me.MessageBox1.ShowDialog(ErrorMsg _
                                      , ErrorControl _
                                      , EMessageType.Alert _
                                      , EMessageIcon.Warning)
        End If
    End Sub

    Private Sub btnBypass_Click(sender As Object, e As System.EventArgs) Handles btnBypass.Click
        Response.Redirect("Demo.aspx")
    End Sub
#End Region

#Region "Sub"

#End Region

#Region "Function"
    Private Function ValidateValue(ByRef ErrorControl As Control) As String
        Select Case True
            Case Me.txtUsername.Text = ""
                ErrorControl = Me.txtUsername
                Return "กรุณาใส่ชื่อผู้ใช้งาน"
            Case Me.txtPassword.Text = ""
                ErrorControl = Me.txtPassword
                Return "กรุณาใส่รหัสผ่าน"
        End Select

        Return ""
    End Function
#End Region
End Class