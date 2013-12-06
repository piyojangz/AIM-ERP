Public Class MessageBox
    Inherits System.Web.UI.UserControl

#Region "Declare"
    Public Delegate Sub ConfirmClickEventHandler(ByVal sender As Object, ByVal e As System.EventArgs)
    Public Event ConfirmClick As ConfirmClickEventHandler
#End Region

#Region "Property"
    Public ReadOnly Property UniqueSession()
        Get
            Return Me.Parent.ClientID & Me.ClientID & Me.Session.SessionID
        End Get
    End Property
#End Region

#Region "ENum"
    Enum EMessageIcon
        [Error]
        [Infomation]
        [QuestionMark]
        [Warning]
    End Enum

    Enum EMessageType
        [Alert]
        [Confirm]
    End Enum
#End Region

#Region "Page Event"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub
#End Region

#Region "Control Method"
    Private Sub btnCloseMessage_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCloseMessage.Click
        Dim Control As Control
        Control = Session("CurrentControl")
        Me.SetFocused(Control)
    End Sub

    Private Sub btnConfirm_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnConfirm.Click
        RaiseEvent ConfirmClick(sender, e)
    End Sub
#End Region

#Region "Function"
    Public Function MessageIconPath(ByVal MessageIcon As EMessageIcon) As String
        Dim Path As String = ""
        Select Case MessageIcon
            Case EMessageIcon.Error
                Path = "imgError.PNG"
            Case EMessageIcon.Infomation
                Path = "imgInformation.PNG"
            Case EMessageIcon.QuestionMark
                Path = "imgQuestionMark.PNG"
            Case EMessageIcon.Warning
                Path = "imgWarning.PNG"
            Case Else
                Path = ""
        End Select
        Return "../Image/Message/" & Path
    End Function
#End Region

#Region "Sub"
    Public Sub ShowDialog(ByVal Message As String, ByVal CurrentControl As Control, ByVal MessageType As EMessageType, ByVal MessageIcon As EMessageIcon)
        Me.lblMessage.Text = Message
        Me.imgMessage.ImageUrl = Me.MessageIconPath(MessageIcon)
        Me.mpeMessage.Show()
        Session("CurrentControl") = CurrentControl

        Select Case MessageType
            Case EMessageType.Alert
                Me.btnCloseMessage.Visible = True
                Me.btnDecline.Visible = False
                Me.btnConfirm.Visible = False
                Me.SetFocused(Me.btnCloseMessage)
            Case EMessageType.Confirm
                Me.btnCloseMessage.Visible = False
                Me.btnDecline.Visible = True
                Me.btnConfirm.Visible = True
                Me.SetFocused(Me.btnDecline)
        End Select
    End Sub

    Public Sub SetFocused(ByVal Control As Control)
        ScriptManager.GetCurrent(Page).SetFocus(Control)
    End Sub
#End Region

End Class