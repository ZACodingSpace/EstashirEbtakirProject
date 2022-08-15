using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Xml.Linq;
using System.Data;
using System.Text.RegularExpressions;


namespace EstashirEbtakir
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

            //string id =Session["id"]+" ";
            //MessageBox.Show(id);

            try
            {
                con = new SqlConnection(GetConstring());
                con.Open();

                // get the session id ( user id )

                // get admin info from DB
                SqlCommand cmd = new SqlCommand("select * from ProjectTable", con);
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {

                    ProjName.Attributes.Add("", reader.GetString(1));
                    CollegeName.Attributes.Add("", reader.GetString(2));
                    MajorName.Attributes.Add("", reader.GetString(3));

                }

                con.Close();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                con.Close();
            }

        }

        public string GetConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            return constr;
        }

    }


}