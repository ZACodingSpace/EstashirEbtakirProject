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
	public partial class EditDeleteIdea : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            var Id = Request.QueryString["id"];
            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            sqlconn.Open();
            string sqlquery = "Select * from [dbo].[EEIdea] where Idea_Id='" + Id + "'";
            SqlDataAdapter da = new SqlDataAdapter(sqlquery, sqlconn);
            DataTable ds = new DataTable();
            da.Fill(ds);
            //int ideaID = (int)ds.Rows[0].ItemArray[0];
            ideaDetailsNameField.InnerText = (string)ds.Rows[0].ItemArray[3];
            ideaDescriptionTextareaED.Value = (string)ds.Rows[0].ItemArray[5];
        }

        protected void DeleteB_Click(object sender, EventArgs e)
        {
            var Id = Request.QueryString["id"];

            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            sqlconn.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM EEIdea WHERE WHERE Idea_ID='" + Id + "'", sqlconn);
            cmd.ExecuteNonQuery();

            SqlCommand cmd2 = new SqlCommand("DELETE FROM Technologies where ID='" + Id + "' And type= 'I'", sqlconn);
            cmd2.ExecuteNonQuery();

            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                                    "Swal.fire({title: 'تم حذف الفكرة بنجاح',icon: 'success', confirmButtonText: 'موافق'}).then(function() { window.location = 'MyIdeasPage.aspx.aspx'})", true);



        }

        protected void EditB_Click(object sender, EventArgs e)
        {
            var Id = Request.QueryString["id"];

            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            sqlconn.Open();

            SqlCommand cmd = new SqlCommand("UPDATE EEIdea SET Idea_Name= '"+ ideaDetailsNameField.InnerText + "' And Brief='"+ ideaDescriptionTextareaED.Value + "'WHERE Idea_ID='" + Id + "'", sqlconn);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                                    "Swal.fire({title: 'تم تعديل الفكرة بنجاح',icon: 'success', confirmButtonText: 'موافق'}).then(function() { window.location = 'MyIdeasPage.aspx.aspx'})", true);

        }
    }
}