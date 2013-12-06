<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="MessageBox.ascx.vb"
    Inherits="AIMERP.UI.MessageBox" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:UpdatePanel ID="updMessage" runat="server" class="updMessage">
    <ContentTemplate>
        <asp:Panel ID="pnlMessage" runat="server" CssClass="modal-popup" Visible="True" Style="display: none;">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <asp:Panel ID="Panel1" runat="server" CssClass="modal-heading">
                        Message</asp:Panel>
                    <%--<asp:Panel ID="pnlDragMessage" runat="server">
                        Message</asp:Panel>--%>
                </div>
                <div class="panel-body">
                    <div class="list-group">
                        <div class="list-group-item">
                            <div class="left">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Image ID="imgMessage" runat="server" CssClass="modal-image" />
                                        </td>
                                        <td>
                                            <div class="modal-message">
                                                <asp:Label ID="lblMessage" runat="server"></asp:Label></div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="right">
                        <asp:Button ID="btnCloseMessage" runat="server" Text="Close" CssClass="btn btn-primary" />
                        <asp:Button ID="btnDecline" runat="server" Text="Decline" CssClass="btn btn-primary" />
                        <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CssClass="btn btn-primary" />
                    </div>
                </div>
            </div>
        </asp:Panel>
        <asp:LinkButton ID="lbMessage" runat="server" Style="display: none"></asp:LinkButton>
        <asp:ModalPopupExtender ID="mpeMessage" runat="server" BackgroundCssClass="modal-bg"
            Drag="True" PopupControlID="pnlMessage" PopupDragHandleControlID="pnlDragMessage"
            TargetControlID="lbMessage">
        </asp:ModalPopupExtender>
    </ContentTemplate>
</asp:UpdatePanel>
