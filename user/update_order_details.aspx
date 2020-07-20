<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="update_order_details.aspx.cs" Inherits="user_update_order_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <div><b>Shipping details</b></div>
    <table>
        <tr>
            <td>
                first name
            </td>
            <td>
                <asp:TextBox ID="t1" runat="server" Width="226px"></asp:TextBox>
            </td>
        </tr>

           <tr>
            <td>
                last name
            </td>
            <td>
                <asp:TextBox ID="t2" runat="server" Width="227px"></asp:TextBox>
            </td>
        </tr>
          <tr>
            <td>
                address
            </td>
            <td>
                <asp:TextBox ID="t3" runat="server" Height="105px" TextMode="MultiLine" Width="227px"></asp:TextBox>
            </td>
        </tr>
          <tr>
            <td>
               city
            </td>
            <td>
                <asp:TextBox ID="t4" runat="server" Width="224px"></asp:TextBox>
            </td>
        </tr>

          <tr>
            <td>
               state
            </td>
            <td>
                <asp:TextBox ID="t5" runat="server" Width="226px"></asp:TextBox>
            </td>
        </tr>

          <tr>
            <td>
                mobile
            </td>
            <td>
                <asp:TextBox ID="t6" runat="server" Width="226px"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="b1" runat="server"  Text="update and continue" OnClick="b1_Click"/>
            </td> 
        </tr>
    </table>
</asp:Content>

