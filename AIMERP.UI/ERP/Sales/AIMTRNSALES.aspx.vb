Public Class AIMTRNSALES
    Inherits BaseWebForm

#Region "Declare"

#End Region

#Region "Property"

#End Region

#Region "Page Event"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Me.Master.FunctionName = "ใบขายสินค้า"
    End Sub
#End Region

#Region "Control Method"
    Protected Sub lbtHead_Click(sender As Object, e As EventArgs) Handles lbtHead.Click
        Me.liHead.Attributes.Remove("Class")
        Me.liDetail.Attributes.Remove("Class")
        Me.liSearch.Attributes.Remove("Class")
        Me.liHead.Attributes.Add("Class", "active")
        Me.pnlHead.Visible = True
        Me.pnlDetailCreateNew.Visible = False
        Me.pnlDetailFromQuotation.Visible = False
        Me.pnlSearch.Visible = False
    End Sub

    Protected Sub lbtDetail_Click(sender As Object, e As EventArgs) Handles lbtDetail.Click
        Me.liHead.Attributes.Remove("Class")
        Me.liDetail.Attributes.Remove("Class")
        Me.liSearch.Attributes.Remove("Class")
        Me.liDetail.Attributes.Add("Class", "active")
        Me.pnlHead.Visible = False
        Me.pnlDetailCreateNew.Visible = True
        Me.pnlDetailFromQuotation.Visible = True
        Me.pnlSearch.Visible = False
    End Sub

    Private Sub lbtSearch_Click(sender As Object, e As System.EventArgs) Handles lbtSearch.Click
        Me.liHead.Attributes.Remove("Class")
        Me.liDetail.Attributes.Remove("Class")
        Me.liSearch.Attributes.Remove("Class")
        Me.liSearch.Attributes.Add("Class", "active")
        Me.pnlHead.Visible = False
        Me.pnlDetailCreateNew.Visible = False
        Me.pnlDetailFromQuotation.Visible = False
        Me.pnlSearch.Visible = True
    End Sub
#End Region

#Region "Function"

#End Region

#Region "sub"

#End Region
End Class