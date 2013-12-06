<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master.Master"
    CodeBehind="AIMTRNBILLING.aspx.vb" Inherits="AIMERP.UI.AIMTRNBILLING" %>

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
        .style13
        {
            width: 200px;
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
                                    ลูกค้า</td>
                                <td class="1px">
                                    : </td>
                                <td class="rightCol">
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
                                <td class="right" colspan="7">
                                    <asp:Button ID="Button12" runat="server" CssClass="btn btn-primary" 
                                        Text="ยืนยันการวางบิล" />
                                    <asp:Button ID="Button13" runat="server" CssClass="btn btn-primary" 
                                        Text="พิมพ์รายงานการวางบิล" />
                                    <asp:Button ID="Button14" runat="server" CssClass="btn btn-primary" 
                                        Text="พิมพ์วางบิล" />
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
                                    ชื่อลูกค้า</td>
                                <td class="style13">
                                    สนง.ใหญ่/สาขา</td>
                                <td class="style13">
                                    วันที่ใบกำกับภาษี/ใบส่งของ</td>
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
                                    </tr>
                                </AlternatingItemTemplate>
                            </asp:Repeater>
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