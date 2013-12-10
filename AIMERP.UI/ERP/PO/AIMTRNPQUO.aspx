<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master.Master"
    CodeBehind="AIMTRNPQUO.aspx.vb" Inherits="AIMERP.UI.AIMTRNPQUO" %>

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
<%@ Register Src="../../UserControl/PopUpSearchItem.ascx" TagName="PopUpSearchItem"
    TagPrefix="uc9" %>
<%@ Register Src="../../UserControl/PopUpSearchUOM.ascx" TagName="PopUpSearchUOM"
    TagPrefix="uc10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../css/default.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style2 {
            width: 100px;
        }

        .style3 {
            width: 125px;
        }

        .style5 {
            width: 170px;
        }

        .style6 {
            width: 60px;
        }

        .style7 {
            width: 150px;
        }

        .style9 {
            width: 120px;
        }

        .style10 {
            width: 200px;
        }
    </style>
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
    <asp:Panel ID="pnlHead" runat="server" Visible="True">
        <div class="row">
            <div class="col-md-12">
                <div class="">
                    <div class="panel-body">
                        <table style="width: 100%;">
                            <tr>
                                <td class="leftCol"></td>
                                <td class="1px"></td>
                                <td class="right"></td>
                                <td class="leftCol">บริษัท
                                </td>
                                <td class="1px">:</td>
                                <td class="rightCol">
                                    <asp:TextBox ID="txtOrg_Id" runat="server" CssClass="list-group-item"
                                        Width="150px" Enabled="False" />
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">เลขที่ ใบขอซื้อ</td>
                                <td class="1px">:
                                </td>
                                <td class="right">
                                    <asp:TextBox ID="txtQuotation_No" runat="server" CssClass="list-group-item" Width="150px"
                                        Enabled="False" />
                                </td>
                                <td class="leftCol">สถานะ
                                </td>
                                <td class="1px">:
                                </td>
                                <td class="rightCol">
                                    <asp:TextBox ID="txtQuotation_Status" runat="server" CssClass="list-group-item" Width="150px"
                                        Enabled="False" />
                                    <asp:HiddenField ID="hdfQuotation_Status" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">ผู้ขาย
                                </td>
                                <td class="1px">:
                                </td>
                                <td class="right">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtSupplier_Id" runat="server" CssClass="list-group-item" Width="150px" />
                                            </td>
                                            <td>
                                                <uc4:PopUpSearchCustomer ID="PopUpSearchSupplier1" runat="server" Filter="txtSupplier_Id"
                                                    KeyTarget="txtSupplier_Id" ValueTarget="txtSupplier_Name" Enabled="True" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtSupplier_Name" runat="server" CssClass="list-group-item" Width="200px" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="leftCol">ประเภท</td>
                                <td class="1px">:
                                </td>
                                <td class="rightCol">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="list-group-item"
                                                    Width="150px" />
                                            </td>
                                            <td>
                                                <button id="btnSearch3" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">สนง.ใหญ่/สาขา
                                </td>
                                <td class="1px">:
                                </td>
                                <td class="right">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtSupplier_Site_Name" runat="server" CssClass="list-group-item"
                                                    Width="150px" />
                                            </td>
                                            <td>
                                                <uc6:PopUpSearchSite ID="PopUpSearchSite1" runat="server" KeyTarget="hdfSupplier_Site_Id"
                                                    ValueTarget="txtSupplier_Site_Name" Filter="txtCustomer_Id" Enabled="True" />
                                            </td>
                                            <td>
                                                <asp:HiddenField ID="hdfSupplier_Site_Id" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="leftCol">ไฟล์แนบ</td>
                                <td class="1px">:
                                </td>
                                <td class="rightCol">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox19" runat="server" CssClass="list-group-item"
                                                    Width="150px" />
                                            </td>
                                            <td>
                                                <button id="Button8" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">รายละเอียด
                                </td>
                                <td class="1px">:
                                </td>
                                <td class="left" colspan="4">
                                    <asp:TextBox ID="txtRemark" runat="server" CssClass="list-group-item"
                                        Width="395px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">สกุลเงิน</td>
                                <td class="1px">:
                                </td>
                                <td class="right">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtCurrency_Name" runat="server" CssClass="list-group-item" Width="150px" />
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
                                <td class="leftCol">เงื่อนไขการชำระเงิน</td>
                                <td class="1px">:</td>
                                <td class="rightCol">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtTerm" runat="server" CssClass="list-group-item" Width="150px" />
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
                                <td class="leftCol">วันที่เริ่มใช้งาน
                                </td>
                                <td class="1px">:
                                </td>
                                <td class="right">
                                    <asp:TextBox ID="txtStart_Date" runat="server" CssClass="list-group-item carlendar"
                                        Width="100px" />
                                    <asp:CalendarExtender ID="txtSart_Date1_CalendarExtender" runat="server"
                                        Enabled="True" TargetControlID="txtStart_Date">
                                    </asp:CalendarExtender>
                                </td>
                                <td class="leftCol">วันที่เลิกใช้งาน
                                </td>
                                <td class="1px">:
                                </td>
                                <td class="rightCol">
                                    <asp:TextBox ID="txtEnd_Date" runat="server" CssClass="list-group-item carlendar"
                                        Width="100px" />
                                    <asp:CalendarExtender ID="txtEnd_Date1_CalendarExtender" runat="server"
                                        Enabled="True" TargetControlID="txtEnd_Date">
                                    </asp:CalendarExtender>
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol" colspan="6"></td>
                            </tr>
                            <tr>
                                <td class="right" colspan="6">
                                    <asp:Button ID="btnRequest" runat="server" CssClass="btn btn-primary" Text="ขออนุมัติ" />
                                    <asp:Button ID="btnApprove" runat="server" CssClass="btn btn-primary" Text="อนุมัติ" />
                                    <asp:Button ID="btnReject" runat="server" CssClass="btn btn-primary" Text="ไม่อนุมัติ" />
                                    <asp:Button ID="btnCreateSaleOrder" runat="server" CssClass="btn btn-primary"
                                        Text="สร้างรายการสั่งซื้อสินค้า" />
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
                                <td class="style6">ลำดับที่
                                </td>
                                <td class="style3">ประเภท
                                </td>
                                <td class="style5">รหัสสินค้า
                                </td>
                                <td>รายละเอียด
                                </td>
                                <td class="style3">หน่วย
                                </td>
                                <td class="style2">วันที่เริ่มต้น
                                </td>
                                <td class="style2">วันที่สินสุด
                                </td>
                                <td></td>
                            </tr>
                            <tr class="tab-result-head">
                                <td class="style6"></td>
                                <td class="style3">
                                    <table>
                                        <tr>
                                            <td>
                                                <!-- Quotation Type Lookup -->
                                                <asp:TextBox ID="TextBox7" runat="server" CssClass="list-group-item"
                                                    Width="100px" />
                                            </td>
                                            <td>
                                                <button id="Button7" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="style5">
                                    <table style="width: 100%">
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtItem_Id" runat="server" CssClass="list-group-item"
                                                    Width="150px" />
                                            </td>
                                            <td class="1px">
                                                <uc9:PopUpSearchItem ID="PopUpSearchItem1" runat="server" ValueTarget="txtItem_Name"
                                                    Enabled="True" KeyTarget="txtItem_Id" Extra1Target="" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtItem_Name" runat="server" CssClass="list-group-item" Width="100%" />
                                </td>
                                <td class="style3">
                                    <table style="width: 100%">
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtUOM_Name" runat="server" CssClass="list-group-item"
                                                    Width="100px" />
                                            </td>
                                            <td>
                                                <uc10:PopUpSearchUOM ID="PopUpSearchUOM1" runat="server" ValueTarget="txtUOM_Name"
                                                    Enabled="True" KeyTarget="hdfUOM_Code" />
                                                <asp:HiddenField ID="hdfUOM_Code" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="style2">
                                    <asp:TextBox ID="txtStart_Date2" runat="server" CssClass="list-group-item carlendar"
                                        Width="100px" />
                                    <asp:CalendarExtender ID="txtStart_Date2_CalendarExtender" runat="server"
                                        Enabled="True" TargetControlID="txtStart_Date2">
                                    </asp:CalendarExtender>
                                </td>
                                <td class="style2">
                                    <asp:TextBox ID="txtEnd_Date2" runat="server" CssClass="list-group-item carlendar"
                                        Width="100px" />
                                    <asp:CalendarExtender ID="txtEnd_Date2_CalendarExtender" runat="server"
                                        Enabled="True" TargetControlID="txtEnd_Date2">
                                    </asp:CalendarExtender>
                                </td>
                                <td>
                                    <table>
                                        <tr>
                                            <td>
                                                <button id="Button1" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-plus"></span>
                                                </button>
                                            </td>
                                            <td>
                                                <button id="Button2" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-floppy-disk"></span>
                                                </button>
                                            </td>
                                            <td>
                                                <button id="btnSearch7" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-remove"></span>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <asp:Repeater ID="rptDetail" runat="server">
                                <ItemTemplate>
                                    <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>'>
                                        <td>
                                            <asp:Label ID="lblSeq" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "_Seq_")%>' />
                                            <asp:Label ID="lblId" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Id")%>'
                                                Visible="false" />
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "QTY_From")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "QTY_To")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Price")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Start_Date")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "End_Date")%>
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/image/button/btnEdit.png" />
                                            <button id="Button4" runat="server" class="btn btn-default" type="button">
                                                <span class="glyphicon glyphicon-plus"></span>
                                            </button>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>'>
                                        <td>
                                            <asp:Label ID="lblSeq" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "_Seq_")%>' />
                                            <asp:Label ID="lblId" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Id")%>'
                                                Visible="false" />
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/image/button/btnEdit.png" />
                                            <button id="Button4" runat="server" class="btn btn-default" type="button">
                                                <span class="glyphicon glyphicon-plus"></span>
                                            </button>
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                            </asp:Repeater>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="pnSubDetail" runat="server" Visible="False">
        <div class="row">
            <div class="col-md-12">
                <div class="">
                    <div class="panel-body">
                        <table style="width: 100%;">
                            <tr class="tab-result-head">
                                <td class="style6">ลำดับที่
                                </td>
                                <td class="style3">หน่วยนับ
                                </td>
                                <td class="style2">จาก (จำนวน)
                                </td>
                                <td class="style2">ถึง (จำนวน)
                                </td>
                                <td class="style2">ราคา
                                </td>
                                <td class="style2">วันที่เริ่มต้น
                                </td>
                                <td class="style2">วันที่สินสุด
                                </td>
                                <td></td>
                            </tr>
                            <tr class="tab-result-head">
                                <td class="style6"></td>
                                <td class="style3">
                                    <table style="width: 100%">
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox11" runat="server" CssClass="list-group-item"
                                                    Width="100px" />
                                            </td>
                                            <td>
                                                <uc10:PopUpSearchUOM ID="PopUpSearchUOM3" runat="server" ValueTarget="txtUOM_Name"
                                                    Enabled="True" KeyTarget="hdfUOM_Code" />
                                                <asp:HiddenField ID="HiddenField2" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="style2">
                                    <asp:TextBox ID="TextBox22" runat="server" CssClass="list-group-item"
                                        Width="100px" />
                                </td>
                                <td class="style2">
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="list-group-item"
                                        Width="100px" />
                                </td>
                                <td class="style2">
                                    <asp:TextBox ID="TextBox23" runat="server" CssClass="list-group-item"
                                        Width="100px" />
                                </td>
                                <td class="style2">
                                    <asp:TextBox ID="txtStart3_Date" runat="server" CssClass="list-group-item carlendar"
                                        Width="100px" />
                                    <asp:CalendarExtender ID="txtStart_Date3_CalendarExtender" runat="server" Enabled="True"
                                        TargetControlID="txtStart_Date3" Format="dd/MM/yyyy">
                                    </asp:CalendarExtender>
                                </td>
                                <td class="style2">
                                    <asp:TextBox ID="txtEnd_Date3" runat="server" CssClass="list-group-item carlendar"
                                        Width="100px" />
                                    <asp:CalendarExtender ID="txtEnd_Date3_CalendarExtender" runat="server"
                                        Enabled="True" TargetControlID="txtEnd_Date3">
                                    </asp:CalendarExtender>
                                </td>
                                <td>
                                    <table>
                                        <tr>
                                            <td>
                                                <button id="Button4" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-plus"></span>
                                                </button>
                                            </td>
                                            <td>
                                                <button id="Button5" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-floppy-disk"></span>
                                                </button>
                                            </td>
                                            <td>
                                                <button id="Button6" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-remove"></span>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <asp:Repeater ID="rptSubDetail" runat="server">
                                <ItemTemplate>
                                    <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>'>
                                        <td>
                                            <asp:Label ID="lblSeq" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "_Seq_")%>' />
                                            <asp:Label ID="lblId" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Id")%>'
                                                Visible="false" />
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/image/button/btnEdit.png" />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>'>
                                        <td>
                                            <asp:Label ID="lblSeq" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "_Seq_")%>' />
                                            <asp:Label ID="lblId" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Id")%>'
                                                Visible="false" />
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/image/button/btnEdit.png" />
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                            </asp:Repeater>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="pnlSearch" runat="server" Visible="False">
        <div class="row">
            <div class="col-md-12">
                <div class="">
                    <div class="panel-body">
                        <table style="width: 100%;">
                            <tr>
                                <td class="right">เลขที่ใบเสนอราคา
                                </td>
                                <td class="1px">:
                                </td>
                                <td class="right">
                                    <asp:TextBox ID="txtQuotation_ID_Search" runat="server" CssClass="list-group-item" Width="150px" />
                                </td>
                                <td class="leftCol">สถานะ
                                </td>
                                <td class="1px">:
                                </td>
                                <td class="rightCol">
                                    <%--<table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtCustomer_IdS" runat="server" CssClass="list-group-item" Width="150px" />
                                            </td>
                                            <td>
                                                <uc4:PopUpSearchCustomer ID="PopUpSearchCustomer2" runat="server" Enabled="True"
                                                    Filter="txtCustomer_IdS" KeyTarget="txtCustomer_IdS" ValueTarget="txtCustomer_NameS" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtCustomer_NameS" runat="server" CssClass="list-group-item" Width="200px" />
                                            </td>
                                        </tr>
                                    </table>--%>

                                    <asp:TextBox ID="txtStatus_Search" runat="server" CssClass="list-group-item"
                                        Width="150px" />
                                    <!-- ต้องเป็น usercontrol สถานะ -->
                                    <button id="Button9" runat="server" class="btn btn-default" type="button">
                                        <span class="glyphicon glyphicon-search"></span>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">ผู้ขาย
                                </td>
                                <td class="1px">:
                                </td>
                                <td class="right">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtSupplier_ID_Search" runat="server" CssClass="list-group-item" Width="150px" />
                                            </td>
                                            <td>
                                                <button id="Button10" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox9" runat="server" CssClass="list-group-item" Width="200px" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="leftCol">&nbsp;</td>
                                <td class="1px">&nbsp;</td>
                                <td class="rightCol">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="leftCol">วันที่เริ่มใช้งาน
                                </td>
                                <td class="1px">:
                                </td>
                                <td class="right">
                                    <asp:TextBox ID="txtStart_Date_Search" runat="server" CssClass="list-group-item carlendar"
                                        Width="100px" />
                                    <asp:CalendarExtender ID="txtStart_Date4_CalendarExtender" runat="server"
                                        Enabled="True" TargetControlID="txtStart_Date_Search" />
                                </td>
                                <td class="leftCol">วันที่เลิกใช้งาน
                                </td>
                                <td class="1px">:
                                </td>
                                <td class="rightCol">
                                    <asp:TextBox ID="txtEnd_Date_Search" runat="server" CssClass="list-group-item carlendar"
                                        Width="100px" />
                                    <asp:CalendarExtender ID="txtEnd_Date4_CalendarExtender" runat="server"
                                        Enabled="True" TargetControlID="txtEnd_Date_Search" />
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
                                    <td>ลำดับ
                                    </td>
                                    <td>เลขที่ใบขอซื้อ
                                    </td>
                                    <td>ผู้ขาย
                                    </td>
                                    <td>รายละเอียด
                                    </td>
                                    <td>สถานะ
                                    </td>
                                    <td>วันที่เริ่มใช้งาน
                                    </td>
                                    <td>วันที่เลิกใช้งาน
                                    </td>
                                </tr>
                                <asp:Repeater ID="rptSearch" runat="server">
                                    <ItemTemplate>
                                        <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>'>
                                            <td>
                                                <asp:Label ID="lblSeq" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "_Seq_")%>' />
                                            </td>
                                            <td>
                                                <%# DataBinder.Eval(Container.DataItem, "Quotation_No")%>
                                            </td>
                                            <td>
                                                <%# DataBinder.Eval(Container.DataItem, "Supplier_Name")%>
                                            </td>
                                            <td>
                                                <%# DataBinder.Eval(Container.DataItem, "Remark")%>
                                            </td>
                                            <td>
                                                <%# DataBinder.Eval(Container.DataItem, "Status")%>
                                            </td>
                                            <td>
                                                <%# DataBinder.Eval(Container.DataItem, "Start_Date")%>
                                            </td>
                                            <td>
                                                <%# DataBinder.Eval(Container.DataItem, "End_Date")%>
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/image/button/btnEdit.png" />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>'>
                                            <td>
                                                <asp:Label ID="lblSeq" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "_Seq_")%>' />
                                            </td>
                                            <td>
                                                <%# DataBinder.Eval(Container.DataItem, "Quotation_No")%>
                                            </td>
                                            <td>
                                                <%# DataBinder.Eval(Container.DataItem, "Supplier_Name")%>
                                            </td>
                                            <td>
                                                <%# DataBinder.Eval(Container.DataItem, "Remark")%>
                                            </td>
                                            <td>
                                                <%# DataBinder.Eval(Container.DataItem, "Status")%>
                                            </td>
                                            <td>
                                                <%# DataBinder.Eval(Container.DataItem, "Start_Date")%>
                                            </td>
                                            <td>
                                                <%# DataBinder.Eval(Container.DataItem, "End_Date")%>
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/image/button/btnEdit.png" />
                                            </td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                </asp:Repeater>
                                <tr>
                                    <td colspan="6">
                                        <uc2:RepeaterNavigateBar ID="RepeaterNavigateBar" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="right" colspan="6"></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </asp:Panel>
    </asp:Panel>

    <!-- Modal -->
    <div class="modal fade" id="modPODetailPrice">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <b>...</b>
                </div>
                <div class="modal-body">
                    body
                </div>
                <div class="modal-footer">
                    <%--<asp:Button ID="btnSelect" runat="server" Text="เลือก" class="btn btn-primary btn-sm" OnClick="btnSelect_Click" />
                <asp:Button ID="btnCancel" runat="server" class="btn btn-primary btn-sm" data-dismiss="modal" Text="ยกเลิก" />--%>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <uc3:MessageBox ID="MessageBox1" runat="server" />
</asp:Content>
