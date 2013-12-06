<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master.Master"
    CodeBehind="AIMTRNPAYMENT.aspx.vb" Inherits="AIMERP.UI.AIMTRNPAYMENT" %>

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
        .style6
        {
            width: 60px;
        }
        .style7
        {
            width: 120px;
        }
        .style10
        {
            width: 40px;
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
    <%--<ul class="nav nav-tabs">
        <li id="liHead" class="active" runat="server">
            <asp:LinkButton ID="lbtHead" runat="server">ข้อมูลเอกสาร</asp:LinkButton></li>
        <li id="liDetail" runat="server">
            <asp:LinkButton ID="lbtDetail" runat="server">ข้อมูลสินค้า</asp:LinkButton></li>
        <li id="liSearch" runat="server">
            <asp:LinkButton ID="lbtSearch" runat="server">ค้นหาข้อมูลเอกสาร</asp:LinkButton></li>
    </ul>--%>
    <asp:Panel ID="pnlHead" runat="server" Visible="true">
        <div class="row">
            <div class="col-md-12">
                <div class="">
                    <div class="panel-body">
                        <table style="width: 100%;">
                            <tr>
                                <td class="leftCol">
                                    เลขที่ Invoice</td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="rightCol">
                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="list-group-item" Width="150px"></asp:TextBox>
                                </td>
                                <td class="leftCol">
                                    ผู้ขาย </td>
                                <td class="1px">
                                    : </td>
                                <td class="rightCol">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox19" runat="server" CssClass="list-group-item" 
                                                    Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button ID="Button18" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox20" runat="server" CssClass="list-group-item" 
                                                    Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">
                                    วันที่ถึงกำหนดชำระ</td>
                                <td class="1px">
                                    :</td>
                                <td class="rightCol">
                                    <asp:TextBox ID="txtFromDue_Date" runat="server" CssClass="list-group-item carlendar"
                                        Width="100px"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtFromDue_CalendarExtender" runat="server" Enabled="True"
                                        TargetControlID="txtFromDue_Date" Format="dd/MM/yyyy">
                                    </asp:CalendarExtender>
                                </td>
                                <td class="leftCol">
                                    ถึงวันที่ถึงกำหนดชำระ</td>
                                <td class="1px">
                                    :</td>
                                <td class="rightCol">
                                    <asp:TextBox ID="txtToDue_Date" runat="server" CssClass="list-group-item carlendar"
                                        Width="100px"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtToDue_CalendarExtender" runat="server" Enabled="True"
                                        TargetControlID="txtToDue_Date" Format="dd/MM/yyyy">
                                    </asp:CalendarExtender>
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">
                                    &nbsp;</td>
                                <td class="1px">
                                    &nbsp;</td>
                                <td class="rightCol">
                                    &nbsp;</td>
                                <td class="leftCol">
                                    &nbsp;</td>
                                <td class="1px">
                                    &nbsp;</td>
                                <td class="rightCol">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="right" colspan="6">
                                    <asp:Button ID="Button12" runat="server" CssClass="btn btn-primary" 
                                        Text="บันทึก" />
                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" 
                                        Text="ทำรายการจ่ายชำระ" />
                                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" 
                                        Text="ยืนยันการจ่ายชำระ" />
                                    <asp:Button ID="Button5" runat="server" CssClass="btn btn-primary" 
                                        Text="พิมพ์เช็ค" />
                                    <asp:Button ID="Button15" runat="server" CssClass="btn btn-primary" 
                                        Text="ยกเลิก" />
                                </td>
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
                        <div class="panel-body">
                            <table style="width: 100%;">
                                 <tr class="tab-result-head">
                                <td class="style10">
                                </td>
                                <td class="style6">
                                    ลำดับที่
                                </td>
                                <td class="style7">
                                    เลขที่ Invoice</td>
                                <td>
                                    ชื่อผู้ขาย</td>
                                <td class="style12">
                                    สนง.ใหญ่/สาขา</td>
                                <td class="style12">
                                    วันที่ใบกำกับภาษี</td>
                                <td class="style12">
                                    เงื่อนไขการชำระ</td>
                                <td class="style12">
                                    วันที่ครบกำหนด
                                </td>
                                <td class="style12">
                                    ยอดเงิน
                                </td>
                            </tr>
                            <asp:Repeater ID="rptDocResult" runat="server">
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
                                    </tr>
                                </AlternatingItemTemplate>
                            </asp:Repeater>
                            <tr>
                                <td class="leftCol" colspan="9">
                                </td>
                            </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="pnlDetail" runat="server" Visible="True">
        <div class="row">
            <div class="col-md-12">
                <div class="">
                    <div class="panel-body">
                        <table style="width: 100%;">
                            <tr>
                                <td class="leftCol">
                                    วันที่จ่ายเช็ค</td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="rightCol">
                                    <asp:TextBox ID="txtChq_Date" runat="server" CssClass="list-group-item carlendar"
                                        Width="100px"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtChq_CalendarExtender" runat="server" Enabled="True"
                                        TargetControlID="txtChq_Date" Format="dd/MM/yyyy">
                                    </asp:CalendarExtender>
                                </td>
                                <td class="leftCol">
                                    เลขที่ญชี</td>
                                <td class="1px">
                                    :</td>
                                <td class="rightCol">
                                    <asp:TextBox ID="TextBox10" runat="server" CssClass="list-group-item" 
                                        Width="150px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">
                                    ธนาคาร
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="rightCol">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox11" runat="server" CssClass="list-group-item" 
                                                    Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button id="Button3" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="leftCol">
                                    สาขา</td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="rightCol">
                                               <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox12" runat="server" CssClass="list-group-item" 
                                                    Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button id="Button4" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>
                                    </td>
                            </tr>
                            <tr>
                                <td class="leftCol">
                                    &nbsp;</td>
                                <td class="1px">
                                    &nbsp;</td>
                                <td class="rightCol">
                                    &nbsp;</td>
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
        <asp:Panel ID="Panel2" runat="server" Visible="True">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-body">
                            <table style="width: 100%;">
                                <tr class="tab-result-head">
                                <td class="style10">
                                </td>
                                <td class="style6">
                                    ลำดับที่
                                </td>
                                <td class="style7">
                                    เลขที่</td>
                                <td>
                                    ชื่อผู้ขาย</td>
                                <td class="style12">
                                    สนง.ใหญ่/สาขา</td>
                                <td class="style12">
                                    วันที่ใบกำกับภาษี</td>
                                <td class="style12">
                                    เงื่อนไขการชำระ</td>
                                <td class="style12">
                                    วันที่ครบกำหนด
                                </td>
                                <td class="style12">
                                    ยอดเงิน
                                </td>
                            </tr>
                            <asp:Repeater ID="rptChqResult" runat="server">
                                <ItemTemplate>
                                    <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>'>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
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
                                    </tr>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>'>
                                         <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
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
                                    </tr>
                                </AlternatingItemTemplate>
                            </asp:Repeater>
                            <tr>
                                <td class="leftCol" colspan="9">
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