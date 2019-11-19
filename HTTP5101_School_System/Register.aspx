<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HTTP5101_School_System.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

    

    <!-- Registration form -->
    <div class="form"><!-- form wrapper -->
        <h2 class="details_title">Register for Classes</h2>
        <asp:Label for="fname" runat="server" class="details_name">First Name:</asp:Label>
        <asp:TextBox runat="server" ID="fname" class="register_text"></asp:TextBox><br />

        <asp:Label for="lname" runat="server" class="details_name">Last Name:</asp:Label>
        <asp:TextBox runat="server" ID="lname" class="register_text"></asp:TextBox><br />

        <asp:Label for="studentID" runat="server" class="details_name">Student ID:</asp:Label>
        <asp:TextBox runat="server" ID="studentID" class="register_text"></asp:TextBox><br />

        <asp:Label for="courselist" runat="server" class="details_name">Please select the course:</asp:Label>
        <asp:DropDownList runat="server" ID="courselist" DataTextField="CLASSNAME" DataValueField="CLASSCODE" class="register_text">
        </asp:DropDownList><br />

    </div> <!-- END FORM WRAPPER -->
    <asp:Button ID="registrationsubmit_btn" CssClass="button" runat="server" Text="SUBMIT" PostBackUrl="~/ListClasses.aspx" />
    <asp:Button ID="registrationdrop_btn" CssClass="button" runat="server" Text="DROP" PostBackUrl="~/DropClass.aspx" />
</asp:Content>
