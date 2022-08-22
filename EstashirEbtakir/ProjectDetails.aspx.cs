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
            var Id = Request.QueryString["id"];
            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
             sqlconn = new SqlConnection(mainconn);

                sqlconn.Open();

            string sqlquery = "Select * from [dbo].[EEProject] where Project_Id="+Id;
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlcomm;
            DataSet ds = new DataSet();
            da.Fill(ds);


            sqlconn.Close();
           
        }



        }
    }

          
