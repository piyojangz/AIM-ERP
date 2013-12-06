Public Class PopUpSearchItem
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

    Public Property Extra1Target As String
        Get
            Return Me.lblExtra1Target.Text
        End Get
        Set(value As String)
            Me.lblExtra1Target.Text = value
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
            .Columns.Add("Item_Id")
            .Columns.Add("Name")
            .Columns.Add("Unit_Price")
            .AcceptChanges()
        End With
        dr = dt.NewRow
        dr("_Class_") = "listItemOdd"
        dr("Item_Id") = "10001"
        dr("Name") = "ทุเรียนทอด"
        dr("Unit_Price") = "200.00"
        dt.Rows.Add(dr)

        dr = dt.NewRow
        dr("_Class_") = "listItemEven"
        dr("Item_Id") = "10002"
        dr("Name") = "มะม่วงอบแห้ง"
        dr("Unit_Price") = "150.00"
        dt.Rows.Add(dr)

        dr = dt.NewRow
        dr("_Class_") = "listItemOdd"
        dr("Item_Id") = "10003"
        dr("Name") = "กล้วยกวน"
        dr("Unit_Price") = "100.00"
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
        Dim Extra1Target As Control
        KeyTarget = CType(Me.Parent.FindControl(Me.KeyTarget), Control)
        ValueTarget = CType(Me.Parent.FindControl(Me.ValueTarget), Control)
        Extra1Target = CType(Me.Parent.FindControl(Me.Extra1Target), Control)

        Dim Script As String = ""

        Script = "function SetValue" & Me.UniqueSession & "(Key,Value,Extra1) { $('#" & KeyTarget.ClientID & "').val(Key); $('#" & ValueTarget.ClientID & "').val(Value); $('#" & Extra1Target.ClientID & "').val(Extra1); return false;} $('.dropdown-menu').removeClass('hide')"

        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), Guid.NewGuid().ToString(), Script, True)
    End Sub
#End Region
End Class