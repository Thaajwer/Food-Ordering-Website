<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="user_login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    
     <style>
        #thaj
    {
            width:60px;
            height:100px;
            text-decoration-color:#0094ff;

            text-align:center;
        }
        .bg{
            background-color:antiquewhite;
        }
        .cd{
            text-align:center;
        }
        </style>
    
        <div class="bg">
         <div class="cd">
&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
   <table class="table" id="thaj" align="center">
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<tr>
           <td><b>Enter email ID</b></td>
            <td><asp:TextBox ID="TextBox1" runat="server" require=""></asp:TextBox></td>
        </tr>

         &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <tr>
           <td><b>Enter password</b></td>
            <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" required=""></asp:TextBox></td>
        </tr>
        <br>
       <br>
        <tr>
           <td colspan="2" align="center"> <asp:Button ID="Button1" runat="server" Text="login" OnClick="Button1_Click" Width="200px" />  </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
             </div>
       <br>
            <br> 
    </div>    
</asp:Content>


