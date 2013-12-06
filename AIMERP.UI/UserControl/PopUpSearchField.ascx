<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="PopUpSearchField.ascx.vb"
    Inherits="AIMERP.UI.PopUpSearchField" %>
<style type="text/css">
    .hide { display:none; }
</style>
<div class="btn-group">
    <button id="btnSearch" runat="server" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
        type="button">
        <span class="glyphicon glyphicon-search"></span>
    </button>
    <ul class="dropdown-menu hide" role="menu">
        <li>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div style="height: 150px; overflow-y: scroll;">
                        <table style="width: 100%;">
                            <tr class="tab-result-head">
                                <td>
                                    Id
                                </td>
                                <td>
                                    Field 1
                                </td>
                            </tr>
                            <asp:Repeater ID="rptResult" runat="server">
                                <ItemTemplate>
                                    <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>' onclick="return SetValue<%# UniqueSession %>('<%# DataBinder.Eval(Container.DataItem, "Id")%>','<%# DataBinder.Eval(Container.DataItem, "Field1")%>')"
                                        style="cursor: pointer;">
                                        <td>
                                            <asp:Label ID="lblKey" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Id")%>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblValue" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Field1")%>'></asp:Label>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>' onclick="return SetValue<%# UniqueSession %>('<%# DataBinder.Eval(Container.DataItem, "Id")%>','<%# DataBinder.Eval(Container.DataItem, "Field1")%>')"
                                        style="cursor: pointer;">
                                        <td>
                                            <asp:Label ID="lblKey0" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Id")%>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblValue0" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,  "Field1")%>'></asp:Label>
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                            </asp:Repeater>
                            <tr>
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr>
                                <td class="right" colspan="2">
                                    <asp:Label ID="lblKeyTarget" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="lblValueTarget" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="lblFilter" runat="server" Visible="False"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnSearch" />
                </Triggers>
            </asp:UpdatePanel>
        </li>
    </ul>
</div>
