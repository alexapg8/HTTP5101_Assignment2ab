<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ShowStudent.aspx.cs" Inherits="HTTP5101_School_System.ShowStudent" %>
<asp:Content ID="student_view" ContentPlaceHolderID="body" runat="server">

    <div class="show_table" id="student" runat="server">
        <h2 class="details_title">Details for <span id="student_title_fname" runat="server"></span></h2>
        <h3 class="details_name">First Name: <span id="student_fname" class="details_results" runat="server"></span></h3><br />
        <h3 class="details_name">Last Name: <span id="student_lname" class="details_results" runat="server"></span></h3><br />
        <h3 class="details_name">Student Number: <span id="student_number" class="details_results" runat="server"></span></h3><br />
        <h3 class="details_name">Enrolment Date: <span id="enrolment_date" class="details_results" runat="server"></span></h3><br />
    </div>
    <div class="edit_button"><asp:Button CssClass="button" runat="server" text="EDIT"/></div>
</asp:Content>
