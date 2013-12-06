<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master.Master"
    CodeBehind="Template.aspx.vb" Inherits="AIMERP.Template" %>

<%@ MasterType VirtualPath="~/Master.Master" %>
<%@ Register Src="~/UserControl/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                                Text1
                            </td>
                            <td class="1px">
                                :
                            </td>
                            <td class="left">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="list-group-item" Width="75px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="list-group-item" Width="150px"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td class="right">
                                Text2
                            </td>
                            <td class="1px">
                                :
                            </td>
                            <td class="left">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="list-group-item"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="right">
                                Text3
                            </td>
                            <td class="1px">
                                :
                            </td>
                            <td class="left">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="list-group-item">
                                </asp:DropDownList>
                            </td>
                            <td class="right">
                                Text4
                            </td>
                            <td class="1px">
                                :
                            </td>
                            <td class="left">
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="list-group-item">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="right" colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td class="right" colspan="6">
                                <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn btn-primary" />
                                <asp:Button ID="Button2" runat="server" Text="Button" CssClass="btn btn-primary" />
                                <asp:Button ID="Button3" runat="server" Text="Button" CssClass="btn btn-primary" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Data List
                </div>
                <div class="panel-body">
                    <table style="width: 100%;">
                        <tr class="col-head">
                            <td class="right">
                                Head 1
                            </td>
                            <td class="right">
                                Head 2
                            </td>
                            <td class="right">
                                Head 3
                            </td>
                            <td class="right">
                                Head 4
                            </td>
                            <td class="right">
                                Head 5
                            </td>
                            <td class="right">
                                Head 6
                            </td>
                            <td class="right">
                                Head 7
                            </td>
                        </tr>
                        <tr>
                            <td class="right">
                                Col 1
                            </td>
                            <td class="right">
                                Col 2
                            </td>
                            <td class="right">
                                Col 3
                            </td>
                            <td class="right">
                                Col 4
                            </td>
                            <td class="right">
                                Col 5
                            </td>
                            <td class="right">
                                Col 6
                            </td>
                            <td class="right">
                                Col 7
                            </td>
                        </tr>
                        <tr>
                            <td class="right">
                                Col 1
                            </td>
                            <td class="right">
                                Col 2
                            </td>
                            <td class="right">
                                Col 3
                            </td>
                            <td class="right">
                                Col 4
                            </td>
                            <td class="right">
                                Col 5
                            </td>
                            <td class="right">
                                Col 6
                            </td>
                            <td class="right">
                                Col 7
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <asp:Button ID="Button10" runat="server" Text="Show Template 2" CssClass="btn btn-primary" />
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Data Entry
                </div>
                <div class="panel-body">
                    <table style="width: 100%;">
                        <tr>
                            <td class="right">
                                Text1
                            </td>
                            <td class="1px">
                                :
                            </td>
                            <td class="left">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="list-group-item" Width="75px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox5" runat="server" CssClass="list-group-item" Width="125px"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="right">
                                Text3
                            </td>
                            <td class="1px">
                                :
                            </td>
                            <td class="left">
                                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="list-group-item">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="right" colspan="3">
                            </td>
                        </tr>
                        <tr>
                            <td class="right" colspan="3">
                                <asp:Button ID="Button4" runat="server" CssClass="btn btn-primary" Text="Button" />
                                <asp:Button ID="Button5" runat="server" CssClass="btn btn-primary" Text="Button" />
                                <asp:Button ID="Button6" runat="server" CssClass="btn btn-primary" Text="Button" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Data Entry
                </div>
                <div class="panel-body">
                    <table style="width: 100%;">
                        <tr>
                            <td class="right">
                                Text2
                            </td>
                            <td class="1px">
                                :
                            </td>
                            <td class="left">
                                <asp:TextBox ID="TextBox9" runat="server" CssClass="list-group-item"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="right">
                                Text4
                            </td>
                            <td class="1px">
                                :
                            </td>
                            <td class="left">
                                <asp:DropDownList ID="DropDownList6" runat="server" CssClass="list-group-item">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="right" colspan="3">
                            </td>
                        </tr>
                        <tr>
                            <td class="right" colspan="3">
                                <asp:Button ID="Button7" runat="server" CssClass="btn btn-primary" Text="Button" />
                                <asp:Button ID="Button8" runat="server" CssClass="btn btn-primary" Text="Button" />
                                <asp:Button ID="Button9" runat="server" CssClass="btn btn-primary" Text="Button" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Data List
                </div>
                <div class="panel-body">
                    <table style="width: 100%;">
                        <tr>
                            <td class="right">
                                Head 1
                            </td>
                            <td class="right">
                                Head 2
                            </td>
                            <td class="right">
                                Head 3
                            </td>
                            <td class="right">
                                Head 4
                            </td>
                            <td class="right">
                                Head 5
                            </td>
                            <td class="right">
                                Head 6
                            </td>
                            <td class="right">
                                Head 7
                            </td>
                        </tr>
                        <tr>
                            <td class="right">
                                Col 1
                            </td>
                            <td class="right">
                                Col 2
                            </td>
                            <td class="right">
                                Col 3
                            </td>
                            <td class="right">
                                Col 4
                            </td>
                            <td class="right">
                                Col 5
                            </td>
                            <td class="right">
                                Col 6
                            </td>
                            <td class="right">
                                Col 7
                            </td>
                        </tr>
                        <tr>
                            <td class="right">
                                Col 1
                            </td>
                            <td class="right">
                                Col 2
                            </td>
                            <td class="right">
                                Col 3
                            </td>
                            <td class="right">
                                Col 4
                            </td>
                            <td class="right">
                                Col 5
                            </td>
                            <td class="right">
                                Col 6
                            </td>
                            <td class="right">
                                Col 7
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <asp:Button ID="Button11" runat="server" Text="Show Template 1" CssClass="btn btn-primary" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <uc1:MessageBox ID="MessageBox1" runat="server" />
</asp:Content>
