<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master.Master"
    CodeBehind="AIMTRNRECEIPT.aspx.vb" Inherits="AIMERP.UI.AIMTRNRECEIPT" %>

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
        .style9
        {
            width: 150px;
        }
        .style14
        {
            width: 100px;
        }
        .style19
        {
            width: 250px;
        }
        .style20
        {
            width: 200px;
        }
        .style21
        {
            width: 60px;
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
            <asp:LinkButton ID="lbtDetail" runat="server">ข้อมูลใบวางบิล</asp:LinkButton></li>
        <li id="liSearch" runat="server">
            <asp:LinkButton ID="lbtSearch" runat="server">ค้นหาข้อมูลเอกสาร</asp:LinkButton></li>
    </ul>
    <asp:Panel ID="pnlHead" runat="server" Visible="true">
        <div class="row">
            <div class="col-md-12">
                <div class="">
                    <div class="panel-body">
                        <table style="width: 100%;">
                            <tr>
                                <td class="leftCol">
                                    เลขที่รับชำระ
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="rightCol">
                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="list-group-item" Width="150px"></asp:TextBox>
                                </td>
                                <td class="leftCol">
                                    วันที่ชำระ</td>
                                <td class="1px">
                                    :</td>
                                <td class="rightCol">
                                    <asp:TextBox ID="txtFromDue_Date0" runat="server" 
                                        CssClass="list-group-item carlendar" Width="100px"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtFromDue_Date0_CalendarExtender" runat="server" 
                                        Enabled="True" Format="dd/MM/yyyy" TargetControlID="txtFromDue_Date0">
                                    </asp:CalendarExtender>
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">
                                    ลูกค้า</td>
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
                                                <button ID="Button1" runat="server" class="btn btn-default" type="button">
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
                                <td class="leftCol">
                                    สถานะ </td>
                                <td class="1px">
                                    : </td>
                                <td class="rightCol">
                                    <asp:TextBox ID="txtPromotion_Status" runat="server" CssClass="list-group-item" 
                                        Enabled="False" Width="150px"></asp:TextBox>
                                    <asp:HiddenField ID="hdfPromotion_Status" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">
                                    สนง.ใหญ่/สาขา
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="rightCol">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtCustomer_Site_Name" runat="server" 
                                                    CssClass="list-group-item" Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <uc6:PopUpSearchSite ID="PopUpSearchSite1" runat="server" Enabled="True" 
                                                    Filter="txtCustomer_Id" KeyTarget="hdfCustomer_Site_Id" 
                                                    ValueTarget="txtCustomer_Site_Name" />
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
                                <td class="rightCol">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtCurrency_Name" runat="server" CssClass="list-group-item" 
                                                    Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <uc5:PopUpSearchCurrency ID="PopUpSearchCurrency1" runat="server" 
                                                    Enabled="True" Filter="txtCurrency_Name" KeyTarget="hdfCurrency_Code" 
                                                    ValueTarget="txtCurrency_Name" />
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
                                    ยอดรวมที่รับชำระ</td>
                                <td class="1px">
                                    : </td>
                                <td class="rightCol">
                                    <asp:TextBox ID="TextBox30" runat="server" CssClass="list-group-item" 
                                        Width="150px"></asp:TextBox>
                                </td>
                                <td class="leftCol">
                                    รับชำระเป็น</td>
                                <td class="1px">
                                    : </td>
                                <td class="rightCol">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="list-group-item" 
                                                    Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button ID="Button2" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">
                                    ธนาคาร</td>
                                <td class="1px">
                                    :</td>
                                <td class="rightCol">
                                    <asp:TextBox ID="TextBox31" runat="server" CssClass="list-group-item" 
                                        Width="150px"></asp:TextBox>
                                </td>
                                <td class="leftCol">
                                    เลขที่้เช็ค</td>
                                <td class="1px">
                                    :</td>
                                <td class="rightCol">
                                    <asp:TextBox ID="TextBox32" runat="server" CssClass="list-group-item" 
                                        Width="150px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">
                                    เช็คลงวันที่</td>
                                <td class="1px">
                                    :</td>
                                <td class="rightCol">
                                    <asp:TextBox ID="txtCheque_Date" runat="server" 
                                        CssClass="list-group-item carlendar" Width="100px"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtCheque_Date_CalendarExtender" runat="server" 
                                        Enabled="True" Format="dd/MM/yyyy" TargetControlID="txtCheque_Date">
                                    </asp:CalendarExtender>
                                </td>
                                <td class="leftCol">
                                    ค่าธรรมเนียม</td>
                                <td class="1px">
                                    &nbsp;</td>
                                <td class="rightCol">
                                    <asp:TextBox ID="TextBox33" runat="server" CssClass="list-group-item" 
                                        Width="150px"></asp:TextBox>
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
                                        Text="พิมพ์ใบเสร็จรับเงิน" />
                                     <asp:Button ID="Button15" runat="server" CssClass="btn btn-primary" 
                                        Text="ยกเลิก" />
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
                                <td class="style21">
                                    ลำดับที่
                                </td>
                                <td class="style9">
                                    เลขที่ใบวางบิล</td>
                                <td class="style14">
                                    วันที่วางบิล</td>
                                <td class="style9">
                                    ยอดเงินรวม</td>
                                <td class="style9">
                                    ยอดที่รับชำระ</td>
                                <td></td>
                            </tr>
                            <tr class="tab-result-head">
                                <td class="style21">
                                
                                </td>
                                <td class="style9">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox5" runat="server" CssClass="list-group-item" 
                                                    Width="100%"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button ID="Button7" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>
                                  </td>
                                <td class="style14">
                                    <asp:TextBox ID="txtBilling_Date" runat="server" 
                                        CssClass="list-group-item carlendar" Width="100px" Enabled="False"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtBilling_Date_CalendarExtender1" runat="server" 
                                        Enabled="True" Format="dd/MM/yyyy" TargetControlID="txtBilling_Date">
                                    </asp:CalendarExtender>
                                 </td>
                                <td class="style9">
                                    <asp:TextBox ID="txtItem_Name1" runat="server" CssClass="list-group-item" 
                                        Width="100%" Enabled="False"></asp:TextBox>
                                </td>
                                <td class="style9">
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="list-group-item" 
                                        Width="100%" Enabled="False"></asp:TextBox>
                               </td>
                               <td>
                                    <table>
                                        <tr>
                                            <td>
                                                <button id="Button3" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-plus"></span>
                                                </button>
                                            </td>
                                            <td>
                                                <button id="Button4" runat="server" class="btn btn-default" type="button">
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
                                            <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/image/button/btnEdit.png" />
                                            <button ID="Button7" runat="server" class="btn btn-default" type="button">
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
                                            <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/image/button/btnEdit.png" />
                                            <button ID="Button7" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                            </asp:Repeater>
                            <tr>
                                <td class="style11" colspan="6">
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="pnlSubDetail" runat="server" Visible="False">
        <div class="row">
            <div class="col-md-12">
                <div class="">
                    <div class="panel-body">
                        <table style="width: 100%;">
                            <tr class="tab-result-head">
                                <td class="style10">
                                    ลำดับที่
                                </td>
                                <td class="style9">
                                    เลขที่ Invoice</td>
                                <td class="style9">
                                    ยอดเงิน</td>
                                <td class="style9">
                                    ยอดที่รับชำระ</td>
                                <td></td>
                            </tr>
                            <asp:Repeater ID="Repeater1" runat="server">
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
                                            <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/image/button/btnEdit.png" />
                                            <button ID="Button7" runat="server" class="btn btn-default" type="button">
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
                                            <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/image/button/btnEdit.png" />
                                            <button ID="Button7" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                            </asp:Repeater>
                            <tr>
                                <td class="style10" colspan="5">
                                    &nbsp;&nbsp; &nbsp; &nbsp;
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
                                <td class="leftCol">
                                    เลขที่รับชำระ
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="rightCol">
                                    <asp:TextBox ID="TextBox22" runat="server" CssClass="list-group-item" Width="150px"></asp:TextBox>
                                </td>
                                <td class="leftCol">
                                    สถานะ </td>
                                <td class="1px">
                                    : </td>
                                <td class="rightCol">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox3" runat="server" CssClass="list-group-item" 
                                                    Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button ID="Button5" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="leftCol">
                                    ลูกค้า
                                </td>
                                <td class="1px">
                                    :
                                </td>
                                <td class="rightCol">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox23" runat="server" CssClass="list-group-item" 
                                                    Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <button ID="Button18" runat="server" class="btn btn-default" type="button">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox24" runat="server" CssClass="list-group-item" 
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
                                    <td class="style10">
                                        ลำดับที่
                                    </td>
                                    <td class="style20">
                                        เลขที่</td>
                                    <td class="style19">
                                        ลูกค้า</td>
                                    <td>
                                        รายละเอียด
                                    </td>
                                    <td class="style9">
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
                                    <td colspan="5">
                                        <uc2:RepeaterNavigateBar ID="RepeaterNavigateBar" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="right" colspan="5">
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