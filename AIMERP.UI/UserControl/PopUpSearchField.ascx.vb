Imports AIMERP.Property.Demo.ServiceContract.DataContract
Imports AIMERP.Business.Demo.ServiceContract

Public Class PopUpSearchField
    Inherits System.Web.UI.UserControl

#Region "Declare"
    Dim Field As Field
    Dim FieldCollection As FieldCollection
    Dim FieldBusiness As FieldBusiness
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
        Me.Field = New Field
        Me.FieldBusiness = New FieldBusiness

        FilterTextBox = CType(Me.Parent.FindControl(Me.Filter), TextBox)

        With Me.Field
            .Field1 = FilterTextBox.Text
        End With

        Me.FieldCollection = Me.FieldBusiness.SelectAllData(Me.Field)
        Me.rptResult.DataSource = Me.FieldCollection.Items
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