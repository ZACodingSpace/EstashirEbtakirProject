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
using System.Text;
using System.Text.RegularExpressions;
using System.Windows;

namespace EstashirEbtakir
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Remove("error");
            }
        }
        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            return constr;
        }
        protected void ChangePass_Click(object sender, EventArgs e)
        {
            string pass = newPassword.Value;
            string pass2 = confirmPassword.Value;

            generalEmsg.Text = "";
            npassEmsg.Text = "";
            cpassEmsg.Text = "";

            if (pass.Length < 1)
            {
                npassEmsg.Text = "لم يتم إدخال كلمة المرور الجديدة";
                generalEmsg.Text = "الرجاء تعبئة جميع الحقول";
            }
            else if (pass2.Length < 1)
            {
                cpassEmsg.Text = "لم يتم تأكيد كلمة المرور";
                generalEmsg.Text = "الرجاء تعبئة جميع الحقول";
            }
            else
            {
                string str = getConstring();
                con = new SqlConnection(str);
                con.Open();

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
                                    SqlCommand cmd = new SqlCommand("UPDATE OurUser SET Password=" + pass + " WHERE User_ID='" + Session["id"] + "'", con);
                                    cmd.ExecuteNonQuery();

                                    MessageBox.Show("تم تغيير كلمة المرور بنجاح");
                                    Session.Clear();
                                    Response.Redirect("SignUpLogInPage.aspx");
                                }
                                else
                                {
                                    npassEmsg.Text = "كلمة المرور يجب أن تحتوي على رموز";
                                }
                            }
                            else
                            {
                                npassEmsg.Text = "كلمة المرور يجب أن تحتوي على أحرف صغيرة وكبيرة";
                            }
                        }
                        else
                        {
                            npassEmsg.Text = "كلمة المرور يجب أن تحتوي على أرقام";
                        }
                        
                    }
                }
                con.Close();
            }
        } 
    }
}