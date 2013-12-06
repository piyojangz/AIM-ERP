<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="PopUpSearch.ascx.vb"
    Inherits="AIMERP.UI.PopUpSearch" %>
<style type="text/css">
    .hide { display:none; }
</style>
<div class="btn-group">
    <button id="btnSearch" runat="server" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
        type="button">
        <span class="glyphicon glyphicon-search"></span>
    </button>
    <ul class="dropdown-menu" role="menu" style="display:none;">
        <li>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div style="height: 150px; overflow-y: scroll;">
                        <table style="width: 100%;">
                            <tr class="tab-result-head">
                                <td>
                                    <asp:Label ID="lblKeyHeader" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblValueHeader" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <asp:Repeater ID="rptResult" runat="server">
                                <ItemTemplate>
                                    <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>' style="cursor: pointer;"
                                        onclick="return SetValue('<%# DataBinder.Eval(Container.DataItem, KeyField)%>','<%# DataBinder.Eval(Container.DataItem, ValueField)%>')">
                                        <td>
                                            <asp:Label ID="lblKey" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, KeyField)%>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblValue" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, ValueField)%>'></asp:Label>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <tr class='<%# DataBinder.Eval(Container.DataItem, "_Class_")%>' style="cursor: pointer;"
                                        onclick="return SetValue('<%# DataBinder.Eval(Container.DataItem, KeyField)%>','<%# DataBinder.Eval(Container.DataItem, ValueField)%>')">
                                        <td>
                                            <asp:Label ID="lblKey" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, KeyField)%>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblValue" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, ValueField)%>'></asp:Label>
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
                                    <asp:Label ID="lblKeyField" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="lblValueField" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="lblKeyTarget" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="lblValueTarget" runat="server" Visible="False"></asp:Label>
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
