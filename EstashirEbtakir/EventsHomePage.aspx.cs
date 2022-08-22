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
    public partial class EventsHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);

            string sqlqueryEvent = "Select * from [dbo].[EventsAndParticipation2] ";
            SqlCommand sqlcommEvent = new SqlCommand(sqlqueryEvent, sqlconn);
            sqlconn.Open();
            SqlDataAdapter sdaEvent = new SqlDataAdapter();
            sdaEvent.SelectCommand = sqlcommEvent;
            DataSet dsEvent = new DataSet();

            sdaEvent.Fill(dsEvent);
            DataListEvent.DataSource = dsEvent;
            DataListEvent.DataBind();


            sqlconn.Close();

        }

        protected void Search_Click(object sender, EventArgs e)
        {

        }
    }
}