<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="user_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <table>
        <tr>
            <td> 
                FirstName
            </td>
            <td> 
                <asp:textbox id="TextBox1" runat="server"></asp:textbox>
                
            </td>
        </tr>

         <tr>
            <td> 
                LastName
            </td>
            <td> 
                <asp:textbox id="TextBox2" runat="server"></asp:textbox>
                
            </td>
        </tr>

         <tr>
            <td> 
             email
            </td>
            <td> 
                <asp:textbox id="TextBox3" runat="server"></asp:textbox>
                
            </td>
        </tr>

         <tr>
            <td> 
               password
            </td>
            <td> 
                <asp:textbox id="TextBox4" runat="server" TextMode="Password"></asp:textbox>
                
            </td>
        </tr>

         <tr>
            <td> 
                address
            </td>
            <td> 
                <asp:textbox id="TextBox5" runat="server" Height="60px" TextMode="MultiLine"></asp:textbox>
                
            </td>
        </tr>

         <tr>
            <td> 
                
                city
            </td>
            <td> 
                <asp:textbox id="TextBox6" runat="server"></asp:textbox>
                
            </td>
        </tr>

         <tr>
            <td> 
               state
            </td>
            <td> 
                <asp:textbox id="TextBox7" runat="server"></asp:textbox>
                
            </td>
        </tr>

         <tr>
            <td> 
                picode
            </td>
            <td> 
                <asp:textbox id="TextBox8" runat="server"></asp:textbox>
                
            </td>
        </tr>

         <tr>
            <td> 
                mobile no
            </td>
            <td> 
                <asp:textbox id="TextBox9" runat="server"></asp:textbox>
                
            </td>
        </tr>

         <tr>
           
            <td colspan="2" align="center"> 

                <asp:button id="Button1" runat="server" text="Register" OnClick="Button1_Click" />
                
            </td>
        </tr>

        <tr>

            <td colspan="2" align="center">
                <asp:label id="label1" runat="server" text=""></asp:label>

            </td>
        </tr>
    </table>
    
</asp:Content>

