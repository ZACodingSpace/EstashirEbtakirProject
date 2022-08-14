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
using System.Text.RegularExpressions;
using System.Windows;

namespace EstashirEbtakir
{
    public partial class AddIdea : System.Web.UI.Page
    {
        SqlConnection con;
        int ID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Remove("error");
                Session["id"] = null;
            }
        }
        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            return constr;
        }
        protected void add_Click(object sender, EventArgs e)
        {
            string ideaName = ideaNameField.Value;
            string brief = ideaDescriptionTextarea.Value;

            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO OurIdea(User_ID, Idea_Name, Brief,Idea_State) VALUES(@userID,@IdeaName, @IdeaBrief, @State)", con);
            cmd.Parameters.AddWithValue("@userID", Session["id"]);
            cmd.Parameters.AddWithValue("@IdeaName", ideaName);
            cmd.Parameters.AddWithValue("@Brief", brief);
            cmd.Parameters.AddWithValue("@State", 0);
            //cmd2.Parameters.AddWithValue("@UniID", uniID.Value);
            cmd.ExecuteNonQuery();
            SqlCommand cmd2 = new SqlCommand("SELECT IDENT_CURRENT(OurIdea)", con);
            //ID = cmd2.ExecuteReader();

        }
        protected void checkBox1_Checked(object sender, EventArgs e)
        {
        }

        protected void checkBox2_Checked(object sender, EventArgs e)
        {
        }

        protected void checkBox3_Checked(object sender, EventArgs e)
        {
        }

        protected void checkBox4_Checked(object sender, EventArgs e)
        {
        }
    }
}