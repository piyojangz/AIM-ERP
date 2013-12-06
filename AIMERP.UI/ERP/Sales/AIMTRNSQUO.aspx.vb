Imports System.Configuration.ConfigurationManager
Imports AIMERP.Property.Sale.ServiceContract.DataContract
Imports AIMERP.Business.Sale.ServiceContract

Public Class AIMTRNSQUO
    Inherits BaseWebForm

#Region "Declare"
    Dim TrnSQUOHeader As TrnSQUOHeader
    Dim TrnSQUODetail As TrnSQUODetail
    Dim TrnSQUOHeaderBusiness As New TrnSQUOHeaderBusiness
    Dim TrnSQUODetailBusiness As New TrnSQUODetailBusiness

#End Region

#Region "Property"
    Public Property TrnSQUOHeaderCollection As TrnSQUOHeaderCollection
        Get
            Return Session("TrnSQUOHeaderCollection")
        End Get
        Set(value As TrnSQUOHeaderCollection)
            Session("TrnSQUOHeaderCollection") = value
        End Set
    End Property

    Public Property TrnSQUODetailCollection As TrnSQUODetailCollection
        Get
            Return Session("TrnSQUODetailCollection")
        End Get
        Set(value As TrnSQUODetailCollection)
            Session("TrnSQUODetailCollection") = value
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

                Me.TrnSQUOHeaderCollection = New TrnSQUOHeaderCollection
                Me.TrnSQUODetailCollection = New TrnSQUODetailCollection
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
    Protected Sub lbtHead_Click(sender As Object, e As EventArgs) Handles lbtHead.Click
        Try
            Me.ShowPanel(True, False, False)
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub lbtDetail_Click(sender As Object, e As EventArgs) Handles lbtDetail.Click
        Try
            Me.ShowPanel(False, True, False)
            Me.BindDetail()
        Catch ex As Exception

        End Try
    End Sub

    Private Sub lbtSearch_Click(sender As Object, e As System.EventArgs) Handles lbtSearch.Click
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
            Me.lblStatus.Text = "New"
            Me.ShowPanel(True, False, False)
            Me.EnableToolBar(Me.ToolBar, False, True, True, False, False, False, False, False, False)
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ToolBar_SaveClick(sender As Object, e As System.EventArgs) Handles ToolBar.SaveClick
        Try
            If Me.ValidateHead And Me.TrnSQUODetailCollection.Items.Count <> 0 Then
                Me.TrnSQUOHeader = New TrnSQUOHeader
                Me.TrnSQUOHeaderBusiness = New TrnSQUOHeaderBusiness

                With Me.TrnSQUOHeader
                    .Bill_To_ID = Me.hdfBill_To_Id.Value
                    .Currency_Code = Me.hdfCurrency_Code.Value
                    .Customer_ID = Me.txtCustomer_Id.Text
                    .Customer_Site_ID = Me.hdfCustomer_Site_Id.Value
                    .Description = Me.txtDescription.Text
                    .Emp_ID = 0
                    .End_Date = Me.GetDate(Me.txtEnd_Date.Text)
                    .Org_ID = 0
                    .Promotion_Status = Me.hdfPromotion_Status.Value
                    .Remark = Me.txtRemark.Text
                    '.Sales_Order_ID
                    .Ship_To_ID = Me.hdfShip_To_Id.Value
                    .Quotation_ID = Me.txtQuotation_Id.Text
                    .Start_Date = Me.GetDate(Me.txtStart_Date.Text)
                    .Term_ID = Me.hdfTerm_Id.Value
                End With

                Select Case Me.lblStatus.Text
                    Case "New"
                        Me.TrnSQUOHeader.Promotion_Status = "N"
                        Me.TrnSQUOHeaderCollection = Me.TrnSQUOHeaderBusiness.InsertData(Me.TrnSQUOHeader)
                    Case "Edit"
                        Me.TrnSQUOHeaderCollection = Me.TrnSQUOHeaderBusiness.UpdateData(Me.TrnSQUOHeader)
                End Select

                If Me.TrnSQUOHeaderCollection.Items.Count <> 0 Then
                    Me.txtQuotation_Id.Text = Me.TrnSQUOHeaderCollection.Items.First.Quotation_ID

                    Select Case Me.lblStatus.Text
                        Case "New"

                        Case "Edit"
                            Me.TrnSQUODetail = New TrnSQUODetail

                            With Me.TrnSQUODetail
                                .Org_ID = 0
                                .Quotation_ID = Me.TrnSQUOHeaderCollection.Items.First.Quotation_ID
                            End With

                            Me.TrnSQUODetailBusiness.DeleteData(Me.TrnSQUODetail)
                    End Select

                    For Each Item In Me.TrnSQUODetailCollection.Items
                        Me.TrnSQUODetailBusiness = New TrnSQUODetailBusiness

                        With Item
                            '.AMT_Discount
                            '.Description
                            '.Item_Id
                            .Line_ID = ._Seq_
                            .Org_ID = 0
                            '.Original_Line_ID = 0
                            '.Promotion_Flag
                            '.Promotion_ID
                            '.QTY
                            '.QTY_Discount
                            .Quotation_ID = Me.TrnSQUOHeaderCollection.Items.First.Quotation_ID
                            '.Unit_Price
                            '.UOM_Code
                            '.UOM_Name
                        End With

                        Me.TrnSQUODetailBusiness.InsertData(Item)
                    Next

                    Me.lblStatus.Text = "Edit"
                    Me.MessageBox.ShowDialog("บันทึกข้อมูล [ใบเสนอราคา] แล้ว" _
                                            , Me.PopUpSearchReceiveTerm1 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                Else
                    Me.MessageBox.ShowDialog("ไม่สามารถบันทึกข้อมูล [ใบเสนอราคา] ได้ กรุณาติดต่อเจ้าหน้าที่" _
                                            , Me.PopUpSearchReceiveTerm1 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                End If
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ToolBar_ClearClick(sender As Object, e As System.EventArgs) Handles ToolBar.ClearClick
        Try
            Me.ClearHeadControl()
            Me.ClearDetailControl()
            Me.ClearSearchControl()
            Me.TrnSQUODetailCollection = New TrnSQUODetailCollection
            Me.EnableControl(False)
            Me.lblStatus.Text = ""
            Me.ShowPanel(False, False, True)
            Me.EnableToolBar(Me.ToolBar, True, False, True, False, False, False, False, False, True)
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ToolBar_BackClick(sender As Object, e As System.EventArgs) Handles ToolBar.BackClick
        Try

        Catch ex As Exception

        End Try
    End Sub

    Private Sub ToolBar_NextClick(sender As Object, e As System.EventArgs) Handles ToolBar.NextClick
        Try

        Catch ex As Exception

        End Try
    End Sub

    Private Sub ToolBar_DeleteClick(sender As Object, e As System.EventArgs) Handles ToolBar.DeleteClick
        Try

        Catch ex As Exception

        End Try
    End Sub

    Private Sub ToolBar_PrintClick(sender As Object, e As System.EventArgs) Handles ToolBar.PrintClick
        Try

        Catch ex As Exception

        End Try
    End Sub

    Private Sub ToolBar_AttachClick(sender As Object, e As System.EventArgs) Handles ToolBar.AttachClick
        Try

        Catch ex As Exception

        End Try
    End Sub

    Private Sub ToolBar_SearchClick(sender As Object, e As System.EventArgs) Handles ToolBar.SearchClick
        Try
            Me.TrnSQUOHeader = New TrnSQUOHeader
            Me.TrnSQUOHeaderBusiness = New TrnSQUOHeaderBusiness

            With Me.TrnSQUOHeader
                .Org_ID = 0
                .Quotation_ID = Me.txtQuotation_IdS.Text.Trim
                .Customer_ID = Me.txtCustomer_IdS.Text.Trim
            End With

            Me.TrnSQUOHeaderCollection = Me.TrnSQUOHeaderBusiness.SelectAllData(Me.TrnSQUOHeader)

            If Me.TrnSQUOHeaderCollection.Items.Count <> 0 Then
                Me.RepeaterNavigateBar.CurrentSeq = 1
                Me.RepeaterNavigateBar.HighLight = ""
                Me.RepeaterNavigateBar.TargetRepeater = Me.rptSearch
                Me.RepeaterNavigateBar.DataSource = Me.TrnSQUOHeaderCollection
                Me.RepeaterNavigateBar.BindData()
                Me.pnlResult.Visible = True
            Else
                Me.pnlResult.Visible = False
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub hdfTax_Id_ValueChanged(sender As Object, e As System.EventArgs) Handles hdfTax_Id.ValueChanged
        Me.CalculateGrandTotal()
    End Sub

    Protected Sub btnRequest_Click(sender As Object, e As EventArgs) Handles btnRequest.Click

    End Sub
#End Region

#Region "Detail"
    Private Sub btnAdd_ServerClick(sender As Object, e As System.EventArgs) Handles btnAdd.ServerClick
        Try
            If Me.ValidateDetail Then
                Me.TrnSQUODetail = New TrnSQUODetail

                With Me.TrnSQUODetail
                    .Item_Id = Me.txtItem_Id.Text.Trim
                    .Description = Me.txtItem_Name.Text.Trim
                    .UOM_Code = Me.hdfUOM_Code.Value
                    .UOM_Name = Me.txtUOM_Name.Text.Trim
                    .QTY = Me.txtQty.Text.Trim
                    .Unit_Price = Me.txtUnit_Price.Text.Trim
                    .Amount = Me.txtAmount.Text.Trim
                End With

                Me.TrnSQUODetailCollection.Items.Add(TrnSQUODetail)

                Me.BindDetail()
                Me.CalculateGrandTotal()
                Me.ClearDetailControl()
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub btnSave_ServerClick(sender As Object, e As System.EventArgs) Handles btnSave.ServerClick
        Try
            With Me.TrnSQUODetailCollection.Items(Me.lblSeq.Text - 1)
                .Item_Id = Me.txtItem_Id.Text.Trim
                .Description = Me.txtItem_Name.Text.Trim
                .UOM_Code = Me.hdfUOM_Code.Value
                .UOM_Name = Me.txtUOM_Name.Text.Trim
                .QTY = Me.txtQty.Text.Trim
                .Unit_Price = Me.txtUnit_Price.Text.Trim
                .Amount = Me.txtAmount.Text.Trim
            End With

            Me.BindDetail()
            Me.CalculateGrandTotal()
            Me.ClearDetailControl()

            Me.btnAdd.Visible = True
            Me.btnSave.Visible = False
            Me.btnCancel.Visible = False
        Catch ex As Exception

        End Try
    End Sub

    Private Sub btnCancel_ServerClick(sender As Object, e As System.EventArgs) Handles btnCancel.ServerClick
        Try
            Me.txtItem_Id.Enabled = True
            Me.PopUpSearchItem1.Enabled = True
            Me.txtItem_Name.Enabled = True
            Me.txtUnit_Price.Enabled = True

            Me.ClearDetailControl()

            Me.btnAdd.Visible = True
            Me.btnSave.Visible = False
            Me.btnCancel.Visible = False
        Catch ex As Exception

        End Try
    End Sub

    Private Sub rptDetail_ItemCommand(source As Object, e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles rptDetail.ItemCommand
        Try
            Select Case e.CommandName
                Case "Edit"
                    Dim lblSeq As Label
                    lblSeq = CType(Me.rptDetail.Items(e.Item.ItemIndex).FindControl("lblSeq"), Label)
                    Me.TrnSQUODetail = Me.TrnSQUODetailCollection.Items(lblSeq.Text - 1)

                    With Me
                        .lblSeq.Text = Me.TrnSQUODetail._Seq_
                        .txtItem_Id.Text = Me.TrnSQUODetail.Item_Id
                        .txtItem_Name.Text = Me.TrnSQUODetail.Description
                        .txtUnit_Price.Text = Me.TrnSQUODetail.Unit_Price
                        .txtQty.Text = Me.TrnSQUODetail.QTY
                        .txtUOM_Name.Text = Me.TrnSQUODetail.UOM_Name
                        .hdfUOM_Code.Value = Me.TrnSQUODetail.UOM_Code
                        .txtAmount.Text = Me.TrnSQUODetail.Amount
                    End With

                    Me.txtItem_Id.Enabled = False
                    Me.PopUpSearchItem1.Enabled = False
                    Me.txtItem_Name.Enabled = False
                    Me.txtUnit_Price.Enabled = False

                    Me.btnAdd.Visible = False
                    Me.btnSave.Visible = True
                    Me.btnCancel.Visible = True
                Case "Delete"
                    Dim lblSeq As Label
                    lblSeq = CType(Me.rptDetail.Items(e.Item.ItemIndex).FindControl("lblSeq"), Label)
                    Me.TrnSQUODetail = Me.TrnSQUODetailCollection.Items(lblSeq.Text - 1)
                    Me.TrnSQUODetailCollection.Items.Remove(Me.TrnSQUODetail)

                    Me.BindDetail()
                    Me.CalculateGrandTotal()
                    Me.ClearDetailControl()
            End Select
        Catch ex As Exception

        End Try
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
                    Me.TrnSQUOHeader = New TrnSQUOHeader
                    Me.TrnSQUOHeader = Me.RepeaterNavigateBar.DataSource.Items(Row)

                    With Me
                        .txtOrg_Id.Text = Me.TrnSQUOHeader.Org_ID
                        .txtQuotation_Id.Text = Me.TrnSQUOHeader.Quotation_ID
                        .hdfPromotion_Status.Value = Me.TrnSQUOHeader.Promotion_Status

                        Me.PromotionStatus(Me.TrnSQUOHeader.Promotion_Status)

                        .txtCustomer_Id.Text = Me.TrnSQUOHeader.Customer_ID
                        .txtCustomer_Name.Text = Me.TrnSQUOHeader.Customer_Name
                        .hdfCurrency_Code.Value = Me.TrnSQUOHeader.Currency_Code
                        .txtCurrency_Name.Text = Me.TrnSQUOHeader.Currency_Name
                        .hdfCustomer_Site_Id.Value = Me.TrnSQUOHeader.Customer_Site_ID
                        .txtCustomer_Site_Name.Text = Me.TrnSQUOHeader.Customer_Name
                        .hdfTerm_Id.Value = Me.TrnSQUOHeader.Term_ID
                        .txtTerm.Text = Me.TrnSQUOHeader.Term_Name
                        .hdfBill_To_Id.Value = Me.TrnSQUOHeader.Bill_To_ID
                        .txtBill_To_Name.Text = Me.TrnSQUOHeader.Bill_To_Name
                        .hdfShip_To_Id.Value = Me.TrnSQUOHeader.Ship_To_ID
                        .txtShip_To_Name.Text = Me.TrnSQUOHeader.Ship_To_Name
                        .txtStart_Date.Text = Me.GetDateString(Me.TrnSQUOHeader.Start_Date)
                        .txtEnd_Date.Text = Me.GetDateString(Me.TrnSQUOHeader.End_Date)
                        .txtTax.Text = ""
                        .txtDescription.Text = Me.TrnSQUOHeader.Description
                        .txtRemark.Text = Me.TrnSQUOHeader.Remark

                        .lblStatus.Text = "Edit"
                    End With

                    Me.TrnSQUODetail = New TrnSQUODetail
                    Me.TrnSQUOHeaderBusiness = New TrnSQUOHeaderBusiness

                    With Me.TrnSQUODetail
                        .Org_ID = Me.TrnSQUOHeader.Org_ID
                        .Quotation_ID = Me.TrnSQUOHeader.Quotation_ID
                    End With

                    Me.TrnSQUODetailCollection = Me.TrnSQUODetailBusiness.SelectAllData(Me.TrnSQUODetail)
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
    Private Function ValidateHead() As Boolean
        Try
            Select Case True
                Case Me.txtCustomer_Id.Text.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("กรุณาระบุข้อมูล [รหัสลูกค้า]" _
                                            , Me.txtCustomer_Id _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                    Return False
                Case Me.hdfCurrency_Code.Value.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("กรุณาระบุข้อมูล [สกุลเงิน]" _
                                            , Me.PopUpSearchCurrency1 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                    Return False
                Case Me.hdfCustomer_Site_Id.Value.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("กรุณาระบุข้อมูล [สนง.ใหญ่/สาขา]" _
                                            , Me.PopUpSearchSite1 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                    Return False
                Case Me.hdfTerm_Id.Value.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("กรุณาระบุข้อมูล [เงื่อนไขการชำระเงิน ]" _
                                            , Me.PopUpSearchReceiveTerm1 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                    Return False
                Case Me.hdfBill_To_Id.Value.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("กรุณาระบุข้อมูล [Bill to]" _
                                            , Me.PopUpSearchSite2 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                    Return False
                Case Me.hdfShip_To_Id.Value.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("กรุณาระบุข้อมูล [Ship to]" _
                                            , Me.PopUpSearchSite3 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                    Return False
                Case Me.hdfTax_Id.Value.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("กรุณาระบุข้อมูล [ภาษีมูลค่าเพิ่ม]" _
                                            , Me.PopUpSearchSalesTax1 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                    Return False
                Case Me.txtStart_Date.Text.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("กรุณาระบุข้อมูล [วันที่เริ่มใช้งาน]" _
                                            , Me.PopUpSearchSalesTax1 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                    Return False
                Case Me.txtEnd_Date.Text.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("กรุณาระบุข้อมูล [วันที่เลิกใช้งาน]" _
                                            , Me.PopUpSearchSalesTax1 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                    Return False
            End Select
        Catch ex As Exception

        End Try

        Return True
    End Function

    Private Function ValidateDetail()
        Try
            Select Case True
                Case Me.txtItem_Id.Text.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("กรุณาระบุข้อมูล [รหัสสินค้า]" _
                                            , Me.txtItem_Id _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                    Return False
                Case Me.txtItem_Name.Text.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("กรุณาระบุข้อมูล [รายละเอียด]" _
                                            , Me.txtItem_Name _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                    Return False
                Case Me.txtUnit_Price.Text.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("กรุณาระบุข้อมูล [ราคาต่อหน่วย]" _
                                            , Me.txtUnit_Price _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                    Return False
                Case Me.txtQty.Text.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("กรุณาระบุข้อมูล [จำนวน]" _
                                            , Me.txtQty _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                    Return False
                Case Me.hdfUOM_Code.Value.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("กรุณาระบุข้อมูล [หน่วย]" _
                                            , Me.PopUpSearchUOM1 _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                    Return False
                Case Me.txtAmount.Text.ToString.Trim = ""
                    Me.MessageBox.ShowDialog("กรุณาระบุข้อมูล [ราคารวม]" _
                                            , Me.txtAmount _
                                            , EMessageType.Alert _
                                            , EMessageIcon.Warning)
                    Return False
            End Select
        Catch ex As Exception

        End Try

        Return True
    End Function
#End Region

#Region "sub"
    Private Sub AddControlAttribute()
        Try
            With Me
                .txtOrg_Id.Attributes.Add("readonly", "readonly")
                .txtQuotation_Id.Attributes.Add("readonly", "readonly")
                .txtPromotion_Status.Attributes.Add("readonly", "readonly")
                .txtCustomer_Name.Attributes.Add("readonly", "readonly")
                .txtCurrency_Name.Attributes.Add("readonly", "readonly")
                .txtCustomer_Site_Name.Attributes.Add("readonly", "readonly")
                .txtTerm.Attributes.Add("readonly", "readonly")
                .txtBill_To_Name.Attributes.Add("readonly", "readonly")
                .txtShip_To_Name.Attributes.Add("readonly", "readonly")
                .txtTax.Attributes.Add("readonly", "readonly")
                .txtStart_Date.Attributes.Add("readonly", "readonly")
                .txtEnd_Date.Attributes.Add("readonly", "readonly")
                .txtItem_Name.Attributes.Add("readonly", "readonly")
                .txtUOM_Name.Attributes.Add("readonly", "readonly")
                .txtAmount.Attributes.Add("readonly", "readonly")

                .txtQty.Attributes.Add("onkeyup", "CalAmount()")
            End With

            Me.btnAdd.Visible = True
            Me.btnSave.Visible = False
            Me.btnCancel.Visible = False
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ClearHeadControl()
        Try
            With Me
                .txtOrg_Id.Text = ""
                .txtQuotation_Id.Text = ""
                .txtPromotion_Status.Text = ""
                .txtCustomer_Id.Text = ""
                .txtCustomer_Name.Text = ""
                .txtCurrency_Name.Text = ""
                .hdfCurrency_Code.Value = ""
                .txtCustomer_Site_Name.Text = ""
                .hdfCustomer_Site_Id.Value = ""
                .txtTerm.Text = ""
                .hdfTerm_Id.Value = ""
                .txtBill_To_Name.Text = ""
                .hdfBill_To_Id.Value = ""
                .txtShip_To_Name.Text = ""
                .hdfShip_To_Id.Value = ""
                .txtStart_Date.Text = Me.GetDateString(DateTime.Now)
                .txtEnd_Date.Text = Me.GetDateString(DateTime.Now)
                .txtTax.Text = ""
                .txtDescription.Text = ""
                .txtRemark.Text = ""
                .txtItem_Name.Text = ""
                .lblStatus.Text = "New"
            End With
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ClearDetailControl()
        Try
            With Me
                .lblSeq.Text = ""
                .txtItem_Id.Text = ""
                .txtItem_Name.Text = ""
                .txtUnit_Price.Text = ""
                .txtQty.Text = ""
                .txtUOM_Name.Text = ""
                .txtAmount.Text = ""
                .rptDetail.DataBind()

                .txtItem_Id.Enabled = True
                .PopUpSearchItem1.Enabled = True
                .txtItem_Name.Enabled = True
                .txtUnit_Price.Enabled = True
            End With
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ClearSearchControl()
        Try
            With Me
                .txtQuotation_IdS.Text = ""
                .txtCustomer_IdS.Text = ""
                .txtCustomer_NameS.Text = ""
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
                .PopUpSearchCustomer1.Enabled = value
                .txtCustomer_Name.Enabled = value
                .txtCurrency_Name.Enabled = value
                .PopUpSearchCurrency1.Enabled = value
                .txtCustomer_Site_Name.Enabled = value
                .PopUpSearchSite1.Enabled = value
                .txtTerm.Enabled = value
                .PopUpSearchReceiveTerm1.Enabled = value
                .txtBill_To_Name.Enabled = value
                .PopUpSearchSite2.Enabled = value
                .txtShip_To_Name.Enabled = value
                .PopUpSearchSite3.Enabled = value
                .txtStart_Date.Enabled = value
                .txtEnd_Date.Enabled = value
                .txtTax.Enabled = value
                .PopUpSearchSalesTax1.Enabled = value
                .txtDescription.Enabled = value
                .txtRemark.Enabled = value

                .PopUpSearchItem1.Enabled = value
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
            If Me.TrnSQUODetailCollection.Items.Count <> 0 Then
                If Me.TrnSQUODetailCollection.Items.Count <> 0 Then
                    For i As Integer = 0 To Me.TrnSQUODetailCollection.Items.Count - 1
                        Me.TrnSQUODetailCollection.Items(i)._Seq_ = i + 1

                        If i Mod 2 = 0 Then
                            Me.TrnSQUODetailCollection.Items(i)._Class_ = "listItemEven"
                        Else
                            Me.TrnSQUODetailCollection.Items(i)._Class_ = "listItemOdd"
                        End If
                    Next
                End If
            End If

            Me.rptDetail.DataSource = Me.TrnSQUODetailCollection.Items
            Me.rptDetail.DataBind()
        Catch ex As Exception

        End Try
    End Sub

    Private Sub CalculateGrandTotal()
        Dim SubTotal As Decimal
        Dim TaxAmount As Integer
        Dim GrandTotal As Decimal

        SubTotal = Me.TrnSQUODetailCollection.Items.Sum(Function(x) (x.Amount))
        TaxAmount = SubTotal * Me.hdfTax_Id.Value / 100
        GrandTotal = SubTotal + TaxAmount - Me.txtDiscount.Text

        Me.txtSubTotal.Text = SubTotal
        Me.txtTaxAmount.Text = TaxAmount
        Me.txtGrandTotal.Text = GrandTotal
    End Sub
#End Region
End Class