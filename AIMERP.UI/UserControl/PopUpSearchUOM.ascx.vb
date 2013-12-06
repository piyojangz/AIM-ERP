Public Class PopUpSearchUOM
    Inherits System.Web.UI.UserControl

#Region "Declare"

#End Region

#Region "Property"
    Public Property Filter As String
        Get
            Return Me.lblFilter.Text
        End Get
        Set(value As String)
            Me.lblFilter.Text = value
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
        Dim FilterTextBox As TextBox

        FilterTextBox = CType(Me.Parent.FindControl(Me.Filter), TextBox)

        Dim dt As New DataTable
        Dim dr As DataRow
        With dt
            .Columns.Add("_Class_")
            .Columns.Add("UOM_Code")
            .Columns.Add("Name")
            .AcceptChanges()
        End With
        dr = dt.NewRow
        dr("_Class_") = "listItemOdd"
        dr("UOM_Code") = "10001"
        dr("Name") = "ถุง"
        dt.Rows.Add(dr)

        dr = dt.NewRow
        dr("_Class_") = "listItemEven"
        dr("UOM_Code") = "10002"
        dr("Name") = "ลัง"
        dt.Rows.Add(dr)

        Me.rptResult.DataSource = dt
        Me.rptResult.DataBind()
    End Sub
#End Region

#Region "Function"

#End Region

#Region "Sub"
    Public Sub GenScript()
        Dim KeyTarget As Control
        Dim ValueTarget As Control
        KeyTarget = CType(Me.Parent.FindControl(Me.KeyTarget), Control)
        ValueTarget = CType(Me.Parent.FindControl(Me.ValueTarget), Control)

        Dim Script As String = ""

        Script = "function SetValue" & Me.UniqueSession & "(Key,Value) { $('#" & KeyTarget.ClientID & "').val(Key); $('#" & ValueTarget.ClientID & "').val(Value); return false;} $('.dropdown-menu').removeClass('hide')"

        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), Guid.NewGuid().ToString(), Script, True)
    End Sub
#End Region
End Class