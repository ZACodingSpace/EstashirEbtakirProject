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
            projectNameMsg.Text = "";
            projectDescriptionMsg.Text = "";
            projectImgMsg.Text = "";
            projectCollegeMsg.Text = "";
            projectMajorMsg.Text = "";
            projectSupervisorMsg.Text = "";
            projectMembersMsg.Text = "";
            projectFileMsg.Text = "";
            string projectName = projectNameField.Value;
            string brief = projectDescriptionTextarea.Value;
            string collegePro = collegeP.Value;
            string major = majorP.Value;
            string supervisorPro = supervisorP.Value;
            string TeamMembers = Textarea1.Value;
            int Grade = Int32.Parse(gradeP.Value);
            Stream fsIMG = Pimg.PostedFile.InputStream;
            BinaryReader brIMG = new BinaryReader(fsIMG);
            byte[] bytesIMG = brIMG.ReadBytes((Int32)fsIMG.Length);
            if (projectName.Length < 1)
            {
                projectNameMsg.Text = "لم يتم إدخال اسم المشروع";
            }else if(brief.Length < 1) 
            {
                projectDescriptionMsg.Text = "لم يتم إدخال نبذة عن المشروع";
            }
            else if (collegePro.Length < 1)
            {
                projectCollegeMsg.Text = "لم يتم إدخال الكلية";
            }
            else if (major.Length < 1)
            {
                projectMajorMsg.Text = "لم يتم إدخال التخصص";
            }
            else if (supervisorPro.Length < 1)
            {
                projectSupervisorMsg.Text = "لم يتم إدخال المشرف";
            }
            else if (TeamMembers.Length < 1)
            {
                projectMembersMsg.Text = "لم يتم إدخال الأعضاء";
            }
            else if (Pimg.Value.Length < 1)
            {
                projectImgMsg.Text = "لم يتم رفع صورة";
            }
            else if (fileP.Value.Length < 1)
            {
                projectFileMsg.Text = "لم يتم رفع ملف";
            }
            else
            {
                string str = getConstring();
                con = new SqlConnection(str);
                con.Open();

                //Upload File
                string filename = Path.GetFileName(fileP.PostedFile.FileName);
                string contentType = fileP.PostedFile.ContentType;
                using (Stream fs = fileP.PostedFile.InputStream)
                {
                    using (BinaryReader br = new BinaryReader(fs))
                    {
                        byte[] bytes = br.ReadBytes((Int32)fs.Length);
                        SqlCommand cmd = new SqlCommand("INSERT INTO EEFile (Name, ContentType, Data) VALUES(@Name, @ContentType, @Data)", con);
                        cmd.Parameters.AddWithValue("@Name", filename);
                        cmd.Parameters.AddWithValue("@ContentType", contentType);
                        cmd.Parameters.AddWithValue("@Data", bytes);
                        cmd.ExecuteNonQuery();
                    }
                }

                SqlDataAdapter sda = new SqlDataAdapter("select @@IDENTITY from EEFile", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                
                string type = (string)Session["Type"];
                if (type == "User")
                {
                    int UserID = (int)Session["id"];
                    SqlCommand cmd2 = new SqlCommand("INSERT INTO EEProject (User_ID, Project_Name, Supervisor, " +
                        "Team_Members, Brief, Faculty, Degree, Major, Project_State, image, File_ID)" +
                        " VALUES(@User_ID, @Project_Name, @Supervisor, @Team_Members, @Brief, @Faculty, " +
                        "@Degree, @Major, @Project_State, @image, @File_ID)", con);
                    cmd2.Parameters.AddWithValue("@User_ID", UserID);
                    cmd2.Parameters.AddWithValue("@Project_Name", projectName);
                    cmd2.Parameters.AddWithValue("@Supervisor", supervisorPro);
                    cmd2.Parameters.AddWithValue("@Team_Members", TeamMembers);
                    cmd2.Parameters.AddWithValue("@Brief", brief);
                    cmd2.Parameters.AddWithValue("@Faculty", collegePro);
                    cmd2.Parameters.AddWithValue("@Major", major);
                    cmd2.Parameters.AddWithValue("@Degree", Grade);
                    cmd2.Parameters.AddWithValue("@Project_State", 0);
                    cmd2.Parameters.AddWithValue("@image", bytesIMG);
                    cmd2.Parameters.AddWithValue("@File_ID", dt.Rows[0].ItemArray[0]);
                    cmd2.ExecuteNonQuery();
                }
                else
                {
                    int adminId = (int)Session["id"];
                    SqlCommand cmd2 = new SqlCommand("INSERT INTO EEProject (Admin_ID, Project_Name, Supervisor, " +
                        "Team_Members, Brief, Faculty, Major, Degree, Project_State, image, File_ID)" +
                        " VALUES(@admin_ID, @Project_Name, @Supervisor, @Team_Members, @Brief, @Faculty, " +
                        "@Major, @Degree, @Project_State, @image, @File_ID)", con);
                    cmd2.Parameters.AddWithValue("@admin_ID", adminId);
                    cmd2.Parameters.AddWithValue("@Project_Name", projectName);
                    cmd2.Parameters.AddWithValue("@Supervisor", supervisorPro);
                    cmd2.Parameters.AddWithValue("@Team_Members", TeamMembers);
                    cmd2.Parameters.AddWithValue("@Brief", brief);
                    cmd2.Parameters.AddWithValue("@Faculty", collegePro);
                    cmd2.Parameters.AddWithValue("@Major", major);
                    cmd2.Parameters.AddWithValue("@Degree", Grade);
                    cmd2.Parameters.AddWithValue("@Project_State", 1);
                    cmd2.Parameters.AddWithValue("@image", bytesIMG);
                    cmd2.Parameters.AddWithValue("@File_ID", dt.Rows[0].ItemArray[0]);
                    cmd2.ExecuteNonQuery();
                }
                

                SqlDataAdapter sda2 = new SqlDataAdapter("select @@IDENTITY from EEProject", con);
                DataTable dt2 = new DataTable();
                sda2.Fill(dt2);
                SqlCommand cmdTech = new SqlCommand("INSERT INTO Technologies(tech_name, type, ID) VALUES(@TechName,@Type, @Pro_ID)", con);
                cmdTech.Parameters.AddWithValue("@TechName", SqlDbType.VarChar);
                cmdTech.Parameters.AddWithValue("@Type", "P");
                cmdTech.Parameters.AddWithValue("@Pro_ID", dt2.Rows[0].ItemArray[0]);

                if (VRtech.Checked == true)
                {
                    cmdTech.Parameters["@TechName"].Value = "نظارات الواقع الافتراضي";
                    cmdTech.ExecuteNonQuery();
                }
                if (ARtech.Checked == true)
                {
                    cmdTech.Parameters["@TechName"].Value = "تقنية الواقع المعزز";
                    cmdTech.ExecuteNonQuery();
                }
                if (Leaptech.Checked == true)
                {
                    cmdTech.Parameters["@TechName"].Value = "واجهات التفاعل الطبيعية";
                    cmdTech.ExecuteNonQuery();
                }
                if (secondlifetech.Checked == true)
                {
                    cmdTech.Parameters["@TechName"].Value = "العوالم الافتراضية";
                    cmdTech.ExecuteNonQuery();
                }
                if (AItech.Checked == true)
                {
                    cmdTech.Parameters["@TechName"].Value = "الذكاء الاصطناعي وتحليل البيانات";
                    cmdTech.ExecuteNonQuery();
                }
                if (robottech.Checked == true)
                {
                    cmdTech.Parameters["@TechName"].Value = "الروبوتيك";
                    cmdTech.ExecuteNonQuery();
                }
                if (hologramtech.Checked == true)
                {
                    cmdTech.Parameters["@TechName"].Value = "منصة العرض ثلاثية الأبعاد";
                    cmdTech.ExecuteNonQuery();
                }
                if (soundstudio.Checked == true)
                {
                    cmdTech.Parameters["@TechName"].Value = "استديو انتاج الصوت";
                    cmdTech.ExecuteNonQuery();
                }
                if (threeDprinttech.Checked == true)
                {
                    cmdTech.Parameters["@TechName"].Value = "طابعة ثلاثية الأبعاد";
                    cmdTech.ExecuteNonQuery();
                }
                if (virtualTours.Checked == true)
                {
                    cmdTech.Parameters["@TechName"].Value = "الجولات الافتراضية والمشاهد البانورامية";
                    cmdTech.ExecuteNonQuery();
                }
                if (eyeTrack.Checked == true)
                {
                    cmdTech.Parameters["@TechName"].Value = "جهاز تعقب حركة العين";
                    cmdTech.ExecuteNonQuery();
                }

                if (type == "User")
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                   "Swal.fire({title: 'تم إضافة المشروع بنجاح',icon: 'success', confirmButtonText: 'موافق'}).then(function() { window.location = 'MyProjectsPage.aspx'})", true);
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                    "Swal.fire({title: 'تم إضافة المشروع بنجاح',icon: 'success', confirmButtonText: 'موافق'}).then(function() { window.location = 'AcceptProjects.aspx'})", true);

                }
                con.Close();
            }
        }
    }
}