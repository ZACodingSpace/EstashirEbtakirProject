using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Collections;

namespace EstashirEbtakir
{
    public partial class AcceptProjects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var Id = Request.QueryString["id"];

            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);


            string sqlqueryIdea = "Select * from [dbo].[EEProject] where Project_ID=" + Id;
            SqlCommand sqlcommIdea = new SqlCommand(sqlqueryIdea, sqlconn);
            sqlconn.Open();
            SqlDataAdapter sdaIdea = new SqlDataAdapter();
            sdaIdea.SelectCommand = sqlcommIdea;
            DataSet dsIdea = new DataSet();

            sdaIdea.Fill(dsIdea);
            GridViewAcceptIdeas.DataSource = dsIdea;
            GridViewAcceptIdeas.DataBind();
            sqlconn.Close();

        }



    }
}