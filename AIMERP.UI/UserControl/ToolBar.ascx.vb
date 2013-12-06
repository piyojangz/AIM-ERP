Public Class ToolBar
    Inherits System.Web.UI.UserControl

#Region "Declare"
    Public Delegate Sub NewClickEventHandler(ByVal sender As Object, ByVal e As System.EventArgs)
    Public Event NewClick As NewClickEventHandler
    Public Delegate Sub SaveClickEventHandler(ByVal sender As Object, ByVal e As System.EventArgs)
    Public Event SaveClick As SaveClickEventHandler
    Public Delegate Sub ClearClickEventHandler(ByVal sender As Object, ByVal e As System.EventArgs)
    Public Event ClearClick As ClearClickEventHandler
    Public Delegate Sub BackClickEventHandler(ByVal sender As Object, ByVal e As System.EventArgs)
    Public Event BackClick As BackClickEventHandler
    Public Delegate Sub NextClickEventHandler(ByVal sender As Object, ByVal e As System.EventArgs)
    Public Event NextClick As NextClickEventHandler
    Public Delegate Sub DeleteClickEventHandler(ByVal sender As Object, ByVal e As System.EventArgs)
    Public Event DeleteClick As DeleteClickEventHandler
    Public Delegate Sub PrintClickEventHandler(ByVal sender As Object, ByVal e As System.EventArgs)
    Public Event PrintClick As PrintClickEventHandler
    Public Delegate Sub AttachClickEventHandler(ByVal sender As Object, ByVal e As System.EventArgs)
    Public Event AttachClick As AttachClickEventHandler
    Public Delegate Sub SearchClickEventHandler(ByVal sender As Object, ByVal e As System.EventArgs)
    Public Event SearchClick As SearchClickEventHandler
#End Region

#Region "ENum"
    Enum EToolBarButton
        [New]
        Save
        Clear
        Back
        [Next]
        Delete
        Print
        Attach
        Search
    End Enum
#End Region

#Region "Property"
    Public ReadOnly Property UniqueSession()
        Get
            Return Me.Parent.ClientID & Me.ClientID & Me.Session.SessionID
        End Get
    End Property

    Public WriteOnly Property EnableNew As Boolean
        Set(value As Boolean)
            Me.btnNew.Disabled = Not value
        End Set
    End Property

    Public WriteOnly Property EnableSave As Boolean
        Set(value As Boolean)
            Me.btnSave.Disabled = Not value
        End Set
    End Property

    Public WriteOnly Property EnableClear As Boolean
        Set(value As Boolean)
            Me.btnClear.Disabled = Not value
        End Set
    End Property

    Public WriteOnly Property EnableBack As Boolean
        Set(value As Boolean)
            Me.btnBack.Disabled = Not value
        End Set
    End Property

    Public WriteOnly Property EnableNext As Boolean
        Set(value As Boolean)
            Me.btnNext.Disabled = Not value
        End Set
    End Property

    Public WriteOnly Property EnableDelete As Boolean
        Set(value As Boolean)
            Me.btnDelete.Disabled = Not value
        End Set
    End Property

    Public WriteOnly Property EnablePrint As Boolean
        Set(value As Boolean)
            Me.btnPrint.Disabled = Not value
        End Set
    End Property

    Public WriteOnly Property EnableAttach As Boolean
        Set(value As Boolean)
            Me.btnAttcah.Disabled = Not value
        End Set
    End Property

    Public WriteOnly Property EnableSearch As Boolean
        Set(value As Boolean)
            Me.btnSearch.Disabled = Not value
        End Set
    End Property

#End Region

#Region "Page Event"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
#End Region

#Region "Control Method"
    Private Sub btnNew_ServerClick(sender As Object, e As System.EventArgs) Handles btnNew.ServerClick
        RaiseEvent NewClick(sender, e)
    End Sub

    Private Sub btnSave_ServerClick(sender As Object, e As System.EventArgs) Handles btnSave.ServerClick
        RaiseEvent SaveClick(sender, e)
    End Sub

    Private Sub btnClear_ServerClick(sender As Object, e As System.EventArgs) Handles btnClear.ServerClick
        RaiseEvent ClearClick(sender, e)
    End Sub

    Private Sub btnBack_ServerClick(sender As Object, e As System.EventArgs) Handles btnBack.ServerClick
        RaiseEvent BackClick(sender, e)
    End Sub

    Private Sub btnNext_ServerClick(sender As Object, e As System.EventArgs) Handles btnNext.ServerClick
        RaiseEvent NextClick(sender, e)
    End Sub

    Private Sub btnDelete_ServerClick(sender As Object, e As System.EventArgs) Handles btnDelete.ServerClick
        RaiseEvent DeleteClick(sender, e)
    End Sub

    Private Sub btnPrint_ServerClick(sender As Object, e As System.EventArgs) Handles btnPrint.ServerClick
        RaiseEvent PrintClick(sender, e)
    End Sub

    Private Sub btnAttcah_ServerClick(sender As Object, e As System.EventArgs) Handles btnAttcah.ServerClick
        RaiseEvent AttachClick(sender, e)
    End Sub

    Private Sub btnSearch_ServerClick(sender As Object, e As System.EventArgs) Handles btnSearch.ServerClick
        RaiseEvent SearchClick(sender, e)
    End Sub
#End Region

#Region "Function"

#End Region

#Region "sub"
    Public Sub EnableControl(btns() As EToolBarButton)
        With Me
            .btnNew.Disabled = True
            .btnSave.Disabled = True
            .btnClear.Disabled = True
            .btnBack.Disabled = True
            .btnNext.Disabled = True
            .btnDelete.Disabled = True
            .btnPrint.Disabled = True
            .btnAttcah.Disabled = True
            .btnSearch.Disabled = True
        End With

        For Each btn In btns
            Dim HtmlInputButton As New HtmlInputButton
            HtmlInputButton = Page.FindControl("btn" & Controls.ToString)
            HtmlInputButton.Disabled = False
        Next
    End Sub
#End Region
End Class