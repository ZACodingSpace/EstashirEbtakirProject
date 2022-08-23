using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Controls;

namespace EstashirEbtakir
{
    public partial class MyAppointmentsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            sqlconn.Open();
            SqlCommand cmdProfile = new SqlCommand("select * from EEUser where User_ID='" + Session["id"] + "'", sqlconn);
            SqlDataReader readerProfile = cmdProfile.ExecuteReader();

            if (readerProfile.Read())
            {
                // display user info

                name.Attributes.Add("placeholder", readerProfile.GetString(1) + " " + readerProfile.GetString(2));
                job.Attributes.Add("placeholder", readerProfile.GetString(7));

            }
            sqlconn.Close();
        }
    }
}