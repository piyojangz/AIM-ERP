Public Class PopUpSearch
    Inherits System.Web.UI.UserControl

#Region "Declare"
    Public Delegate Sub SearchClickEventHandler(ByVal sender As Object, ByVal e As System.EventArgs)
    Public Event SearchClick As SearchClickEventHandler
#End Region

#Region "Property"
    Public Property KeyHeader As String
        Get
            Return Me.lblKeyHeader.Text
        End Get
        Set(value As String)
            Me.lblKeyHeader.Text = value
        End Set
    End Property

    Public  Property ValueHeader As String
        Get
            Return Me.lblValueHeader.Text
        End Get
        Set(value As String)
            Me.lblValueHeader.Text = value
        End Set
    End Property

    Public Property KeyField As String
        Get
            Return Me.lblKeyField.Text
        End Get
        Set(value As String)
            Me.lblKeyField.Text = value
        End Set
    End Property

    Public Property ValueField As String
        Get
            Return Me.lblValueField.Text
        End Get
        Set(value As String)
            Me.lblValueField.Text = value
        End Set
    End Property

    Public Property KeyTarget As String
        Get
            Return Me.lblKeyTarget.Text
        End Get
        Set(value As String)
            Me.lblKeyTarget.Text = value
        End Set
    End Property

    Public Property ValueTarget As String
        Get
            Return Me.lblValueTarget.Text
        End Get
        Set(value As String)
            Me.lblValueTarget.Text = value
        End Set
    End Property

    Public ReadOnly Property UniqueSession()
        Get
            Return Me.Parent.ClientID & Me.ClientID & Me.Session.SessionID
        End Get
    End Property

    Public Property DataSource() As Object
        Get
            Return Session("DataSource" & Me.UniqueSession)
        End Get
        Set(ByVal value As Object)
            Session("DataSource" & Me.UniqueSession) = value
        End Set
    End Property

    Public WriteOnly Property Enabled As Boolean
        Set(value As Boolean)
            Me.btnSearch.Attributes.Remove("disabled")
            If Not value Then
                Me.btnSearch.Attributes.Add("disabled", "")
            End If
        End Set
    End Property
#End Region

#Region "Page Event"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.GenScript()
    End Sub
#End Region

#Region "Control Method"

    Private Sub btnSearch_ServerClick(sender As Object, e As System.EventArgs) Handles btnSearch.ServerClick
        RaiseEvent SearchClick(sender, e)
    End Sub
#End Region

#Region "Function"

#End Region

#Region "Sub"
    Public Sub BindData()
        If Not IsNothing(Me.DataSource) Then
            Me.rptResult.DataSource = Me.DataSource
            Me.rptResult.DataBind()
        End If
    End Sub

    Public Sub GenScript()
        Dim KeyTarget As Control
        Dim ValueTarget As Control
        KeyTarget = CType(Me.Parent.FindControl(Me.KeyTarget), Control)
        ValueTarget = CType(Me.Parent.FindControl(Me.ValueTarget), Control)

        Dim Script As String = ""

        Script = "function SetValue(Key,Value) { $('#" & KeyTarget.ClientID & "').val(Key); $('#" & ValueTarget.ClientID & "').val(Value); return false;}"

        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), Guid.NewGuid().ToString(), Script, True)
    End Sub
#End Region
End Class