using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101_School_System
{
    public partial class ListTeachers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
               An alternate way to fetch data without the SCHOOLDB.cs class
               https://dev.mysql.com/doc/connector-net/en/connector-net-tutorials-sql-command.html
           */
            teachers_results.InnerHtml = "";

            string searchkey = "";
            if (Page.IsPostBack)
            {
                searchkey = teacher_search.Text;

            }
            string query = "select * from TEACHERS";

            if (searchkey != "")
            {
                query += " WHERE TEACHERFNAME like '%" + searchkey + "%' ";
                query += " or TEACHERLNAME like '%" + searchkey + "%' ";
                query += " or EMPLOYEENUMBER like '%" + searchkey + "%' ";
                query += " or SALARY like '%" + searchkey + "%' ";
            }
            sql_debugger.InnerHtml = query;

            var db = new SCHOOLDB();
            List<Dictionary<String, String>> rs = db.List_Query(query);
            foreach (Dictionary<String, String> row in rs)
            {
                teachers_results.InnerHtml += "<div class=\"listitem\">";

                string teacherid = row["TEACHERID"];

                string teahcherfirstname = row["TEACHERFNAME"];
                teachers_results.InnerHtml += "<div class=\"col4\"><a href=\"ShowTeacher.aspx?teacherid=" + teacherid + "\">" + teahcherfirstname + "</a></div>";

                string teacherlastname = row["TEACHERLNAME"];
                teachers_results.InnerHtml += "<div class=\"col4\">" + teacherlastname + "</div>";

                string employeenumber = row["EMPLOYEENUMBER"];
                teachers_results.InnerHtml += "<div class=\"col4\">" + employeenumber + "</div>";

                string hiredate = row["HIREDATE "];
                teachers_results.InnerHtml += "<div class=\"col4last\">" + hiredate + "</div>";

                string salary = row["SALARY "];
                teachers_results.InnerHtml += "<div class=\"col4last\">" + salary + "</div>";

                teachers_results.InnerHtml += "</div>";
            }
        }
    }
}
