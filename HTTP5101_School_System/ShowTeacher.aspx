<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ShowTeacher.aspx.cs" Inherits="HTTP5101_School_System.ShowTeacher" %>
<asp:Content ID="teacher_view" ContentPlaceHolderID="body" runat="server">
    <div class="picture_col">
        <img src="Content/images/profilepicture.png" alt="Profile Picture" class="profile_picture" />
    </div>
    <div class="show_table" id="teacher" runat="server">
        <h2 class="details_title">Details for <span id="teacher_title_fname" runat="server"></span></h2>
        <h3 class="details_name">First Name: <span id="teacher_fname" class="details_results" runat="server"></span></h3><br />
        <h3 class="details_name">Last Name: <span id="teacher_lname" class="details_results" runat="server"></span></h3><br />
        <h3 class="details_name">Student Number: <span id="teacher_number" class="details_results" runat="server"></span></h3><br />
        <h3 class="details_name">Hire Date: <span id="hire_date" class="details_results" runat="server"></span></h3><br />
        <h3 class="details_name">Salary: <span id="Salary" class="details_results" runat="server"></span></h3><br />

    </div>
    <asp:Button ID="teacheredit_btn" CssClass="button" runat="server" PostBackUrl="~/TeacherEdit.aspx" text="EDIT"/>
</asp:Content>