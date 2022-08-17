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
    public partial class Home : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);

            string sqlqueryIdea = "Select Top 4 * from [dbo].[OurIdea] ";
            SqlCommand sqlcommIdea = new SqlCommand(sqlqueryIdea, sqlconn);
            sqlconn.Open();
            SqlDataAdapter sdaIdea = new SqlDataAdapter();
            sdaIdea.SelectCommand = sqlcommIdea;
            DataSet dsIdea = new DataSet();

            sdaIdea.Fill(dsIdea);
            DataListIdea.DataSource = dsIdea;
            DataListIdea.DataBind();
            /////////////////////////////////////



            sqlconn = new SqlConnection(mainconn);


            string sqlqueryCons = "Select Top 4 * from [dbo].[OurCounselor] " +
                "inner Join [dbo].[OurUser] ON Counselor_ID=User_ID";
            SqlCommand sqlcommCons = new SqlCommand(sqlqueryCons, sqlconn);
            sqlconn.Open();
            SqlDataAdapter sdaCons = new SqlDataAdapter();
            sdaCons.SelectCommand = sqlcommCons;
            DataSet dsCons = new DataSet();

            sdaCons.Fill(dsCons);
            DataListCons.DataSource = dsCons;
            DataListCons.DataBind();



            ///////////////////////////////////

            sqlconn = new SqlConnection(mainconn);


            string sqlqueryPro = "Select Top 4 * from [dbo].[OurProject]";
            SqlCommand sqlcommPro = new SqlCommand(sqlqueryPro, sqlconn);
            sqlconn.Open();
            SqlDataAdapter sdaPro = new SqlDataAdapter();
            sdaPro.SelectCommand = sqlcommPro;
            DataSet dsPro = new DataSet();
           
            sdaPro.Fill(dsPro);
            DataListProject.DataSource = dsPro;
            DataListProject.DataBind();
            

            sqlconn.Close();


        }

       
    }
}