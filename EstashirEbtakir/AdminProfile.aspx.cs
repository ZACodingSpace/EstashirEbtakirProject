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

            con = new SqlConnection(getConstring());
            con.Open();


        }

        public string getConstring() {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            return constr;
        }



    }
}