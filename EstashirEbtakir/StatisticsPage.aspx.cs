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

namespace EstashirEbtakir
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            // set database connection
            con = new SqlConnection(GetConstring());
            con.Open();

            

            SqlCommand cmd = new SqlCommand("SELECT COUNT(User_Id), Job_Position FROM OurUser GROUP BY Job_Position", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            
            DataTable table = new DataTable("usersTable");
            sda.Fill(table);
        }


        public string GetConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            return constr;
        }
    }
}