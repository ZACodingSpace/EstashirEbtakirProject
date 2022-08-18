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
    public partial class AchievementsHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);

            string sqlqueryAchievement = "Select * from [dbo].[EventsAndParticipation] where Type = 3 ";
            SqlCommand sqlcommAchievement = new SqlCommand(sqlqueryAchievement, sqlconn);
            sqlconn.Open();
            SqlDataAdapter sdaAchievement = new SqlDataAdapter();
            sdaAchievement.SelectCommand = sqlcommAchievement;
            DataSet dsAchievement = new DataSet();

            sdaAchievement.Fill(dsAchievement);
            DataListAchievement.DataSource = dsAchievement;
            DataListAchievement.DataBind();


            sqlconn.Close();
        }
    }
}