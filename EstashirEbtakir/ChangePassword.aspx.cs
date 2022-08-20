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
            string pass = Password1.Value;
            string pass2 = Password2.Value;

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
                                    string type = (string)Session["Type"];
                                    if (type == "User")
                                    {
                                        SqlCommand cmd = new SqlCommand("UPDATE OurUser SET Password='" + pass + "' WHERE User_ID='" + Session["id"] + "'", con);
                                        cmd.ExecuteNonQuery();
                                    }
                                    else
                                    {
                                        SqlCommand cmd = new SqlCommand("UPDATE OurAdmin SET Password='" + pass + "' WHERE Admin_ID='" + Session["id"] + "'", con);
                                        cmd.ExecuteNonQuery();
                                    }
                                    
                                    Session.Clear();
                                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                                    "Swal.fire({title: 'تم تغيير كلمة المرور بنجاح',icon: 'success', confirmButtonText: 'موافق'}).then(function() { window.location = 'SignUpLogInPage.aspx'})", true);

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
                    else
                    {
                        generalEmsg.Text = "كلمة المرور يجب أن تحتوي على 8 أحرف على الأقل";
                    }
                }
                else
                {
                    generalEmsg.Text = "كلمتين المرور غير متطابقتين";
                }
                con.Close();
            }
        } 
    }
}