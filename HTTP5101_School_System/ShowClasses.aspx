<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ShowClasses.aspx.cs" Inherits="HTTP5101_School_System.ShowClasses" %>
<asp:Content ID="class_view" ContentPlaceHolderID="body" runat="server">

    <div id="class_detail" runat="server" class="show_table">
        <h2 class="details_title">Details for <span id="class_name" runat="server"></span></h2>
        <h3 class="details_name">Course Code: <span id="class_code" class="details_results" runat="server"></span></h3><br />
        <h3 class="details_name">Start Date: <span id="start_date" class="details_results" runat="server"></span></h3><br />
        <h3 class="details_name">End Date: <span id="end_date" class="details_results" runat="server"></span></h3><br />
    </div> <!-- end profile box -->
    <asp:Button CssClass="button" runat="server" PostBackUrl="~/Register.aspx" text="REGISTER"/>
    
</asp:Content>
