Public Class AIMERP
    Inherits System.Web.UI.MasterPage

#Region "Declare"

#End Region

#Region "Property"
    Public WriteOnly Property FunctionName As String
        Set(value As String)
            Me.lblFunctionName.Text = value
        End Set
    End Property
#End Region

#Region "Page Event"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Me.lblVersion.Text = " v." & My.Application.Info.Version.ToString()
        Me.lblHostName.Text = System.Net.Dns.GetHostName
    End Sub
#End Region

#Region "Control Method"

#End Region

#Region "Sub"

#End Region

#Region "Function"

#End Region
End Class