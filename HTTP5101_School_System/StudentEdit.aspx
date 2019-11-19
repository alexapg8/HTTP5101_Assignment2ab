<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="StudentEdit.aspx.cs" Inherits="HTTP5101_School_System.StudentEdit" %>
<asp:Content ID="student_edit" ContentPlaceHolderID="body" runat="server">
    <!-- student profile picture -->
    <div class="picture_col">
        <img src="Content/images/profilepicture.png" alt="Profile Picture" class="profile_picture" />
    </div>
    <!-- edit student table -->
    <div class="edit_table" id="student" runat="server">
        <h2 class="details_title">Details for <span id="student_title_fname" runat="server"></span></h2>
        <asp:label for="student_fname_edit" class="details_name" runat="server">First Name: </asp:label>
        <asp:TextBox class="studentedit_text" runat="server"></asp:TextBox><br />
        <asp:label for="student_lname_edit" class="details_name" runat="server">Last Name: </asp:label>
        <asp:TextBox class="studentedit_text" runat="server"></asp:TextBox><br />
        <asp:label for="student_pnum_edit" class="details_name" runat="server">Phone Number: </asp:label>
        <asp:TextBox class="studentedit_text" runat="server"></asp:TextBox><br />
        <asp:label for="student_address_edit" class="details_name" runat="server">Address: </asp:label>
        <asp:TextBox class="studentedit_text" runat="server"></asp:TextBox><br />
    </div>
    <!-- end of edit student table -->
    <!-- submit button -->
       <asp:Button ID="studentsubmit_btn" CssClass="button" runat="server" text="SUBMIT" PostBackUrl="~/ListStudents.aspx" />

</asp:Content>
