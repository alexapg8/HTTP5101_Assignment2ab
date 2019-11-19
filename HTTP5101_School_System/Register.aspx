<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HTTP5101_School_System.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

    <h1>Register for Classes</h1>

    <!-- Registration form -->
    <div class="form"><!-- form wrapper -->
        <asp:Label for="fname" runat="server">First Name:</asp:Label>
        <asp:TextBox runat="server" ID="fname"></asp:TextBox>

        <asp:Label for="lname" runat="server">Last Name:</asp:Label>
        <asp:TextBox runat="server" ID="lname"></asp:TextBox>

        <asp:Label for="studentID" runat="server">Student ID:</asp:Label>
        <asp:TextBox runat="server" ID="studentID"></asp:TextBox>

        <asp:Label for="courselist" runat="server">Please select the course:</asp:Label>
        <asp:DropDownList runat="server" ID="courselist" DataTextField="CLASSNAME" DataValueField="CLASSCODE">
        </asp:DropDownList>

        <asp:Button runat="server" Text="Submit" PostBackUrl="~/ListClasses.aspx" />
    </div> <!-- END FORM WRAPPER -->
</asp:Content>
