using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows;


namespace EstashirEbtakir
{
    public partial class AddProject : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            return constr;
        }
        protected void add_Click(object sender, EventArgs e)
        {
            string projectName = projectNameField.Value;
            string brief = projectDescriptionTextarea.Value;
            //string projectimage= Pimg.Value;
            string collegePro = collegeP.Value;
            string majorPro = majorP.Value;
            string supervisorPro = supervisorP.Value;
            string TeamMembers = Textarea1.Value;
            string Grade = gradeP.Value;


            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();

            //Upload File
            string filename = Path.GetFileName(fileP.PostedFile.FileName);
            string contentType = fileP.PostedFile.ContentType;
            using (Stream fs= fileP.PostedFile.InputStream)
            {
                using (BinaryReader br= new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    SqlCommand cmd = new SqlCommand("insert into File values (@Name, @ContentType, @Data)",con);
                    cmd.Parameters.AddWithValue("@Name", filename);
                    cmd.Parameters.AddWithValue("@ContentType", contentType);
                    cmd.Parameters.AddWithValue("@Data", bytes);
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("تمت إضافة الملف");
                    con.Close();

                }
            }
            Response.Redirect(Request.Url.AbsoluteUri);
            
        }
    }
}