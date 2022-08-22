using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Controls;

namespace EstashirEbtakir
{
    public partial class MyIdeasPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            //order by Idea_ID desc

            string sqlqueryIdea = "Select *, Case when Idea_State = 0 then N'قيد المراجعة' when Idea_State=1 then N'مقبول' else N'مرفوض' end as State  " +
                "from [dbo].[EEIdea] inner join [dbo].[EEUser] On EEIdea.User_ID=EEUSer.User_ID where EEIdea.User_ID=" + Session["id"];

            SqlCommand sqlcommIdea = new SqlCommand(sqlqueryIdea, sqlconn);
            sqlconn.Open();
            SqlDataAdapter sdaIdea = new SqlDataAdapter();
            sdaIdea.SelectCommand = sqlcommIdea;
            DataSet dsIdea = new DataSet();

            sdaIdea.Fill(dsIdea);
            DataListIdea.DataSource = dsIdea;
            DataListIdea.DataBind();
            SqlDataReader reader = sqlcommIdea.ExecuteReader();

            while (reader.Read())
            {

                ListBox1.Items.Add(reader["Idea_Id"].ToString());

            }
            sqlconn.Close();
        }
    }
}