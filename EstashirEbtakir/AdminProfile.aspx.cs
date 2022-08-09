using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;

namespace EstashirEbtakir {
    public partial class AdminProfile : System.Web.UI.Page {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e) {

            // set database connection
            con = new SqlConnection(getConstring());
            con.Open();

            // get the session id ( admin id )
            int sessionID = int.Parse(HttpContext.Current.Session.SessionID);

            // get admin info from DB
            SqlCommand cmd = new SqlCommand("select * from OurAdmin where Admin_ID='" + sessionID + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read()) {
                // display admin info
                Fname.Attributes.Add("placeholder", reader.GetString(1));
                Lname.Attributes.Add("placeholder", reader.GetString(1) + " " + reader.GetString(2));
                name.Attributes.Add("placeholder", reader.GetString(2));
                email.Attributes.Add("placeholder", reader.GetString(3));
            }
            con.Close();
        }

        public string getConstring() {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            return constr;
        }



    }
}