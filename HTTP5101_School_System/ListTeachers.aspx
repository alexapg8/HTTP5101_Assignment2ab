<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ListTeachers.aspx.cs" Inherits="HTTP5101_School_System.ListTeachers" %>

<asp:Content ID="teachers_list" ContentPlaceHolderID="body" runat="server">
   <h1 class="list_titles">Teachers</h1>

    <!-- List navigation form -->
    
    <div class="search_box">
        <asp:label runat="server" class="search_name" for="teacher_search">Search:</asp:label>
        <asp:TextBox runat="server" ID="teacher_search"></asp:TextBox> 
        <asp:Button CssClass="button" runat="server" Text="SUBMIT" />
    </div> 
  
    <!--<div id="sql_debugger" runat="server"></div> <!-- debugger/output for SQL query -->

    <!-- Teacher results list -->
    <div id="teachers_results" class="_table" runat="server">
        <div class="listitem">
            <div class="col4">TEACHER NAME</div>
            <div class="col4">EMPLOYEE NUMBER</div>
            <div class="col4">HIRE DATE</div>
            <div class="col4last">SALARY</div>
        </div> <!-- end row of items -->
    </div> <!-- end results table -->

</asp:Content>
