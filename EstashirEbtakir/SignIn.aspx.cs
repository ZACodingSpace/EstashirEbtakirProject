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
                Session["id"] = Email.Value;
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
            //string query = "select * from OurUser Where Email='" + email.Trim() + "'and Password '" + pass.Trim() + "'";
            SqlCommand cmd = new SqlCommand("select * from OurUser where Email='" + email.Trim() + "'", con);
            //SqlDataAdapter sda = new SqlDataAdapter(query, con);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            /*if(dt.Rows.Count == 1)
            {
                Response.Redirect("Home.aspx");
            }*/

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
                    Console.WriteLine("I am here");
                    Response.Redirect("Home.aspx");
                    Session["id"] = user_id;
                    Session["name"] = username;
                }
                else
                {
                    // Session["error"] = "كلمة المرور غير صحيحة";

                    //MessageBox.Show("كلمة المرور غير صحيحة");
                    Lbmsg.Text = "كلمة المرور غير صحيحة";

                }
            }
            else
            {
                Lbmsg.Text = "البريد الإلكتروني غير صحيح";
                // Session["error"] = "البريد الإلكتروني غير صحيح";
                //MessageBox.Show("البريد الإلكتروني غير صحيح");
            }
            
            con.Close();

        }
    }
}