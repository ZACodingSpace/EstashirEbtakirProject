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
    public partial class UserProfile : System.Web.UI.Page {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e) {
            try {
                // set database connection
                con = new SqlConnection(GetConstring());
                con.Open();

                // get the session id ( admin id )
                //string sessionIDstr = HttpContext.Current.Session["id"];
                int sessionID = int.Parse((string)Session["id"]);

                // get admin info from DB
                SqlCommand cmd = new SqlCommand("select * from OurUser where User_ID='" + sessionID + "'", con);
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read()) {
                    // display user info
                    uniID.Attributes.Add("placeholder", reader["University_ID"].ToString());
                    name.Attributes.Add("placeholder", reader.GetString(1) + " " + reader.GetString(2));
                    name2.Attributes.Add("placeholder", reader.GetString(1) + " " + reader.GetString(2));
                    email.Attributes.Add("placeholder", reader.GetString(4));
                    phone.Attributes.Add("placeholder", reader["Phone"].ToString());
                    job.Attributes.Add("placeholder", reader.GetString(7));

                }
            } catch (Exception ex) {
                Console.WriteLine(ex.Message);
                con.Close();
            }
            
        }

        protected void EditPhone_Click(object sender, EventArgs e) {
            
            string phoneNum = phone.Value;
            

        }

            public string GetConstring() {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            return constr;
        }
    }
}