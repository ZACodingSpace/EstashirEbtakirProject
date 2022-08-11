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
    public partial class SignUpLogInPage : System.Web.UI.Page
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

        protected void login_Click(object sender, EventArgs e)
        {
            string email = logInEmail.Text;
            string pass = logInPassword.Text;
            Session["id"] = "";

            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from OurUser where Email='" + email.Trim() + "'", con);

            SqlDataReader reader;
            reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                string userEmail = reader.GetString(4);
                string user_id = "" + reader.GetInt32(0);
                string username = reader.GetString(1);
                string userpassword = reader.GetString(3);

                if (userEmail == email && userpassword == pass)
                {

                    Response.Redirect("Home.aspx");

                    Session["id"] = user_id;
                    Session["name"] = username;
                    //Response.Redirect("UserProfile.aspx");
                }
                else
                {
                    logInPasswordEmsg.Text = "كلمة المرور غير صحيحة";

                }
            }
            else
            {
                logInEmailEmsg.Text = "البريد الإلكتروني غير صحيح";
            }

            con.Close();

        }

        protected void Registration_Click(object sender, EventArgs e)
        {
            //string Fname = firstname.Value;
            //string Lname = lastname.Value;
            string email = email1.Value;
            string pass = password1.Value;
            string pass2 = confPasswordInputPlace.Value;
            //string universityid = uniID.Value;
            Session["id"] = "";

            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from OurUser where Email='" + email.Trim() + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            //SqlCommand cmd = new SqlCommand("select * from OurUser where Email='" + email.Trim() + "'", con);
            //SqlDataReader reader;
            SqlCommand cmd2 = new SqlCommand("INSERT INTO OurUser(Fname, Lname,Password,Email) VALUES(@FirstName, @LastName, @Pass, @Email)", con);
            //reader = cmd.ExecuteReader();
            if (dt.Rows.Count == 0)
            {
                //reader.Close();
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
                                if ((Regex.Match(pass, @"(?=.[!@#$%^&])").Success))
                                {
                                    //cmd2.Parameters.AddWithValue("@ID", 7);
                                    cmd2.Parameters.AddWithValue("@FirstName", fNameInputPlace.Value);
                                    cmd2.Parameters.AddWithValue("@LastName", lNameInputPlace.Value);
                                    cmd2.Parameters.AddWithValue("@Pass", pass);
                                    cmd2.Parameters.AddWithValue("@Email", email);
                                    //cmd2.Parameters.AddWithValue("@UniID", uniID.Value);
                                    cmd2.ExecuteNonQuery();
                                    Label1.Text = "تم تسجيلك بنجاح";
                                }
                                else
                                {
                                    signUpPasswordEmsg.Text = "كلمة المرور يجب أن تحتوي على رموز";
                                }
                            }
                            else
                            {
                                signUpPasswordEmsg.Text = "كلمة المرور يجب أن تحتوي على أحرف صغيرة وكبيرة";
                            }
                        }
                        else
                        {
                            signUpPasswordEmsg.Text = "كلمة المرور يجب أن تحتوي على أرقام";
                        }

                    }
                    else
                    {
                        signUpPasswordEmsg.Text = "كلمة المرور يجب أن تحتوي على 8 أحرف على الأقل";

                    }

                }
                else
                {
                    signUpPasswordEmsg.Text = "كلمتين المرور غير متطابقتين";
                }
            }
            else
            {
                signUpEmailEmsg.Text = "البريد الإلكتروني مسجل مسبقًا";
            }
            con.Close();

        }
    }
}