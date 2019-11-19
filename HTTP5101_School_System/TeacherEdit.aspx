<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="TeacherEdit.aspx.cs" Inherits="HTTP5101_School_System.TeacherEdit" %>
<asp:Content ID="teacher_edit" ContentPlaceHolderID="body" runat="server">
      <div class="picture_col">
        <img src="Content/images/profilepicture.png" alt="Profile Picture" class="profile_picture" />
    </div>
    <div class="edit_table" id="teacher" runat="server">
        <h2 class="details_title">Details for <span id="teacher_fname_edit" runat="server"></span></h2>
        <asp:label for="teacher_fname_edit" class="details_name" runat="server">First Name: </asp:label>
        <asp:TextBox class="teacheredit_text" runat="server"></asp:TextBox><br />
        <asp:label for="teacher_lname_edit" class="details_name" runat="server">Last Name: </asp:label>
        <asp:TextBox class="teacheredit_text" runat="server"></asp:TextBox><br />
        <asp:label for="teacher_pnum_edit" class="details_name" runat="server">Phone Number: </asp:label>
        <asp:TextBox class="teacheredit_text" runat="server"></asp:TextBox><br />
        <asp:label for="teacher_address_edit" class="details_name" runat="server">Address: </asp:label>
        <asp:TextBox class="teacheredit_text" runat="server"></asp:TextBox><br />
    </div>

       <asp:Button ID="teachersubmit_btn" CssClass="button" runat="server" text="SUBMIT" PostBackUrl="~/ListTeachers.aspx" />

</asp:Content>
