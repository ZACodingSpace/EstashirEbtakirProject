using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;
namespace EstashirEbtakir
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Remove("error");
            }
        }
        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            return constr;
        }
        int SID = int.Parse (HttpContext.Current.Session.SessionID);
        protected void ChangePass_Click(object sender, EventArgs e)
        {
            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from OurUser where User_ID='" + SID + "'", con);
            DataTable dt = new DataTable();
            //sda.Fill(dt); 

        }
    }
}