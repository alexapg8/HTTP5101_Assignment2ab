using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Diagnostics;
using System.Configuration;


namespace HTTP5101_School_System
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            /* PAGE REFERENCES: 

             * Link: http://csharp-video-tutorials.blogspot.com/2012/11/data-bind-aspnet-dropdownlist-with-data.html
             Author: Pragim Tech,
             Date Accessed: November 18, 2019,
             Purpose: This tutorial gave us the starting point we needed to pull the data from our database into the drop down list. We wanted this list of classes to autopopulate based on classes in the database, so that if a class was added or was no longer running, we would not have to update our code.

             * Link: https://docs.microsoft.com/en-us/dotnet/api/system.configuration.configurationmanager.connectionstrings?view=netframework-4.8
             Author: Microsoft Docs
             Date Access: November 18, 2019,
             Purpose: We used this document to understand the code we were writing using Pragim Tech as a reference. Our first error showed up when we were using ConfigurationManager, and we used Microsoft Docus as a reference in creating a ConfigurationManager class to get our connection string working. 
             
             * Link:
              https://dev.mysql.com/doc/connector-net/en/connector-net-programming-connecting-connection-string.html,
              Author: MySQL Docs,
              Date Accessed: November 18, 2019,
              Purpose: When we wrote the code using Pragim Tech as a reference, we received the following error: "System.NullReferenceException: Object reference not set to an instance of an object." Our original reference was using SQL connectors, and we started researching whether using MySqlConnections was the issue, so any differences between SqlConnection commands in the original code and MySqlConnections and ensuring our syntax was correct.  

              * Link: https://www.connectionstrings.com/store-connection-string-in-webconfig/
                Author: Sebastian Affakes,
                Date Accessed: November 18, 2019
                Purpose: This article gave the insight that we needed to understand where we were missing the myConnectionString object, which was causing the NullReferenceException error. This article referenced the Web.config file, and we realized we needed to declare our connection string in that file, so that we can call it here. The code used is in the Web.config file, Line 41-43. When we looked at that file, we also realized we were missing System.Configuration in front of ConfigurationManager.
 
             */
                string connectionstring = System.Configuration.ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                using (MySqlConnection con = new MySqlConnection(connectionstring))
                {
                    MySqlCommand getclasses = new MySqlCommand("Select CLASSCODE, CLASSNAME from CLASSES", con);

                    con.Open();
                    MySqlDataReader rdr = getclasses.ExecuteReader();
                    courselist.DataSource = rdr;
                    courselist.DataBind();

                }


            registrationsubmit_btn.PostBackUrl = "~/ListClasses.aspx";
            registrationdrop_btn.PostBackUrl = "~/DropClass.aspx";
        }
    }
}