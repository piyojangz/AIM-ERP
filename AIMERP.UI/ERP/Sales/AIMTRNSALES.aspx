<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master.Master"
    CodeBehind="AIMTRNSALES.aspx.vb" Inherits="AIMERP.UI.AIMTRNSALES" %>
    
<%@ MasterType VirtualPath="~/Master.Master" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="../../UserControl/ToolBar.ascx" TagName="ToolBar" TagPrefix="uc1" %>
<%@ Register Src="../../UserControl/RepeaterNavigateBar.ascx" TagName="RepeaterNavigateBar"
    TagPrefix="uc2" %>
<%@ Register src="../../UserControl/MessageBox.ascx" tagname="MessageBox" tagprefix="uc3" %>
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
                                    สถานะ
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="TextBox7" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                </td>
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
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
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
                                                <asp:TextBox ID="txtField1" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button id="btnSearch" runat="server" class="btn btn-default" type="button">
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
                                                <asp:TextBox ID="txtField2" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button id="btnSearch1" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
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
                                                <asp:TextBox ID="TextBox3" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button id="btnSearch4" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
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
                                                <asp:TextBox ID="txtField3" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button id="btnSearch0" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
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
                                                <asp:TextBox ID="txtField4" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button id="btnSearch2" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
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
                                                <asp:TextBox ID="TextBox5" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button id="btnSearch5" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>
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
                                    <asp:TextBox ID="txtField5" runat="server" CssClass="list-group-item" 
                                        Width="530px"></asp:TextBox>
                                </td>
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
                                                <asp:TextBox ID="TextBox8" runat="server" CssClass="list-group-item" Width="100px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button id="btnSearch6" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>
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
                                    <asp:TextBox ID="txtField7" runat="server" CssClass="list-group-item carlendar" Width="100px"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtField7_CalendarExtender" runat="server" Enabled="True"
                                        TargetControlID="txtField7">
                                    </asp:CalendarExtender>
                                </td>
                                <td class="right">
                                    วันที่เลิกใช้งาน
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="txtField8" runat="server" CssClass="list-group-item carlendar" Width="100px"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtField8_CalendarExtender" runat="server" Enabled="True"
                                        TargetControlID="txtField8">
                                    </asp:CalendarExtender>
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
                                    หมายเหตุ
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left" colspan="4">
                                    <asp:TextBox ID="txtField6" runat="server" CssClass="list-group-item" Width="500px"></asp:TextBox>
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
                                    &nbsp;&nbsp;
                                </td>
                                <td class="1px">
                                    &nbsp;
                                </td>
                                <td class="left" colspan="4">
                                    &nbsp;
                                </td>
                                <td class="right">
                                    &nbsp;
                                </td>
                                <td class="1px">
                                    &nbsp;
                                </td>
                                <td class="left">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="right" colspan="9">
                                    <table style="width:100%;">
                                        <tr>
                                            <td class="left">
                                                <asp:Button ID="Button12" runat="server" CssClass="btn btn-primary" 
                                                    Text="สั่งสินค้าครั้งสุดท้าย" />
                                                <asp:Button ID="Button13" runat="server" CssClass="btn btn-primary" 
                                                    Text="ประวัติการชำระเงิน" />
                                                <asp:Button ID="Button14" runat="server" CssClass="btn btn-primary" 
                                                    Text="ประวัติการคืนสินค้า" />
                                                <asp:Button ID="Button15" runat="server" CssClass="btn btn-primary" 
                                                    Text="ยอดเงินค้างชำระ" />
                                            </td>
                                            <td class="right">
                                                <asp:Button ID="Button16" runat="server" CssClass="btn btn-primary" 
                                                    Text="ยืนยันรายการ" />
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
    <asp:Panel ID="pnlDetailFromQuotation" runat="server" Visible="False">
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
                                    จำนวนนับ
                                </td>
                                <td>
                                    วันที่ส่งสินค้า
                                </td>
                                <td>
                                    สถานะ
                                </td>
                                <td>
                                    จำนวน
                                </td>
                                <td>
                                    จำนวนที่ส่งแล้ว
                                </td>
                                <td>
                                    จำนวนที่ยกเลิก
                                </td>
                                <td>
                                    ราคาต่อหน่วย
                                </td>
                                <td>
                                    ราคารวม
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
                                <td colspan="11" class="right">
                                    <table style="width: 100%;">
                                        <tr>
                                            <td style="width: 90%;" class="right">
                                                &nbsp;&nbsp;
                                            </td>
                                            <td class="1px">
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
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
                                                &nbsp;&nbsp;
                                            </td>
                                            <td class="1px">
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
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
    <asp:Panel ID="pnlDetailCreateNew" runat="server" Visible="False">
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
                                    จำนวนนับ
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
                                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="list-group-item" 
                                        Width="150px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox19" runat="server" CssClass="list-group-item" 
                                        Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="list-group-item" 
                                        Width="100px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox20" runat="server" CssClass="list-group-item" 
                                        Width="100px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox21" runat="server" CssClass="list-group-item" 
                                        Width="100px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox22" runat="server" CssClass="list-group-item" 
                                        Width="100px"></asp:TextBox>
                                </td>
                                <td>
                                    <table>
                                        <tr>
                                            <td>
                                                <button id="Button17" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-plus"></span>
                                                </button>
                                            </td>
                                            <td>
                                                <button id="Button18" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-floppy-disk"></span>
                                                </button>
                                            </td>
                                            <td>
                                                <button id="btnSearch8" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-remove"></span>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <asp:Repeater ID="rptResult0" runat="server">
                                <ItemTemplate>
                                    <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>'>
                                        <td>
                                            <asp:Label ID="lblSeq0" runat="server" 
                                                Text='<%# DataBinder.Eval(Container.DataItem, "_Seq_")%>'></asp:Label>
                                            <asp:Label ID="lblId0" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Id")%>'
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
                                            <asp:ImageButton ID="imbEdit0" runat="server" CommandName="Edit" 
                                                ImageUrl="~/image/button/btnEdit.png" />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>'>
                                        <td>
                                            <asp:Label ID="lblSeq1" runat="server" 
                                                Text='<%# DataBinder.Eval(Container.DataItem, "_Seq_")%>'></asp:Label>
                                            <asp:Label ID="lblId1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Id")%>'
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
                                            <asp:ImageButton ID="imbEdit1" runat="server" CommandName="Edit" 
                                                ImageUrl="~/image/button/btnEdit.png" />
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                            </asp:Repeater>
                            <tr>
                                <td colspan="8" class="right">
                                    <table style="width: 100%;">
                                        <tr>
                                            <td style="width: 90%;" class="right">
                                                &nbsp;&nbsp;
                                            </td>
                                            <td class="1px">
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
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
                                                <asp:TextBox ID="txtId3" runat="server" CssClass="list-group-item" 
                                                    Width="100px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="right">
                                                ส่วนลด
                                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                            </td>
                                            <td class="1px">
                                                :
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtId4" runat="server" CssClass="list-group-item" 
                                                    Width="100px"></asp:TextBox>
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
                                                <asp:TextBox ID="txtId5" runat="server" CssClass="list-group-item" 
                                                    Width="100px"></asp:TextBox>
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
                                                <asp:TextBox ID="TextBox23" runat="server" CssClass="list-group-item" 
                                                    Width="100px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="right">
                                                &nbsp;&nbsp;
                                            </td>
                                            <td class="1px">
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="right" colspan="8">
                                    <asp:Button ID="Button19" runat="server" CssClass="btn btn-primary" 
                                        Text="คำนวนโปรโมชั่น" />
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
                                    เลขที่ใบขาย</td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="list-group-item" 
                                        Width="150px"></asp:TextBox>
                                </td>
                                <td class="right">
                                    ชื่อลูกค้า
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <asp:TextBox ID="TextBox9" runat="server" CssClass="list-group-item" 
                                        Width="200px"></asp:TextBox>
                                </td>
                                <td class="right">
                                    ชื่อลูกค้า (EN)
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="left">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox11" runat="server" CssClass="list-group-item" 
                                                    Width="200px"></asp:TextBox>
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
