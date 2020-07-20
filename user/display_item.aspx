<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="display_item.aspx.cs" Inherits="user_display_item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
  
    <asp:Repeater ID="d1" runat="server" OnItemCommand="d1_ItemCommand">
        <HeaderTemplate>
            <div class="products">
        <div class="cl">&nbsp;</div>
                <ul>
        </HeaderTemplate>
        <ItemTemplate>
                 <li class="product">
            <a href="product_desc.aspx?id=<%#Eval("id") %>"><img src="../<%#Eval("product_image") %>" alt="" /></a> 
           <div class="product-info"> 
              <h3><%#Eval("product_name") %></h3>
              <div class="product-desc">
                <h4>available qty:<%#Eval("product_qty") %></h4>
                <p><%#Eval("product_desc") %></p>
                <strong class="price">$<%#Eval("product_price") %></strong></div>
           
          </li>





        </ItemTemplate>
         <FooterTemplate>
            <div class="cl">&nbsp;</div>
      </div> </ul>
         </FooterTemplate>
    </asp:Repeater>
</asp:Content>

