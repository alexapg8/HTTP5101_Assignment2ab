<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="DropClass.aspx.cs" Inherits="HTTP5101_School_System.DropClass" %>
<asp:Content ID="drop_class" ContentPlaceHolderID="body" runat="server">
    <div class="LogIn_table">
       <h2>Please confirm</h2>
       <div> <!-- confirm or cancel button -->
           <p>Are you sure you would like to drop this course?</p>
           <asp:Button ID="dropconfirm_btn" CssClass="button" runat="server" text="DROP COURSE" PostBackUrl="~/ListClasses.aspx" />
           <asp:Button ID="cancel_btn" CssClass="button" runat="server" text="CANCEL" PostBackUrl="~/ListClasses.aspx"/> 
       </div>
    </div> <!-- end confirm page wrapper -->
</asp:Content>
