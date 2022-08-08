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

namespace EstashirEbtakir
{
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Remove("error");
                Session["id"] = "";
            }
        }
        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            return constr;
        }
        protected void Registration_Click(object sender, EventArgs e)
        {
            string Fname = firstname.Value;
            string Lname = lastname.Value;
            string email = Email.Value;
            string pass = Password.Value;
            string pass2 = Password2.Value;
            Session["id"] = "";

            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from OurUser where Email='" + email.Trim() + "'", con);
            SqlDataReader reader;
            reader = cmd.ExecuteReader();
            if (!reader.Read())
            {
                if (pass == pass2)
                {

                }
                else
                {
                   Lbmsg.Text = "كلمتين المرور غير متطابقتين";
                }
            }
            else
            {
                Lbmsg.Text = "البريد الإلكتروني مسجل مسبقًا";
            }
               
        }
    }
}