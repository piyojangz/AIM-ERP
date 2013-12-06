<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="RepeaterNavigateBar.ascx.vb"
    Inherits="AIMERP.UI.RepeaterNavigateBar" %>
<style type="text/css">
    .style1
    {
        width: 50px;
    }
</style>
<table style="width: 100%;">
    <tr>
        <td align="left" valign="middle">
            Total Record :
            <asp:Label ID="lblTotalRecord" runat="server">0</asp:Label>
        </td>
        <td>
            <asp:HiddenField ID="hdfCurrentSeq" runat="server" Value="1" />
            <asp:HiddenField ID="hdfCurrentCol" runat="server" />
        </td>
        <td align="right" valign="middle">
            <asp:ImageButton ID="imbFirst" runat="server" ImageUrl="~/image/button/First.png"
                Style="margin-bottom: 0px" />
            <asp:ImageButton ID="imbBack" runat="server" ImageUrl="~/image/button/Previous.png" />
            Page
            <asp:Label ID="lblCurrentPage" runat="server">0</asp:Label>
            /<asp:Label ID="lblTotalPage" runat="server">0</asp:Label>
            <asp:ImageButton ID="imbNext" runat="server" ImageUrl="~/image/button/Next.png" />
            <asp:ImageButton ID="imbLast" runat="server" ImageUrl="~/image/button/Last.png" />
            | Goto Page :
        </td>
        <td align="right" valign="middle" class="style1">
            <asp:DropDownList ID="ddlPage" runat="server" AutoPostBack="True" 
                CssClass="list-group-item" Width="50px">
            </asp:DropDownList>
        </td>
    </tr>
</table>
