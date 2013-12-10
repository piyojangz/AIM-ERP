Imports System.Configuration.ConfigurationManager
Imports AIMERP.Property.PO.ServiceContract.DataContract
Imports AIMERP.Business.PO.ServiceContract
'Imports AIMERP.Business.Transection.ServiceContract

Public Class AIMTRNPQUO
    Inherits BaseWebForm

#Region "Declare"
    Dim TrnPOQUOHeader As TrnPOQUOHeader
    Dim TrnPOQUODetail As TrnPOQUODetail
    Dim TrnPOQUOHeaderBusiness As New TrnPOQUOHeaderBusiness
    Dim TrnPOQUODetailBusiness As New TrnPOQUODetailBusiness
#End Region

#Region "Property"

    Public Property TrnPOQUOHeaderCollection As TrnPOQUOHeaderCollection
        Get
            Return Session("TrnPOQUOHeaderCollection")
        End Get
        Set(value As TrnPOQUOHeaderCollection)
            Session("TrnPOQUOHeaderCollection") = value
        End Set
    End Property

    Public Property TrnPOQUODetailCollection As TrnPOQUODetailCollection
        Get
            Return Session("TrnPOQUODetailCollection")
        End Get
        Set(value As TrnPOQUODetailCollection)
            Session("TrnPOQUODetailCollection") = value
        End Set
    End Property

    Public Property VW_Status As String
        Get
            Return ViewState("VW_Status")
        End Get
        Set(value As String)
            ViewState("VW_Status") = value
        End Set
    End Property

#End Region

#Region "Page Event"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Not Me.Page.IsPostBack Then
                Me.ShowPanel(False, False, True)
                Me.EnableToolBar(Me.ToolBar, True, False, True, False, False, False, False, False, True)
                Me.AddControlAttribute()

                Me.TrnPOQUOHeaderCollection = New TrnPOQUOHeaderCollection
                Me.TrnPOQUODetailCollection = New TrnPOQUODetailCollection
            Else

            End If

            Me.Master.FunctionName = "ใบเสนอราคา"
            Me.RepeaterNavigateBar.TargetRepeater = Me.rptSearch
        Catch ex As Exception

        End Try
    End Sub
#End Region

#Region "Control Method"
#Region "Head"
    Protected Sub lbtHead_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lbtHead.Click
        'Me.liHead.Attributes.Remove("Class")
        'Me.liDetail.Attributes.Remove("Class")
        'Me.liSearch.Attributes.Remove("Class")
        'Me.liHead.Attributes.Add("Class", "active")
        'Me.pnlHead.Visible = True
        'Me.pnlDetail.Visible = False
        'Me.pnlSearch.Visible = False
        Try
            Me.ShowPanel(True, False, False)
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub lbtDetail_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lbtDetail.Click
        'Me.liHead.Attributes.Remove("Class")
        'Me.liDetail.Attributes.Remove("Class")
        'Me.liSearch.Attributes.Remove("Class")
        'Me.liDetail.Attributes.Add("Class", "active")
        'Me.pnlHead.Visible = False
        'Me.pnlDetail.Visible = True
        'Me.pnlSearch.Visible = False

        Try
            Me.ShowPanel(False, True, False)
            Me.BindDetail()
        Catch ex As Exception

        End Try
    End Sub

    Private Sub lbtSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtSearch.Click
        'Me.liHead.Attributes.Remove("Class")
        'Me.liDetail.Attributes.Remove("Class")
        'Me.liSearch.Attributes.Remove("Class")
        'Me.liSearch.Attributes.Add("Class", "active")
        'Me.pnlHead.Visible = False
        'Me.pnlDetail.Visible = False
        'Me.pnlSearch.Visible = True

        'aun
        Try
            Me.ShowPanel(False, False, True)
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ToolBar_NewClick(sender As Object, e As System.EventArgs) Handles ToolBar.NewClick
        Try
            Me.ClearHeadControl()
            Me.ClearDetailControl()
            Me.EnableControl(True)
            Me.txtPromotion_Status.Text = "สร้างใหม่"
            Me.VW_Status = "N"
            Me.ShowPanel(True, False, False)
            Me.EnableToolBar(Me.ToolBar, False, True, True, False, False, False, False, False, False)
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ToolBar_ClearClick(sender As Object, e As System.EventArgs) Handles ToolBar.ClearClick
        Try
            Me.ClearHeadControl()
            Me.ClearDetailControl()
            Me.ClearSearchControl()
            'Me.TrnSQUODetailCollection = New TrnSQUODetailCollection
            Me.EnableControl(False)
            Me.VW_Status = ""
            Me.ShowPanel(False, False, True)
            Me.EnableToolBar(Me.ToolBar, True, False, True, False, False, False, False, False, True)
            Me.pnlResult.Visible = False
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ToolBar_SearchClick(sender As Object, e As System.EventArgs) Handles ToolBar.SearchClick
        Try
            Me.TrnPOQUOHeader = New TrnPOQUOHeader
            Me.TrnPOQUOHeaderBusiness = New TrnPOQUOHeaderBusiness

            With Me.TrnPOQUOHeader
                .Org_ID = 0
                '.SQUO_ID = Me.txtId.Text.Trim
                .Status = Me.txtStatus_Search.Text.Trim
                '.Supplier_ID = txtSupplier_ID.Text.Trim
            End With

            Me.TrnPOQUOHeaderCollection = Me.TrnPOQUOHeaderBusiness.SelectAllData(TrnPOQUOHeader)

            If Me.TrnPOQUOHeaderCollection.Items.Count <> 0 Then
                Me.RepeaterNavigateBar.CurrentSeq = 1
                Me.RepeaterNavigateBar.HighLight = ""
                Me.RepeaterNavigateBar.TargetRepeater = Me.rptSearch
                Me.RepeaterNavigateBar.DataSource = Me.TrnPOQUOHeaderCollection
                Me.RepeaterNavigateBar.BindData()
                Me.pnlResult.Visible = True
            Else
                Me.pnlResult.Visible = False
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ToolBar_SaveClick(sender As Object, e As System.EventArgs) Handles ToolBar.SaveClick

    End Sub
#End Region

#Region "Detail"
    Private Sub btnRequest_Click(sender As Object, e As System.EventArgs) Handles btnRequest.Click

    End Sub

    Private Sub btnApprove_Click(sender As Object, e As System.EventArgs) Handles btnApprove.Click

    End Sub

    Private Sub btnReject_Click(sender As Object, e As System.EventArgs) Handles btnReject.Click

    End Sub

    Private Sub btnCreateSaleOrder_Click(sender As Object, e As System.EventArgs) Handles btnCreateSaleOrder.Click

    End Sub
#End Region

#Region "Search"
    Private Sub rptSearch_ItemCommand(source As Object, e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles rptSearch.ItemCommand
        Try
            Select Case e.CommandName
                Case "Edit"
                    Dim Index As Integer = ((Me.RepeaterNavigateBar.CurrentPage - 1) * Me.RepeaterNavigateBar.RecordPerPage) + e.Item.ItemIndex
                    Dim Row As Integer
                    Dim Label As Label
                    Label = CType(Me.rptSearch.Items(e.Item.ItemIndex).FindControl("lblSeq"), Label)
                    Row = Label.Text - 1
                    Me.TrnPOQUOHeader = New TrnPOQUOHeader
                    Me.TrnPOQUOHeader = Me.RepeaterNavigateBar.DataSource.Items(Row)

                    With Me
                        '.txtOrg_Id.Text = Me.TrnSQUOHeader.Org_ID
                        .txtQuotation_No.Text = Me.TrnPOQUOHeader.Quotation_No
                        '    .hdfPromotion_Status.Value = Me.TrnSQUOHeader.Promotion_Status

                        Me.PromotionStatus(Me.TrnPOQUOHeader.Status)

                        '    .txtCustomer_Id.Text = Me.TrnSQUOHeader.Customer_ID
                        '    .txtCustomer_Name.Text = Me.TrnSQUOHeader.Customer_Name
                        '    .hdfCurrency_Code.Value = Me.TrnSQUOHeader.Currency_Code
                        '    .txtCurrency_Name.Text = Me.TrnSQUOHeader.Currency_Name
                        '    .hdfCustomer_Site_Id.Value = Me.TrnSQUOHeader.Customer_Site_ID
                        '    .txtCustomer_Site_Name.Text = Me.TrnSQUOHeader.Customer_Name
                        '    .hdfTerm_Id.Value = Me.TrnSQUOHeader.Term_ID
                        '    .txtTerm.Text = Me.TrnSQUOHeader.Term_Name
                        '    .hdfBill_To_Id.Value = Me.TrnSQUOHeader.Bill_To_ID
                        '    .txtBill_To_Name.Text = Me.TrnSQUOHeader.Bill_To_Name
                        '    .hdfShip_To_Id.Value = Me.TrnSQUOHeader.Ship_To_ID
                        '    .txtShip_To_Name.Text = Me.TrnSQUOHeader.Ship_To_Name
                        '    .txtStart_Date.Text = Me.GetDateString(Me.TrnSQUOHeader.Start_Date)
                        '    .txtEnd_Date.Text = Me.GetDateString(Me.TrnSQUOHeader.End_Date)
                        '    .txtTax.Text = ""
                        '    .txtDescription.Text = Me.TrnSQUOHeader.Description
                        '    .txtRemark.Text = Me.TrnSQUOHeader.Remark

                        '    .lblStatus.Text = "Edit"
                    End With

                    'Me.TrnSQUODetail = New TrnSQUODetail
                    'Me.TrnSQUOHeaderBusiness = New TrnSQUOHeaderBusiness

                    'With Me.TrnSQUODetail
                    '    .Org_ID = Me.TrnSQUOHeader.Org_ID
                    '    .Quotation_ID = Me.TrnSQUOHeader.Quotation_ID
                    'End With

                    'Me.TrnSQUODetailCollection = Me.TrnSQUODetailBusiness.SelectAllData(Me.TrnSQUODetail)
                    Me.BindDetail()

                    Me.EnableControl(True)
                    Me.ShowPanel(True, False, False)
                    Me.EnableToolBar(Me.ToolBar, False, True, True, False, False, False, False, False, False)
            End Select
        Catch ex As Exception

        End Try
    End Sub
#End Region
#End Region

#Region "Function"

#End Region

#Region "sub"

    Private Sub AddControlAttribute()
        Try
            With Me
                '.txtOrg_Id.Attributes.Add("readonly", "readonly")
                '.txtQuotation_Id.Attributes.Add("readonly", "readonly")
                .txtPromotion_Status.Attributes.Add("readonly", "readonly")
                .txtCustomer_Name.Attributes.Add("readonly", "readonly")
                .txtCurrency_Name.Attributes.Add("readonly", "readonly")
                .txtCustomer_Site_Name.Attributes.Add("readonly", "readonly")
                .txtTerm.Attributes.Add("readonly", "readonly")
                '.txtBill_To_Name.Attributes.Add("readonly", "readonly")
                '.txtShip_To_Name.Attributes.Add("readonly", "readonly")
                '.txtTax.Attributes.Add("readonly", "readonly")
                '.txtStart_Date.Attributes.Add("readonly", "readonly")
                '.txtEnd_Date.Attributes.Add("readonly", "readonly")
                .txtItem_Name.Attributes.Add("readonly", "readonly")
                .txtUOM_Name.Attributes.Add("readonly", "readonly")
                '.txtAmount.Attributes.Add("readonly", "readonly")

                '.txtQty.Attributes.Add("onkeyup", "CalAmount()")
            End With

            'Me.btnAdd.Visible = True
            'Me.btnSave.Visible = False
            'Me.btnCancel.Visible = False
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ClearHeadControl()
        Try
            With Me
                '.txtOrg_Id.Text = ""
                '.txtQuotation_Id.Text = ""
                .txtPromotion_Status.Text = ""
                .txtCustomer_Id.Text = ""
                .txtCustomer_Name.Text = ""
                .txtCurrency_Name.Text = ""
                .hdfCurrency_Code.Value = ""
                .txtCustomer_Site_Name.Text = ""
                .hdfCustomer_Site_Id.Value = ""
                .txtTerm.Text = ""
                .hdfTerm_Id.Value = ""
                '.txtBill_To_Name.Text = ""
                '.hdfBill_To_Id.Value = ""
                '.txtShip_To_Name.Text = ""
                '.hdfShip_To_Id.Value = ""
                '.txtStart_Date.Text = Me.GetDateString(DateTime.Now)
                '.txtEnd_Date.Text = Me.GetDateString(DateTime.Now)
                '.txtTax.Text = ""
                '.txtDescription.Text = ""
                '.txtRemark.Text = ""
                '.txtItem_Name.Text = ""
                '.lblStatus.Text = "New"
            End With
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ClearDetailControl()
        Try
            With Me
                '.lblSeq.Text = ""
                .txtItem_Id.Text = ""
                .txtItem_Name.Text = ""
                '.txtUnit_Price.Text = ""
                '.txtQty.Text = ""
                '.txtUOM_Name.Text = ""
                '.txtAmount.Text = ""
                .rptSearch.DataBind()

                .txtItem_Id.Enabled = True
                '.PopUpSearchItem1.Enabled = True
                .txtItem_Name.Enabled = True
                '.txtUnit_Price.Enabled = True
            End With
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ClearSearchControl()
        Try
            With Me
                '.txtQuotation_IdS.Text = ""
                '.txtCustomer_IdS.Text = ""
                '.txtCustomer_NameS.Text = ""
            End With
        Catch ex As Exception

        End Try
    End Sub

    Private Sub EnableControl(value As Boolean)
        Try
            With Me
                .lbtHead.Enabled = value
                .lbtDetail.Enabled = value
                .lbtSearch.Enabled = Not value

                '.txtOrg_Id.Enabled = value
                '.txtQuotation_Id.Enabled = value
                '.txtPromotion_Status.Enabled = value

                .txtCustomer_Id.Enabled = value
                '.PopUpSearchCustomer1.Enabled = value
                .txtCustomer_Name.Enabled = value
                .txtCurrency_Name.Enabled = value
                .PopUpSearchCurrency1.Enabled = value
                .txtCustomer_Site_Name.Enabled = value
                .PopUpSearchSite1.Enabled = value
                .txtTerm.Enabled = value
                .PopUpSearchReceiveTerm1.Enabled = value
                '.txtBill_To_Name.Enabled = value
                '.PopUpSearchSite2.Enabled = value
                '.txtShip_To_Name.Enabled = value
                '.PopUpSearchSite3.Enabled = value
                '.txtStart_Date.Enabled = value
                '.txtEnd_Date.Enabled = value
                '.txtTax.Enabled = value
                '.PopUpSearchSalesTax1.Enabled = value
                '.txtDescription.Enabled = value
                '.txtRemark.Enabled = value

                '.PopUpSearchItem1.Enabled = value
            End With
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ShowPanel(Head As Boolean, Detail As Boolean, Search As Boolean)
        Try
            Me.pnlHead.Visible = Head
            Me.pnlDetail.Visible = Detail
            Me.pnlSearch.Visible = Search

            Me.liHead.Attributes.Remove("Class")
            Me.liDetail.Attributes.Remove("Class")
            Me.liSearch.Attributes.Remove("Class")

            If Head Then
                Me.liHead.Attributes.Add("Class", "active")
            End If

            If Detail Then
                Me.liDetail.Attributes.Add("Class", "active")
            End If

            If Search Then
                Me.liSearch.Attributes.Add("Class", "active")
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub PromotionStatus(Status As String)
        With Me
            Select Case Status
                Case "N"
                    .txtPromotion_Status.Text = "สร้างใหม่"
                    .btnRequest.Visible = True
                    .btnApprove.Visible = False
                    .btnReject.Visible = False
                    .btnCreateSaleOrder.Visible = False
                    Me.EnableToolBar(Me.ToolBar, False, True, True, False, False, False, False, False, False)
                Case "W"
                    .txtPromotion_Status.Text = "รออนุมัติ"
                    .btnRequest.Visible = False
                    .btnApprove.Visible = True
                    .btnReject.Visible = True
                    .btnCreateSaleOrder.Visible = False
                    Me.EnableToolBar(Me.ToolBar, False, False, True, False, False, False, False, False, False)
                Case "R"
                    .txtPromotion_Status.Text = "ไม่อนุมัติ"
                    .btnRequest.Visible = False
                    .btnApprove.Visible = False
                    .btnReject.Visible = False
                    .btnCreateSaleOrder.Visible = False
                    Me.EnableToolBar(Me.ToolBar, False, False, True, False, False, False, False, False, False)
                Case "A"
                    .txtPromotion_Status.Text = "อนุมัติ"
                    .btnRequest.Visible = False
                    .btnApprove.Visible = False
                    .btnReject.Visible = False
                    .btnCreateSaleOrder.Visible = True
                    Me.EnableToolBar(Me.ToolBar, False, False, True, False, False, False, False, False, False)
            End Select
        End With
    End Sub

    Private Sub BindDetail()
        Try
            'If Me.TrnSQUODetailCollection.Items.Count <> 0 Then
            '    If Me.TrnSQUODetailCollection.Items.Count <> 0 Then
            '        For i As Integer = 0 To Me.TrnSQUODetailCollection.Items.Count - 1
            '            Me.TrnSQUODetailCollection.Items(i)._Seq_ = i + 1

            '            If i Mod 2 = 0 Then
            '                Me.TrnSQUODetailCollection.Items(i)._Class_ = "listItemEven"
            '            Else
            '                Me.TrnSQUODetailCollection.Items(i)._Class_ = "listItemOdd"
            '            End If
            '        Next
            '    End If
            'End If

            'Me.rptDetail.DataSource = Me.TrnSQUODetailCollection.Items
            'Me.rptDetail.DataBind()
        Catch ex As Exception

        End Try
    End Sub

    Private Sub CalculateGrandTotal()
        'Dim SubTotal As Decimal
        'Dim TaxAmount As Integer
        'Dim GrandTotal As Decimal

        'SubTotal = Me.TrnSQUODetailCollection.Items.Sum(Function(x) (x.Amount))
        'TaxAmount = SubTotal * Me.hdfTax_Id.Value / 100
        'GrandTotal = SubTotal + TaxAmount - Me.txtDiscount.Text

        'Me.txtSubTotal.Text = SubTotal
        'Me.txtTaxAmount.Text = TaxAmount
        'Me.txtGrandTotal.Text = GrandTotal
    End Sub
#End Region

End Class