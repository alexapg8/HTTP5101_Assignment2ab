using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101_School_System
{
    public partial class ShowClasses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //declare what we are looking for
            bool valid = true;
            string class_id = Request.QueryString["classid"];

            // validating if statements
            if (String.IsNullOrEmpty(class_id)) valid = false;

            if (valid)
            {
                var db = new SCHOOLDB();
                Dictionary<String, String> class_info = db.FindClass(Int32.Parse(class_id));

                if (class_info.Count > 0)
                {
                    class_name.InnerHtml = class_info["CLASSNAME"];
                    class_code.InnerHtml = class_info["CLASSCODE"];
                    start_date.InnerHtml = class_info["STARTDATE"];
                    end_date.InnerHtml = class_info["FINISHDATE"];
                }
                else
                {
                    valid = false;
                }
            }

            if (!valid)
            {
                class_detail.InnerHtml = "There was an error finding that student.";
            }

        }
    }
}