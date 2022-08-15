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
    public partial class SignUpLogInPage : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Remove("error");
                Session["id"] =null;
            }
        }

        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            return constr;
        }

        protected void login_Click(object sender, EventArgs e)
        {
            string email = emailInputPlace.Value;
            string pass = passwordInputPlace.Value;
            logInEmailEmsg.Text = "";
            logInPasswordEmsg.Text = "";
            generalEmsg.Text = "";

            if (email.Length < 1)
            {
                logInEmailEmsg.Text = "لم يتم إدخال البريد الإلكتروني ";
                generalEmsg.Text = "الرجاء تعبئة جميع الحقول";

            }
            else if (pass.Length < 1)
            {
                logInPasswordEmsg.Text = "لم يتم إدخال كلمة المرور";
                generalEmsg.Text = "الرجاء تعبئة جميع الحقول";
            }
            else
            {
                Session["id"] = null;

                string str = getConstring();
                con = new SqlConnection(str);
                con.Open();


                SqlDataAdapter sda = new SqlDataAdapter("select * from OurUser where Email='" + email.Trim() + "'" , con);
                SqlDataAdapter sda2 = new SqlDataAdapter("select * from OurAdmin where Email='" + email.Trim() + "'", con);
                DataTable dtU = new DataTable();
                sda.Fill(dtU);
                DataTable dtA = new DataTable();
                sda2.Fill(dtA);
                //MessageBox.Show(dtA.Rows.ToString());
                //generalEmsg.Text = dtA.Rows.ToString();
                if (dtU.Rows.Count == 1)
                {
                    string userEmail = (string)dtU.Rows[0].ItemArray[4];
                    string username = (string)dtU.Rows[0].ItemArray[1] + " " + (string)dtU.Rows[0].ItemArray[2];
                    string userpassword = (string)dtU.Rows[0].ItemArray[3];
                    if (userEmail == email && userpassword == pass)
                    {
                        Session["id"] = dtU.Rows[0].ItemArray[0];
                        Session["name"] = username;
                        Session["Type"] = "User";
                        Response.Redirect("Home.aspx");

                    }
                    else
                    {
                        logInPasswordEmsg.Text = "كلمة المرور غير صحيحة";

                    }
                }
                else if (dtA.Rows.Count == 1)
                {
                    string AdminEmail = (string)dtA.Rows[0].ItemArray[4];
                    string Adminname = (string)dtA.Rows[0].ItemArray[1] + " " + (string)dtA.Rows[0].ItemArray[2];
                    string Adminpassword = (string)dtA.Rows[0].ItemArray[3];
                    if (AdminEmail == email && Adminpassword == pass)
                    {
                        Session["id"] = dtA.Rows[0].ItemArray[0];
                        Session["name"] = Adminname;
                        Session["Type"] = "Admin";
                        Response.Redirect("Home.aspx");

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
        }

        protected void Registration_Click(object sender, EventArgs e)
        {
            string Fname = fNameInputPlace.Value;
            string Lname = lNameInputPlace.Value;
            string email = email1.Value;
            string pass = password1.Value;
            string pass2 = confPasswordInputPlace.Value;
            string universityid = "";
            if (stuDrYesRadioButton.Checked == true)
            {
                universityid = idNumber.Value;
            }
            signUpFnameEmsg.Text = "";
            signUpLnameEmsg.Text = "";
            signUpEmailEmsg.Text = "";
            signUpPasswordEmsg.Text = "";
            signUpConfPasswordEmsg.Text = "";
            generalErorrMsg.Text = "";
            if (Fname.Length < 1)
            {
                signUpFnameEmsg.Text = "لم يتم إدخال الاسم الأول";
                generalErorrMsg.Text = "الرجاء تعبئة جميع الحقول";
            }
            else if (Lname.Length < 1)
            {
                signUpLnameEmsg.Text = "لم يتم إدخال الاسم الاخير";
                generalErorrMsg.Text = "الرجاء تعبئة جميع الحقول";
            }
            else if (email.Length < 1)
            {
                signUpEmailEmsg.Text = "لم يتم إدخال البريد الإلكتروني";
                generalErorrMsg.Text = "الرجاء تعبئة جميع الحقول";
            }
            else if (pass.Length < 1)
            {
                signUpPasswordEmsg.Text = "لم يتم إدخال كلمة المرور";
                generalErorrMsg.Text = "الرجاء تعبئة جميع الحقول";
            }
            else if (pass2.Length < 1)
            {
                signUpConfPasswordEmsg.Text = "لم يتم تأكيد كلمة المرور";
                generalErorrMsg.Text = "الرجاء تعبئة جميع الحقول";
            }
            else if(stuDrYesRadioButton.Checked == true && universityid.Length < 1)
            {
                generalErorrMsg.Text = "الرجاء تعبئة جميع الحقول";
            }
            else
            {
                
                string str = getConstring();
                con = new SqlConnection(str);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("select * from OurUser where Email='" + email.Trim() + "'", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                SqlCommand cmd2 = new SqlCommand("INSERT INTO OurUser(Fname, Lname,Password,Email,University_ID) VALUES(@FirstName, @LastName, @Pass, @Email,@uniID)", con);
                if (dt.Rows.Count == 0)
                {
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
                                        cmd2.Parameters.AddWithValue("@FirstName", Fname);
                                        cmd2.Parameters.AddWithValue("@LastName", Lname);
                                        cmd2.Parameters.AddWithValue("@Pass", pass);
                                        cmd2.Parameters.AddWithValue("@Email", email);
                                        cmd2.Parameters.AddWithValue("uniID", universityid);
                                        cmd2.ExecuteNonQuery();
                                        generalErorrMsg.Text = "تم تسجيلك بنجاح";
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
}