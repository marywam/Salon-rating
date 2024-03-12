using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Salon_rating
{
    public partial class Salon_Owner_Login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)

        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from [Owner _tbl] where [Salon Owner ID]  =  @SalonOwnerID AND [Password] = @Password", con);
                cmd.Parameters.AddWithValue("@SalonOwnerID", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())

                    {

                        // Accessing image bytes from the database
                        byte[] imageData = (byte[])dr["Image"];
                        // Converting bytes to base64 string
                        string base64String = Convert.ToBase64String(imageData);

                        // Response.Write("<script>alert('Successful');</script>");

                        //Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "');</script>");
                        Session["username"] = dr.GetValue(0).ToString();
                        Session["Full Name"] = dr.GetValue(2).ToString();
                        
                        Session["role"] = "admin";

                        // Setting session variable for image
                        Session["ImageBase64"] = base64String;

                    }
                    Response.Redirect("Home Page.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }




           
        }
    }
}