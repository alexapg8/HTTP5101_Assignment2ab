<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ListClasses.aspx.cs" Inherits="HTTP5101_School_System.ListClasses" %>
<asp:Content ID="classes_list" ContentPlaceHolderID="body" runat="server">
    <h1>Class List</h1>

    <!-- Class list navigation form -->
    <div id="class_nav">
        <asp:Label runat="server" for="class_search"></asp:Label>
        <asp:TextBox runat="server" ID="class_search"></asp:TextBox> 
        <asp:Button runat="server" Text="Search" />
    </div> 
  
    <div id="sql_debugger" runat="server"></div> <!-- debugger/output for SQL query -->

    <!-- Class results list -->
    <div id="class_results" class="_table" runat="server">
        <div class="listitem">
            <div class="col4">CLASS NAME</div>
            <div class="col4">COURSE CODE</div>
            <div class="col4">START DATE</div>
            <div class="col4last">END DATE</div>
        </div> <!-- end row of items -->
    </div> <!-- end results table -->

</asp:Content>
