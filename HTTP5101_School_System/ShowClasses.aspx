<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ShowClasses.aspx.cs" Inherits="HTTP5101_School_System.ShowClasses" %>
<asp:Content ID="student_view" ContentPlaceHolderID="body" runat="server">
    <div id="class_detail" runat="server" class="profilebox">
        <h2>Details for <span id="class_name" runat="server"></span></h2>
        Course Code: <span id="class_code" runat="server"></span><br />
        Start Date: <span id="start_date" runat="server"></span><br />
        End Date: <span id="end_date" runat="server"></span><br />
    </div> <!-- end profile box -->
</asp:Content>
