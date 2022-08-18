using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace EstashirEbtakir
{
    public partial class ConsultationsSectionHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);

            string sqlqueryCons = "Select Top 4 * from [dbo].[OurCounselors] " +
               "inner Join [dbo].[OurUsers] ON Counselor_ID=User_ID";
            SqlCommand sqlcommCons = new SqlCommand(sqlqueryCons, sqlconn);
            sqlconn.Open();
            SqlDataAdapter sdaCons = new SqlDataAdapter();
            sdaCons.SelectCommand = sqlcommCons;
            DataSet dsCons = new DataSet();

            sdaCons.Fill(dsCons);
            DataListCons.DataSource = dsCons;
            DataListCons.DataBind();

            sqlconn.Close();
        }
    }
}