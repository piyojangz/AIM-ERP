<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master.Master"
    CodeBehind="AIMTRNRETURN.aspx.vb" Inherits="AIMERP.UI.AIMTRNRETURN" %>

<%@ MasterType VirtualPath="~/Master.Master" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="../../UserControl/ToolBar.ascx" TagName="ToolBar" TagPrefix="uc1" %>
<%@ Register Src="../../UserControl/RepeaterNavigateBar.ascx" TagName="RepeaterNavigateBar"
    TagPrefix="uc2" %>
<%@ Register Src="../../UserControl/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                                <td class="right">
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
                                </td>
                                <td class="right">
                                    บริษัท
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="TextBox10" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
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
                                    <asp:TextBox ID="txtId" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                </td>
                                <td class="right">
                                    วันที่คืนสินค้า
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="txtField7" runat="server" CssClass="list-group-item carlendar" Width="100px"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtField7_CalendarExtender" runat="server" Enabled="True"
                                        TargetControlID="txtField7">
                                    </asp:CalendarExtender>
                                </td>
                                <td class="right">
                                    สถานะรายการคืน
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="txtField8" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
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
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                </td>
                                <td class="right">
                                    ชื่อลูกค้า
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="TextBox19" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                </td>
                                <td class="right">
                                    สกุลเงิน
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="TextBox18" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
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
                                    <asp:TextBox ID="TextBox20" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                </td>
                                <td class="right">
                                    Bill to
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="TextBox21" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                </td>
                                <td class="right">
                                    Ship to
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="TextBox22" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="right">
                                    รายละเอียด
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left" colspan="4">
                                    <asp:TextBox ID="txtField5" runat="server" CssClass="list-group-item" Width="325px"></asp:TextBox>
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
                                    พนักงานขาย
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="TextBox25" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                </td>
                                <td class="right">
                                    เงื่อนไขการับชำระเงิน
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="TextBox24" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                </td>
                                <td class="right">
                                    ภาษีมูลค่าเพิ่ม
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="TextBox23" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="right">
                                    &nbsp;&nbsp;</td>
                                <td class="1px">
                                    &nbsp;</td>
                                <td class="left">
                                    &nbsp;</td>
                                <td class="right">
                                    &nbsp;</td>
                                <td class="1px">
                                    &nbsp;</td>
                                <td class="left">
                                    &nbsp;</td>
                                <td class="right">
                                    &nbsp;</td>
                                <td class="1px">
                                    &nbsp;</td>
                                <td class="left">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="right" colspan="9">
                                    <asp:Button ID="Button12" runat="server" CssClass="btn btn-primary" Text="ยืนยันรายการ" />
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
                                    หน่วยนับ
                                </td>
                                <td>
                                    เหตุผลการคืน
                                </td>
                                <td>
                                    เลขที่ใบขาย
                                </td>
                                <td>
                                    ลำดับที่
                                </td>
                                <td>
                                    จำนวน
                                </td>
                                <td>
                                    ราคาต่อหน่วย
                                </td>
                                <td>
                                    ราคารวม
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr class="tab-result-head">
                                <td>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="list-group-item">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox14" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="list-group-item">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="list-group-item">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox16" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox17" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
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
                            <asp:Repeater ID="rptResult" runat="server">
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
                                            <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/image/button/btnEdit.png" />
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
                                            <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/image/button/btnEdit.png" />
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                            </asp:Repeater>
                            <tr>
                                <td colspan="11" class="right">
                                    <table style="width: 100%;">
                                        <tr>
                                            <td style="width: 90%;" class="right">
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
                                                <asp:TextBox ID="txtId0" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="right">
                                                ส่วนลด
                                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                            </td>
                                            <td class="1px">
                                                :
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtId1" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
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
                                                <asp:TextBox ID="txtId2" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
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
                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
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
                                </td>
                            </tr>
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
                                <td class="right">
                                    เลขที่ใบคืนสินค้า
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                </td>
                                <td class="right">
                                    ชื่อลูกค้า
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox7" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button id="Button4" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
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
                                                <asp:TextBox ID="TextBox11" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button id="Button3" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
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
                                    <td>
                                        เลขที่ใบคืนสินค้า
                                    </td>
                                    <td>
                                        ชื่อลูกค้า
                                    </td>
                                    <td>
                                        สนง.ใหญ่/สาขา
                                    </td>
                                    <td>
                                        รายละเอียด
                                    </td>
                                </tr>
                                <asp:Repeater ID="Repeater1" runat="server">
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
    <uc3:MessageBox ID="MessageBox1" runat="server" />
</asp:Content>
