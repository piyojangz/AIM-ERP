<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master.Master"
    CodeBehind="AIMTRNSQUO.aspx.vb" Inherits="AIMERP.UI.AIMTRNSQUO" %>

<%@ MasterType VirtualPath="~/Master.Master" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="../../UserControl/ToolBar.ascx" TagName="ToolBar" TagPrefix="uc1" %>
<%@ Register Src="../../UserControl/RepeaterNavigateBar.ascx" TagName="RepeaterNavigateBar"
    TagPrefix="uc2" %>
<%@ Register Src="../../UserControl/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc3" %>
<%@ Register Src="../../UserControl/PopUpSearchCustomer.ascx" TagName="PopUpSearchCustomer"
    TagPrefix="uc4" %>
<%@ Register Src="../../UserControl/PopUpSearchCurrency.ascx" TagName="PopUpSearchCurrency"
    TagPrefix="uc5" %>
<%@ Register Src="../../UserControl/PopUpSearchSite.ascx" TagName="PopUpSearchSite"
    TagPrefix="uc6" %>
<%@ Register Src="../../UserControl/PopUpSearchReceiveTerm.ascx" TagName="PopUpSearchReceiveTerm"
    TagPrefix="uc7" %>
<%@ Register Src="../../UserControl/PopUpSearchSalesTax.ascx" TagName="PopUpSearchSalesTax"
    TagPrefix="uc8" %>
<%@ Register Src="../../UserControl/PopUpSearchItem.ascx" TagName="PopUpSearchItem"
    TagPrefix="uc9" %>
<%@ Register Src="../../UserControl/PopUpSearchUOM.ascx" TagName="PopUpSearchUOM"
    TagPrefix="uc10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function CalAmount() {
            $('#<%# txtAmount.ClientID %>').val($('#<%# txtUnit_Price.ClientID %>').val() * $('#<%# txtQty.ClientID %>').val());
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <uc1:ToolBar ID="ToolBar" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="nav nav-tabs">
        <li id="liHead" runat="server">
            <asp:LinkButton ID="lbtHead" runat="server" Enabled="False">ข้อมูลเอกสาร</asp:LinkButton></li>
        <li id="liDetail" runat="server">
            <asp:LinkButton ID="lbtDetail" runat="server" Enabled="False">ข้อมูลสินค้า</asp:LinkButton></li>
        <li id="liSearch" runat="server">
            <asp:LinkButton ID="lbtSearch" runat="server">ค้นหาข้อมูลเอกสาร</asp:LinkButton></li>
    </ul>
    <asp:Panel ID="pnlHead" runat="server" Visible="False">
        <div class="row">
            <div class="col-md-12">
                <div class="">
                    <div class="panel-body">
                        <table style="width: 100%;">
                            <tr>
                                <td class="right">
                                </td>
                                <td class="1px">
                                </td>
                                <td class="left">
                                </td>
                                <td class="right">
                                    บริษัท
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="txtOrg_Id" runat="server" CssClass="list-group-item" Width="150px"
                                        Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="right">
                                    เลขที่
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="txtQuotation_Id" runat="server" CssClass="list-group-item" Width="150px"
                                        Enabled="False"></asp:TextBox>
                                </td>
                                <td class="right">
                                    สถานะ
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="txtPromotion_Status" runat="server" CssClass="list-group-item" Width="150px"
                                        Enabled="False"></asp:TextBox>
                                    <asp:HiddenField ID="hdfPromotion_Status" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="right">
                                    รหัสลูกค้า
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtCustomer_Id" runat="server" CssClass="list-group-item" Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <uc4:PopUpSearchCustomer ID="PopUpSearchCustomer1" runat="server" Filter="txtCustomer_Id"
                                                    KeyTarget="txtCustomer_Id" ValueTarget="txtCustomer_Name" Enabled="True" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtCustomer_Name" runat="server" CssClass="list-group-item" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="right">
                                    สกุลเงิน
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtCurrency_Name" runat="server" CssClass="list-group-item" Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <uc5:PopUpSearchCurrency ID="PopUpSearchCurrency1" runat="server" Filter="txtCurrency_Name"
                                                    KeyTarget="hdfCurrency_Code" ValueTarget="txtCurrency_Name" Enabled="True" />
                                            </td>
                                            <td>
                                                <asp:HiddenField ID="hdfCurrency_Code" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="right">
                                    สนง.ใหญ่/สาขา
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtCustomer_Site_Name" runat="server" CssClass="list-group-item"
                                                    Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <uc6:PopUpSearchSite ID="PopUpSearchSite1" runat="server" KeyTarget="hdfCustomer_Site_Id"
                                                    ValueTarget="txtCustomer_Site_Name" Filter="txtCustomer_Id" Enabled="True" />
                                            </td>
                                            <td>
                                                <asp:HiddenField ID="hdfCustomer_Site_Id" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="right">
                                    เงื่อนไขการชำระเงิน
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtTerm" runat="server" CssClass="list-group-item" Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <uc7:PopUpSearchReceiveTerm ID="PopUpSearchReceiveTerm1" runat="server" KeyTarget="hdfTerm_Id"
                                                    ValueTarget="txtTerm" Enabled="True" />
                                            </td>
                                            <td>
                                                <asp:HiddenField ID="hdfTerm_Id" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="right">
                                    Bill to
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtBill_To_Name" runat="server" CssClass="list-group-item" Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <uc6:PopUpSearchSite ID="PopUpSearchSite2" runat="server" Filter="txtCustomer_Id"
                                                    KeyTarget="hdfBill_To_Id" ValueTarget="txtBill_To_Name" Enabled="True" />
                                            </td>
                                            <td>
                                                <asp:HiddenField ID="hdfBill_To_Id" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="right">
                                    Ship to
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtShip_To_Name" runat="server" CssClass="list-group-item" Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <uc6:PopUpSearchSite ID="PopUpSearchSite3" runat="server" Filter="txtCustomer_Id"
                                                    KeyTarget="hdfShip_To_Id" ValueTarget="txtShip_To_Name" Enabled="True" />
                                            </td>
                                            <td>
                                                <asp:HiddenField ID="hdfShip_To_Id" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="right">
                                    ภาษีมูลค่าเพิ่ม
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtTax" runat="server" CssClass="list-group-item" Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <uc8:PopUpSearchSalesTax ID="PopUpSearchSalesTax1" runat="server" KeyTarget="hdfTax_Id"
                                                    ValueTarget="txtTax" Enabled="True" />
                                            </td>
                                            <td>
                                                <asp:HiddenField ID="hdfTax_Id" runat="server" Value="0" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="right">
                                </td>
                                <td class="1px">
                                </td>
                                <td class="left">
                                </td>
                            </tr>
                            <tr>
                                <td class="right">
                                    วันที่เริ่มใช้งาน
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="txtStart_Date" runat="server" CssClass="list-group-item carlendar"
                                        Width="100px"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtStart_Date_CalendarExtender" runat="server" Enabled="True"
                                        TargetControlID="txtStart_Date" Format="dd/MM/yyyy">
                                    </asp:CalendarExtender>
                                </td>
                                <td class="right">
                                    วันที่เลิกใช้งาน
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="txtEnd_Date" runat="server" CssClass="list-group-item carlendar"
                                        Width="100px"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtEnd_Date_CalendarExtender" runat="server" Enabled="True"
                                        TargetControlID="txtEnd_Date" Format="dd/MM/yyyy">
                                    </asp:CalendarExtender>
                                </td>
                            </tr>
                            <tr>
                                <td class="right">
                                    รายละเอียด
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="txtDescription" runat="server" CssClass="list-group-item" TextMode="MultiLine"
                                        Width="300px"></asp:TextBox>
                                </td>
                                <td class="right">
                                    หมายเหตุ
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="txtRemark" runat="server" CssClass="list-group-item" TextMode="MultiLine"
                                        Width="300px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="right">
                                    <asp:Label ID="lblStatus" runat="server" Visible="False"></asp:Label>
                                </td>
                                <td class="1px">
                                </td>
                                <td class="left">
                                </td>
                                <td class="right">
                                </td>
                                <td class="1px">
                                </td>
                                <td class="left">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="right" colspan="6">
                                    <asp:Button ID="btnRequest" runat="server" CssClass="btn btn-primary" Text="ขออนุมัติ"
                                        Visible="False" />
                                    <asp:Button ID="btnApprove" runat="server" CssClass="btn btn-primary" Text="อนุมัติ"
                                        Visible="False" />
                                    <asp:Button ID="btnReject" runat="server" CssClass="btn btn-primary" Text="ไม่อนุมัติ"
                                        Visible="False" />
                                    <asp:Button ID="btnCreateSaleOrder" runat="server" CssClass="btn btn-primary" Text="สร้างรายการขายสินค้า"
                                        Visible="False" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="pnlDetail" runat="server" Visible="False">
        <div class="row">
            <div class="col-md-12">
                <div class="">
                    <div class="panel-body">
                        <table style="width: 100%;">
                            <tr class="tab-result-head">
                                <td>
                                    ลำดับที่
                                </td>
                                <td>
                                    รหัสสินค้า
                                </td>
                                <td>
                                    รายละเอียด
                                </td>
                                <td>
                                    ราคาต่อหน่วย
                                </td>
                                <td>
                                    จำนวน
                                </td>
                                <td>
                                    หน่วย
                                </td>
                                <td>
                                    ราคารวม
                                </td>
                                <td style="width: 45px">
                                </td>
                                <td style="width: 45px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblSeq" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <table style="width: 100%">
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtItem_Id" runat="server" CssClass="list-group-item" Width="100%"></asp:TextBox>
                                            </td>
                                            <td class="1px">
                                                <uc9:PopUpSearchItem ID="PopUpSearchItem1" runat="server" Enabled="True" KeyTarget="txtItem_Id"
                                                    ValueTarget="txtItem_Name" Extra1Target="txtUnit_Price" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtItem_Name" runat="server" CssClass="list-group-item" Width="100%"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtUnit_Price" runat="server" CssClass="list-group-item" Width="100%"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtQty" runat="server" CssClass="list-group-item" Width="100%"></asp:TextBox>
                                </td>
                                <td>
                                    <table style="width: 100%">
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtUOM_Name" runat="server" CssClass="list-group-item" Width="100%"></asp:TextBox>
                                            </td>
                                            <td>
                                                <uc10:PopUpSearchUOM ID="PopUpSearchUOM1" runat="server" ValueTarget="txtUOM_Name"
                                                    Enabled="True" KeyTarget="hdfUOM_Code" />
                                                <asp:HiddenField ID="hdfUOM_Code" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAmount" runat="server" CssClass="list-group-item" Width="100%"></asp:TextBox>
                                </td>
                                <td>
                                    <button id="btnAdd" runat="server" class="btn btn-default" type="button">
                                        <span class="glyphicon glyphicon-plus"></span>
                                    </button>
                                    <button id="btnSave" runat="server" class="btn btn-default" type="button">
                                        <span class="glyphicon glyphicon-floppy-disk"></span>
                                    </button>
                                </td>
                                <td>
                                    <button id="btnCancel" runat="server" class="btn btn-default" type="button">
                                        <span class="glyphicon glyphicon-remove"></span>
                                    </button>
                                </td>
                            </tr>
                            <asp:Repeater ID="rptDetail" runat="server">
                                <ItemTemplate>
                                    <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>'>
                                        <td>
                                            <asp:Label ID="lblSeq" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "_Seq_")%>'></asp:Label>
                                            <asp:Label ID="lblId" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Line_ID")%>'
                                                Visible="false"></asp:Label>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Item_Id")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Description")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Unit_Price")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "QTY")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "UOM_Name")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Amount")%>
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/image/button/btnEdit.png" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="imbDelete" runat="server" CommandName="Delete" ImageUrl="~/image/button/btnDelete.png" />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>'>
                                        <td>
                                            <asp:Label ID="lblSeq" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "_Seq_")%>'></asp:Label>
                                            <asp:Label ID="lblId" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Line_ID")%>'
                                                Visible="false"></asp:Label>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Item_Id")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Description")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Unit_Price")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "QTY")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "UOM_Name")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Amount")%>
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/image/button/btnEdit.png" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="imbDelete" runat="server" CommandName="Delete" ImageUrl="~/image/button/btnDelete.png" />
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                            </asp:Repeater>
                            <tr>
                                <td colspan="9" class="right">
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <table style="width: 100%;">
                                                <tr>
                                                    <td style="width: 90%;" class="right">
                                                        &nbsp;&nbsp;
                                                    </td>
                                                    <td class="1px">
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="right" style="width: 90%;">
                                                        รวม
                                                    </td>
                                                    <td class="1px">
                                                        :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtSubTotal" runat="server" CssClass="list-group-item right" Width="100px"
                                                            Enabled="False">0</asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="right">
                                                        ส่วนลด
                                                        <asp:Label ID="Label1" runat="server"></asp:Label>
                                                    </td>
                                                    <td class="1px">
                                                        :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtDiscount" runat="server" CssClass="list-group-item right" Width="100px">0</asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="right">
                                                        ภาษีมูลค่าเพิ่ม
                                                    </td>
                                                    <td class="1px">
                                                        :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtTaxAmount" runat="server" CssClass="list-group-item right" Width="100px"
                                                            Enabled="False">0</asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="right">
                                                        รวมทั้งสิ้น
                                                    </td>
                                                    <td class="1px">
                                                        :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtGrandTotal" runat="server" CssClass="list-group-item right" Width="100px"
                                                            Enabled="False">0</asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="right">
                                                    </td>
                                                    <td class="1px">
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="hdfTax_Id" EventName="ValueChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td class="right" colspan="9">
                                    <asp:Button ID="btnCalculatePromotion" runat="server" CssClass="btn btn-primary"
                                        Text="คำนวนโปรโมชั่น" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="pnlSearch" runat="server" Visible="True">
        <div class="row">
            <div class="col-md-12">
                <div class="">
                    <div class="panel-body">
                        <table style="width: 100%;">
                            <tr>
                                <td class="right">
                                    เลขที่ใบเสนอราคา
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="txtQuotation_IdS" runat="server" CssClass="list-group-item" Width="150px"></asp:TextBox>
                                </td>
                                <td class="right">
                                    ลูกค้า
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtCustomer_IdS" runat="server" CssClass="list-group-item" Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <uc4:PopUpSearchCustomer ID="PopUpSearchCustomer2" runat="server" Enabled="True"
                                                    Filter="txtCustomer_IdS" KeyTarget="txtCustomer_IdS" ValueTarget="txtCustomer_NameS" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtCustomer_NameS" runat="server" CssClass="list-group-item" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <asp:Panel ID="pnlResult" runat="server" Visible="False">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            ผลการค้นหา
                        </div>
                        <div class="panel-body">
                            <table style="width: 100%;">
                                <tr class="tab-result-head">
                                    <td>
                                        ลำดับ
                                    </td>
                                    <td>
                                        เลขที่ใบเสนอราคา
                                    </td>
                                    <td>
                                        ชื่อลูกค้า
                                    </td>
                                    <td>
                                        ชื่อลูกค้า (EN)
                                    </td>
                                    <td>
                                        รายละเอียด
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <asp:Repeater ID="rptSearch" runat="server">
                                    <ItemTemplate>
                                        <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>'>
                                            <td>
                                                <asp:Label ID="lblSeq" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "_Seq_")%>'></asp:Label>
                                            </td>
                                            <td>
                                                <%# DataBinder.Eval(Container.DataItem, "Quotation_ID")%>
                                            </td>
                                            <td>
                                                <%# DataBinder.Eval(Container.DataItem, "Customer_Name")%>
                                            </td>
                                            <td>
                                            </td>
                                            <td>
                                                <%# DataBinder.Eval(Container.DataItem, "Description")%>
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/image/button/btnEdit.png" />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>'>
                                            <td>
                                                <asp:Label ID="lblSeq" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "_Seq_")%>'></asp:Label>
                                            </td>
                                            <td>
                                                <%# DataBinder.Eval(Container.DataItem, "Quotation_ID")%>
                                            </td>
                                            <td>
                                                <%# DataBinder.Eval(Container.DataItem, "Customer_Name")%>
                                            </td>
                                            <td>
                                            </td>
                                            <td>
                                                <%# DataBinder.Eval(Container.DataItem, "Description")%>
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/image/button/btnEdit.png" />
                                            </td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                </asp:Repeater>
                                <tr>
                                    <td colspan="4">
                                        <uc2:RepeaterNavigateBar ID="RepeaterNavigateBar" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="right" colspan="4">
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <uc3:MessageBox ID="MessageBox" runat="server" />
</asp:Content>
