using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class RegisterForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string fullName = TextBox1.Text;
                string email = TextBox2.Text;
                string phone = TextBox3.Text;
                string username = TextBox4.Text;
                string password = TextBox5.Text;
                string confirmPassword = TextBox6.Text;        

                if (password == confirmPassword)
                {
                    string constr = System.Configuration.ConfigurationManager.ConnectionStrings["UserDBConnection"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        string query = "INSERT INTO Users (FullName,Email,Phone,Username,NPassword) VALUES (@FullName,@Email,@Phone,@Username,@NPassword)";
                        SqlCommand cmd = new SqlCommand(query, con);
                        cmd.Parameters.AddWithValue("@FullName", fullName);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Phone", phone);
                        cmd.Parameters.AddWithValue("@Username", username);
                        cmd.Parameters.AddWithValue("@NPassword", password);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Redirect("loginform.aspx? msg=Registration Successful");
                        
                    }
                }
                else
                {
                    
                    Response.Write("<script>alert('Passwords do not match');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please fix the validation errors.');</script>");
            }
        }
    }
}