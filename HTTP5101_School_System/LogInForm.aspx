﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="LogInForm.aspx.cs" Inherits="HTTP5101_School_System.LogInForm" %>
<asp:Content ID="login_form" ContentPlaceHolderID="body" runat="server">
    <div class="LogIn_table">
       <h2>Log In</h2>
       <div>
       <asp:label for="log_in" class="login_titles" runat="server">Username:</asp:label>
       <asp:TextBox class="login_text" runat="server"></asp:TextBox>
       </div>
       <div>
       <asp:label for="log_in" class="login_titles" runat="server">Password:</asp:label>
       <asp:TextBox class="login_text" runat="server"></asp:TextBox>
       </div>
       <asp:Button CssClass="button" runat="server" PostBackUrl="~/ListStudents.aspx" text="SUBMIT" />
    </div>
</asp:Content>
