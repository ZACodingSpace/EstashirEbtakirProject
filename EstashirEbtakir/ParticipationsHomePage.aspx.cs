using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstashirEbtakir
{
    public partial class ParticipationsHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);

            string sqlqueryParticipation = "Select * from [dbo].[EventsAndParticipation] where Type = '2' ";
            SqlCommand sqlcommParticipation = new SqlCommand(sqlqueryParticipation, sqlconn);
            sqlconn.Open();
            SqlDataAdapter sdaParticipation = new SqlDataAdapter();
            sdaParticipation.SelectCommand = sqlcommParticipation;
            DataSet dsParticipation = new DataSet();

            sdaParticipation.Fill(dsParticipation);
            DataListParticipation.DataSource = dsParticipation;
            DataListParticipation.DataBind();


            sqlconn.Close();





        }
    }
}