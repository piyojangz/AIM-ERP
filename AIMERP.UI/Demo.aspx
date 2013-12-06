<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master.Master"
    CodeBehind="Demo.aspx.vb" Inherits="AIMERP.UI.Demo" %>

<%@ MasterType VirtualPath="~/Master.Master" %>
<%@ Register Src="UserControl/ToolBar.ascx" TagName="ToolBar" TagPrefix="uc1" %>
<%@ Register Src="UserControl/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc2" %>
<%@ Register Src="UserControl/RepeaterNavigateBar.ascx" TagName="RepeaterNavigateBar"
    TagPrefix="uc3" %>
<%@ Register Src="UserControl/PopUpSearch.ascx" TagName="PopUpSearch" TagPrefix="uc4" %>
<%@ Register Src="UserControl/PopUpSearchField.ascx" TagName="PopUpSearchField" TagPrefix="uc5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <uc1:ToolBar ID="ToolBar" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Data Entry
                </div>
                <div class="panel-body">
                    <table style="width: 100%;">
                        <tr>
                            <td class="right">
                                Id
                            </td>
                            <td class="1px">
                                :
                            </td>
                            <td class="left">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtId" runat="server" CssClass="list-group-item"></asp:TextBox>
                                        </td>
                                        <td>
                                            <uc4:PopUpSearch ID="pusField" runat="server" KeyField="Id" KeyHeader="Id" KeyTarget="txtId"
                                                ValueField="Field1" ValueHeader="Field 1" ValueTarget="txtField1" />
                                        </td>
                                        <td>
                                            1. PopUpSearch
                                        <td>
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
                                Field 1
                            </td>
                            <td class="1px">
                                :
                            </td>
                            <td class="left">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtField1" runat="server" CssClass="list-group-item" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <uc5:PopUpSearchField ID="PopUpSearchField1" runat="server" Filter="txtField1" KeyTarget="txtId"
                                                ValueTarget="txtField1" />
                                        </td>
                                        <td>
                                            2. PopupSearchField
                                        <td>
                                    </tr>
                                </table>
                            </td>
                            <td class="right">
                                Field 2
                            </td>
                            <td class="1px">
                                :
                            </td>
                            <td class="left">
                                <asp:TextBox ID="txtField2" runat="server" CssClass="list-group-item" MaxLength="10"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="right">
                                Field 3
                            </td>
                            <td class="1px">
                                :
                            </td>
                            <td class="left">
                                <asp:TextBox ID="txtField3" runat="server" CssClass="list-group-item" MaxLength="10"></asp:TextBox>
                            </td>
                            <td class="right">
                                Field 4
                            </td>
                            <td class="1px">
                                :
                            </td>
                            <td class="left">
                                <asp:TextBox ID="txtField4" runat="server" CssClass="list-group-item" MaxLength="10"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="right" colspan="6">
                                <asp:Label ID="lblStatus" runat="server" Text="New" ForeColor="White"></asp:Label>
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
                        Search Result
                    </div>
                    <div class="panel-body">
                        <table style="width: 100%;">
                            <tr class="tab-result-head">
                                <td>
                                    Seq
                                </td>
                                <td>
                                    Id
                                </td>
                                <td>
                                    Field 1
                                </td>
                                <td>
                                    Field 2
                                </td>
                                <td>
                                    Field 3
                                </td>
                                <td>
                                    Field 4
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
                                            <%# DataBinder.Eval(Container.DataItem, "Id")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field2")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field3")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field4")%>
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
                                            <%# DataBinder.Eval(Container.DataItem, "Id")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field1")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field2")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field3")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "Field4")%>
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/image/button/btnEdit.png" />
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                            </asp:Repeater>
                            <tr>
                                <td colspan="6">
                                    <uc3:RepeaterNavigateBar ID="RepeaterNavigateBar" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="right" colspan="6">
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <uc2:MessageBox ID="MessageBox" runat="server" />
</asp:Content>
