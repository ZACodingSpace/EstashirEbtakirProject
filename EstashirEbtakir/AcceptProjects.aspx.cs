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
        SqlConnection sqlconn;
        int FileID = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            var Id = Request.QueryString["id"];
            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            sqlconn = new SqlConnection(mainconn);
            sqlconn.Open();

            string sqlquery = "Select * from [dbo].[EEProject] where Project_Id='" + Id + "'";
            SqlDataAdapter da = new SqlDataAdapter(sqlquery, sqlconn);
            DataTable ds = new DataTable();
            da.Fill(ds);
            int ProID = (int)ds.Rows[0].ItemArray[0];
            projectDetailsNameField.Value = (string)ds.Rows[0].ItemArray[3];
            ProjectDetailsDescription.Value = (string)ds.Rows[0].ItemArray[6];
            collegeProjectDetails.Value = (string)ds.Rows[0].ItemArray[7];
            majorProjectDetails.Value = (string)ds.Rows[0].ItemArray[8];
            gradeP.Value = ds.Rows[0].ItemArray[9] + " ";
            TextareaProjectDetails.Value = (string)ds.Rows[0].ItemArray[5];
            supervisorP.Value = (string)ds.Rows[0].ItemArray[4];
            FileID = (int)ds.Rows[0].ItemArray[13];
            byte[] bytes = (byte[])ds.Rows[0].ItemArray[12];
            string base64String = Convert.ToBase64String(bytes);
            Image1.ImageUrl = "data:image/png;base64," + base64String;

            string sqlquery2 = "Select * from [dbo].[Technologies] where ID='" + ProID + "' And type= 'P'";
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
        protected void downloadFile_Click(object sender, EventArgs e)
        {
            int id = FileID;
            byte[] bytes;
            string fileName, contentType;
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select Name, Data, ContentType from EEFile where Id=@Id";
                    cmd.Parameters.AddWithValue("@Id", id);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        bytes = (byte[])sdr["Data"];
                        contentType = sdr["ContentType"].ToString();
                        fileName = sdr["Name"].ToString();
                    }
                    con.Close();
                }
            }
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = contentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }
        protected void AcceptB_Click(object sender, EventArgs e)
        {
            var Id = Request.QueryString["id"];

            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            sqlconn.Open();

            SqlCommand cmd = new SqlCommand("UPDATE EEProject SET Project_State= 1 WHERE Project_Id='" + Id + "'", sqlconn);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                                    "Swal.fire({title: 'تم قبول المشروع بنجاح',icon: 'success', confirmButtonText: 'موافق'}).then(function() { window.location = 'AcceptProjectList.aspx'})", true);

        }

        protected void RejectB_Click(object sender, EventArgs e)
        {
            var Id = Request.QueryString["id"];

            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            sqlconn.Open();

            SqlCommand cmd = new SqlCommand("UPDATE EEProject SET Project_State= -1 WHERE Project_Id='" + Id + "'", sqlconn);
            cmd.ExecuteNonQuery();

            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                                    "Swal.fire({title: 'تم رفض المشروع بنجاح',icon: 'success', confirmButtonText: 'موافق'}).then(function() { window.location = 'AcceptProjectList.aspx'})", true);


        }



    }
}