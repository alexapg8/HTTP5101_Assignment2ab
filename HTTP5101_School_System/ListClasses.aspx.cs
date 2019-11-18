using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Diagnostics;


namespace HTTP5101_School_System
{
    public partial class ListClasses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            class_results.InnerHtml = "";

            string searchterm = "";

            if (Page.IsPostBack)
            {
                searchterm = class_search.Text;
            } //end Page.IsPostBack


            string sqlquery = "select * from CLASSES";

            if (searchterm != "")
            {
                sqlquery += " WHERE CLASSCODE like '%" + searchterm + "%' ";
                sqlquery += " or CLASSNAME like '%" + searchterm + "%' ";
                sqlquery += " or STARTDATE like '%" + searchterm + "%' ";
                sqlquery += " or FINISHDATE like '%" + searchterm + "%' ";
            }

            sql_debugger.InnerHtml = sqlquery;

            //declare new db
            var db = new SCHOOLDB();

            //SQL query
            List<Dictionary<String, String>> rs = db.List_Query(sqlquery);

            //get each result, add it to our list
            foreach (Dictionary<String, String> row in rs)
            {
                //start the div
                class_results.InnerHtml += "<div class=\"listitem\">";

                //call the rows for data

                string classid = row["CLASSID"];

                string classname = row["CLASSNAME"];
                class_results.InnerHtml += "<div class=\"col4\"><a href=\"ShowClasses.aspx?classid=" + classid + "\">" + classname + "</a></div>";

                string classcode = row["CLASSCODE"];
                class_results.InnerHtml += "<div class=\"col4\">" + classcode + "</div>";

                string classstartdate = row["STARTDATE"];
                class_results.InnerHtml += "<div class=\"col4\">" + classstartdate + "</div>";

                string classenddate = row["FINISHDATE"];
                class_results.InnerHtml += "<div class=\"col4last\">" + classenddate + "</div>";

                //end the div
                class_results.InnerHtml += "</div>";

            } //end foreach

        }
    }
}