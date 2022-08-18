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
    public partial class ProjectDetails : System.Web.UI.Page
    {
        SqlConnection sqlconn;
        protected void Page_Load(object sender, EventArgs e)
        {

            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
             sqlconn = new SqlConnection(mainconn);

                sqlconn.Open();

            string sqlquery = "Select * from [dbo].[OurProjects] ";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlcomm;
            DataSet ds = new DataSet();
            da.Fill(ds);


             SqlDataReader reader = sqlcomm.ExecuteReader();

                if (reader.Read())
                {
                //projectDetail.Text = ds.Tables[0].Rows[0]["ID"].ToString();


                    sqlconn.Close();

                
            }
           
        }
            public string GetConstring()
            {
                string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
                return constr;
            }

        }
    }

          
