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
    public partial class AcceptIdeas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var Id = Request.QueryString["id"];
           
            string mainconn= ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            sqlconn.Open(); 
            string sqlquery = "Select * from [dbo].[EEIdea] where Idea_Id='" + Id + "'";
            SqlDataAdapter da = new SqlDataAdapter(sqlquery, sqlconn);
            DataTable ds = new DataTable();
            da.Fill(ds);
            int ideaID = (int)ds.Rows[0].ItemArray[0];
            ideaDetailsNameField.Value = (string)ds.Rows[0].ItemArray[3];
            ideaDetailsDescription.Value = (string)ds.Rows[0].ItemArray[5];

            string sqlquery2 = "Select * from [dbo].[Technologies] where ID='" + ideaID + "' And type= 'I'";
            SqlDataAdapter da2 = new SqlDataAdapter(sqlquery2, sqlconn);
            DataTable ds2 = new DataTable();
            da2.Fill(ds2);

            int i = 0;
            while (ds2.Rows.Count > i)
            {
                Text3.Value += ds2.Rows[i].ItemArray[0] + ", ";
                i = i + 1;
            }

            sqlconn.Close();

        }

        protected void AcceptB_Click(object sender, EventArgs e)
        {
            var Id = Request.QueryString["id"];

            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            sqlconn.Open();

            SqlCommand cmd = new SqlCommand("UPDATE EEIdea SET Idea_State= 1 WHERE Idea_ID='" +Id + "'", sqlconn);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                                    "Swal.fire({title: 'تم قبول الفكرة بنجاح',icon: 'success', confirmButtonText: 'موافق'}).then(function() { window.location = 'AcceptIdeaList.aspx'})", true);

        }

        protected void RejectB_Click(object sender, EventArgs e)
        {
            var Id = Request.QueryString["id"];

            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            sqlconn.Open();

            SqlCommand cmd = new SqlCommand("UPDATE EEIdea SET Idea_State= -1 WHERE Idea_ID='" + Id + "'", sqlconn);
            cmd.ExecuteNonQuery();

            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                                    "Swal.fire({title: 'تم رفض الفكرة بنجاح',icon: 'success', confirmButtonText: 'موافق'}).then(function() { window.location = 'AcceptIdeaList.aspx'})", true);


        }
    }
}