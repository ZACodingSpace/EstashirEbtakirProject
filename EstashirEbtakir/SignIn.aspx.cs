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
   
    public partial class SignIn : System.Web.UI.Page
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
        
        protected void login_Click(object sender, EventArgs e)
        {
            string email = Email.Value;
            string pass = Pass.Value+"";
            Session["id"] = "";

            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from OurUser where Email='" + email.Trim() + "'", con);

            SqlDataReader reader;
            reader = cmd.ExecuteReader();
            
            if (reader.Read())
            {
                string userEmail = reader.GetString(4);
                string user_id = "" + reader.GetInt32(0);
                string username = reader.GetString(1);
                string userpassword = reader.GetString(3);

                if (userEmail == email && userpassword == pass)
                {
                    
                    Response.Redirect("Home.aspx");
                    
                    Session["id"] = user_id;
                    Session["name"] = username;
                    //Response.Redirect("UserProfile.aspx");
                }
                else
                {
                    Lbmsg.Text = "كلمة المرور غير صحيحة";

                }
            }
            else
            {
                Lbmsg.Text = "البريد الإلكتروني غير صحيح";
            }
            
            con.Close();

        }
    }
}