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
namespace EstashirEbtakir
{
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Remove("error");
                Session["id"] = "";
            }
        }
        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            return constr;
        }
        protected void Registration_Click(object sender, EventArgs e)
        {
            //string Fname = firstname.Value;
            //string Lname = lastname.Value;
            string email = Email.Value;
            string pass = Password.Value;
            string pass2 = Password2.Value;
            string universityid = uniID.Value;
            Session["id"] = "";

            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from OurUser where Email='" + email.Trim() + "'", con);
            SqlDataReader reader;
            SqlCommand cmd2 = new SqlCommand("INSERT INTO OurUser(User_ID,Fname, Lname,Password,Email) VALUES(@ID,@FirstName, @LastName, @Pass, @Email)",con);
            reader = cmd.ExecuteReader();
            if (!reader.Read())
            {
                reader.Close();
                //cmd.Cancel();
                if (pass == pass2)
                {
                    if (pass.Length >= 8)
                    {
                        if (Regex.Match(pass, @"(?=.*[0-9])").Success)
                        {
                            if (Regex.Match(pass, @"(?=.*[A-Z])").Success &&
                                 Regex.Match(pass, @"(?=.*[a-z])").Success)
                            {
                                if((Regex.Match(pass, @"(?=.[!@#$%^&])").Success))
                                {
                                    cmd2.Parameters.AddWithValue("@ID", 7);
                                    cmd2.Parameters.AddWithValue("@FirstName", firstname.Value);
                                    cmd2.Parameters.AddWithValue("@LastName", lastname.Value);
                                    cmd2.Parameters.AddWithValue("@Pass", Password.Value);
                                    cmd2.Parameters.AddWithValue("@Email", Email.Value);
                                    //cmd2.Parameters.AddWithValue("@UniID", uniID.Value);
                                    cmd2.ExecuteNonQuery();
                                }
                                else
                                {
                                    Lbmsg.Text = "كلمة المرور يجب أن تحتوي على رموز";
                                }
                            }
                            else
                            {
                                Lbmsg.Text = "كلمة المرور يجب أن تحتوي على أحرف صغيرة وكبيرة";
                            }
                        }
                        else
                        {
                            Lbmsg.Text = "كلمة المرور يجب أن تحتوي على أرقام";
                        }

                    }
                    else
                    {
                        Lbmsg.Text = "كلمة المرور يجب أن تحتوي على 8 أحرف على الأقل";

                    }

                }
                else
                {
                    Lbmsg.Text = "كلمتين المرور غير متطابقتين";
                }
            }
            else
            {
                Lbmsg.Text = "البريد الإلكتروني مسجل مسبقًا";
            }

        }
    }
}