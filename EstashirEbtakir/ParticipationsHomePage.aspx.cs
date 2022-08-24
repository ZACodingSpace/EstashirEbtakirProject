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
            if (Session["id"] == null)
            {
                addParticipationEventAchievementButton.Visible = false;
            }
            else
            {
                string type = (string)Session["Type"];
                if (type == "User")
                {
                    addParticipationEventAchievementButton.Visible = false;
                }
                else
                {
                    addParticipationEventAchievementButton.Visible = true;
                }
            }

            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);

            string sqlqueryParticipation = "Select * from [dbo].[EventsAndParticipation] where Type = '1' ";
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

        protected void Search_Click(object sender, EventArgs e)
        {
            string text = searchText.Value;
            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            sqlconn.Open();
            string sqlqueryPar = "Select * from [dbo].[EventsAndParticipation] WHERE Type= 1 And (Name LIKE '%' + @PName +'%' )";
            SqlCommand sqlcommPar = new SqlCommand(sqlqueryPar, sqlconn);
            sqlcommPar.Parameters.AddWithValue("@PName", text);
            SqlDataAdapter sdaPar2 = new SqlDataAdapter(sqlcommPar);
            DataSet dsPar2 = new DataSet();
            sdaPar2.Fill(dsPar2);
            DataListParticipation.DataSource = dsPar2;
            DataListParticipation.DataBind();

        }
    }
}