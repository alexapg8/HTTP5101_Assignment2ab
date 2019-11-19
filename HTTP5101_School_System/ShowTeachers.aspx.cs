﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101_School_System
{
    public partial class ShowTeachers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                bool valid = true;
                string teacherid = Request.QueryString["teacherid"];
                if (String.IsNullOrEmpty(teacherid)) valid = false;

                //We will attempt to get the record we need
                if (valid)
                {
                    var db = new SCHOOLDB();
                    Dictionary<String, String> teacher_record = db.FindTeacher(Int32.Parse(teacherid));

                    if (teacher_record.Count > 0)
                    {
                        teacher_title_fname.InnerHtml = teacher_record["TEACHERFNAME"] + " " + teacher_record["TEACHERLNAME"];
                        teacher_fname.InnerHtml = teacher_record["TEACHERFNAME"];
                        teacher_lname.InnerHtml = teacher_record["TEACHERLNAME"];
                        teacher_number.InnerHtml = teacher_record["EMPLOYEENUMBER"];
                        hire_date.InnerHtml = teacher_record["HIREDATE"];
                        Salary.InnerHtml = teacher_record["SALARY"];
                    }
                    else
                    {
                        valid = false;
                    }
                }

                if (!valid)
                {
                    teacher.InnerHtml = "There was an error finding that teacher.";
                }
                /*https://stackoverflow.com/questions/23976683/asp-net-button-to-redirect-to-another-page */
                teacheredit_btn.PostBackUrl = "~/TeacherEdit.aspx?teacherid=" + teacherid;
            }
        }
    }
}