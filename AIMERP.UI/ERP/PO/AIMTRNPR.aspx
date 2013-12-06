<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master.Master"
    CodeBehind="AIMTRNPR.aspx.vb" Inherits="AIMERP.UI.AIMTRNPR" %>

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
<%@ Register Src="../../UserControl/PopUpSearchItem.ascx" TagName="PopUpSearchItem"
    TagPrefix="uc9" %>
<%@ Register Src="../../UserControl/PopUpSearchUOM.ascx" TagName="PopUpSearchUOM"
    TagPrefix="uc10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../css/default.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style4
        {
            width: 100px;
        }
        .style6
        {
            width: 60px;
        }
        .style9
        {
            width: 200px;
        }
        .style10
        {
            width: 75px;
        }
        .style11
        {
            width: 250px;
        }
        .style12
        {
            width: 150px;
        }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <uc1:ToolBar ID="ToolBar" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="nav nav-tabs">
        <li id="liHead" class="active" runat="server">
            <asp:LinkButton ID="lbtHead" runat="server">ข้อมูลเอกสาร</asp:LinkButton></li>
        <li id="liDetail" runat="server">
            <asp:LinkButton ID="lbtDetail" runat="server">ข้อมูลสินค้า</asp:LinkButton></li>
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
                                <td class="leftCol">
                                </td>
                                <td class="1px">
                                </td>
                                <td class="right">
                                </td>
                                <td class="leftCol">
                                    บริษัท
                                </td>
                                <td class="1px">
                                    :</td>
                                <td class="rightCol">
                                    <asp:TextBox ID="TextBox10" runat="server" CssClass="list-group-item" 
                                        Width="150px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">
                                    เลขที่ ใบขอซื้อ</td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="right">
                                    <asp:TextBox ID="txtId" runat="server" CssClass="list-group-item" Width="150px"></asp:TextBox>
                                </td>
                                <td class="leftCol">
                                    สถานะ
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="rightCol">
                                    <asp:TextBox ID="txtPromotion_Status" runat="server" CssClass="list-group-item" Width="150px"
                                        Enabled="False"></asp:TextBox>
                                    <asp:HiddenField ID="hdfPromotion_Status" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">
                                    ผู้ขาย
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="right">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtCustomer_Id" runat="server" CssClass="list-group-item" Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button id="btnSearch0" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtCustomer_Name" runat="server" CssClass="list-group-item" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="leftCol">
                                    ประเภท</td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="rightCol">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="list-group-item" 
                                                    Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button ID="btnSearch3" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">
                                    สนง.ใหญ่/สาขา
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="right">
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
                                <td class="leftCol">
                                    สกุลเงิน</td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="right">
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
                                <td class="leftCol">
                                    รายละเอียด
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left" colspan="1">
                                    <asp:TextBox ID="txtField5" runat="server" CssClass="list-group-item" 
                                        Width="395px"></asp:TextBox>
                                </td>
                                <td class="leftCol">
                                    จำนวนเงินรวม</td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="rightCol">
                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="list-group-item" 
                                        Width="150px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">
                                    ผู้จัดซื้อ</td>
                                <td class="1px">
                                    :</td>
                                <td class="right">
                                    <asp:TextBox ID="txtField9" runat="server" CssClass="list-group-item" 
                                        Width="395px"></asp:TextBox>
                                </td>
                                <td class="leftCol">
                                    วันที่สร้่างรายการ </td>
                                <td class="1px">
                                    : </td>
                                <td class="right">
                                    <asp:TextBox ID="txtCreate_Date" runat="server" CssClass="list-group-item carlendar" 
                                        Width="100px"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtCreate_Date_CalendarExtender" runat="server" 
                                        Enabled="True" TargetControlID="txtCreate_Date">
                                    </asp:CalendarExtender>
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol" colspan="6">
                                </td>
                            </tr>
                            <tr>
                                <td class="right" colspan="6">
                                    <asp:Button ID="Button12" runat="server" CssClass="btn btn-primary" Text="ขออนุมัติ" />
                                    <asp:Button ID="Button13" runat="server" CssClass="btn btn-primary" Text="อนุมัติ" />
                                    <asp:Button ID="Button14" runat="server" CssClass="btn btn-primary" Text="ไม่อนุมัติ" />
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
                                <td class="style6">
                                    ลำดับที่
                                </td>
                                <td class="style4">
                                    ประเภท
                                </td>
                                <td class="style4">
                                    รหัสสินค้า
                                </td>
                                <td>
                                    รายละเอียด
                                </td>
                                <td class="style4">
                                    หน่วย
                                </td>
                                <td class="style10">
                                    จำนวน
                                </td>
                                <td class="style4">
                                    ราคาต่อหน่วย
                                </td>
                                <td class="style10">
                                    จำนวนเงิน
                                </td>
                                <td class="style4">
                                    วันที่ต้องการ
                                </td>
                                <td>
                                    ปิด
                                </td>
                                <td class="style6">
                                    ยกเลิก
                                </td>
                                <td class="style10">
                                    รับของ
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr class="tab-result-head">
                                <td class="style6">
                                </td>
                                <td class="style4">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox5" runat="server" CssClass="list-group-item" 
                                                    Width="75px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button ID="Button3" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="style4">
                                    <table style="width: 100%">
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtItem_Id" runat="server" CssClass="list-group-item" 
                                                    Width="75px"></asp:TextBox>
                                            </td>
                                            <td class="1px">
                                                <button ID="Button5" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtItem_Name" runat="server" CssClass="list-group-item" Width="100%"></asp:TextBox>
                                </td>
                                <td class="style4">
                                    <table style="width: 100%">
                                        <tr>
                                            <td class="style4">
                                                <asp:TextBox ID="txtUOM_Name" runat="server" CssClass="list-group-item" 
                                                    Width="75px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <uc10:PopUpSearchUOM ID="PopUpSearchUOM1" runat="server" ValueTarget="txtUOM_Name"
                                                    Enabled="True" KeyTarget="hdfUOM_Code" />
                                                <asp:HiddenField ID="hdfUOM_Code" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                 <td class="style10">
                                     <asp:TextBox ID="txtItem_Name0" runat="server" CssClass="list-group-item" 
                                         Width="75px"></asp:TextBox>
                                </td>
                                <td class="style4">
                                    <asp:TextBox ID="txtItem_Name1" runat="server" CssClass="list-group-item" 
                                        Width="100px"></asp:TextBox>
                                </td>
                                <td class="style10">
                                    <asp:TextBox ID="txtItem_Name2" runat="server" CssClass="list-group-item" 
                                        Width="75px"></asp:TextBox>
                                </td>
                                 <td class="style4">
                                    <asp:TextBox ID="txtRequest_Date" runat="server" CssClass="list-group-item carlendar" 
                                        Width="100px"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtRequest_Date_CalendarExtender" runat="server" 
                                        Enabled="True" TargetControlID="txtRequest_Date">
                                    </asp:CalendarExtender>
                                </td>
                                <td>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </td>
                                <td class="style6">
                                    <asp:CheckBox ID="CheckBox2" runat="server" />
                                </td>
                                <td class="style10">
                                    <asp:TextBox ID="txtItem_Name3" runat="server" CssClass="list-group-item" 
                                        Width="75px"></asp:TextBox>
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
                                            <asp:Label ID="lblSeq" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "_Seq_")%>'></asp:Label>
                                            <asp:Label ID="lblId" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Id")%>'
                                                Visible="false"></asp:Label>
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
                                                    <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>'>
                                        <td>
                                            <asp:Label ID="lblSeq" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "_Seq_")%>'></asp:Label>
                                            <asp:Label ID="lblId" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Id")%>'
                                                Visible="false"></asp:Label>
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
                                        </td><td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td><td>
                                            <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/image/button/btnEdit.png" />
                                            <button id="Button4" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
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
                                <td class="leftCol">
                                    เลขที่ใบขอซื้อ
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="rightCol">
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="list-group-item" Width="150px"></asp:TextBox>
                                </td>
                                <td class="leftCol">
                                    สถานะ </td>
                                <td class="1px">
                                    : </td>
                                <td class="rightCol">
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="list-group-item" 
                                        Width="150px"></asp:TextBox>
                                    <button ID="Button6" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">
                                    ผู้ขาย
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="rightCol">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox16" runat="server" CssClass="list-group-item" 
                                                    Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button ID="Button15" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox17" runat="server" CssClass="list-group-item" 
                                                    Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="leftCol">
                                    &nbsp;</td>
                                <td class="1px">
                                    &nbsp;</td>
                                <td class="rightCol">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <asp:Panel ID="pnlResult" runat="server" Visible="True">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            ผลการค้นหา
                        </div>
                        <div class="panel-body">
                            <table style="width: 100%;">
                                <tr class="tab-result-head">
                                    <td class="style6">
                                        ลำดับ
                                    </td>
                                    <td class="style9">
                                        เลขที่ใบขอซื้อ</td>
                                    <td class="style11">
                                        ผู้ขาย
                                    </td>
                                    <td>
                                        รายละเอียด
                                    </td>
                                    <td class="style12">
                                        สถานะ
                                    </td>
                                </tr>
                                <asp:Repeater ID="rptResult" runat="server">
                                    <ItemTemplate>
                                        <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>'>
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
                                        </tr>
                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>'>
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
    <uc3:messagebox ID="MessageBox1" runat="server" />
</asp:Content>