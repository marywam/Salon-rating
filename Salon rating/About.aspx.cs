using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Salon_rating
{
    public partial class About : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (!ValidateFields())
            {
                Response.Write("<script>alert('Fill all the fields');</script>");
            }
            
            else
            {
                // Proceed with the sign-up process
                connectWithUs();
                Response.Write("<script>alert('Message received successful');</script>");
            }







            void connectWithUs()
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }





                    // Store customer details in the Customer_tbl table
                    SqlCommand cmd = new SqlCommand("INSERT INTO [Contact_table]([Your_Name], [Email_address],[Phone_Number], [Message]) values(@Your_Name, @Email_address,@Phone_Number, @Message)", con);

                    cmd.Parameters.AddWithValue("@Your_Name", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email_address", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@Phone_Number", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@Message", TextBox4.Text.Trim());




                    cmd.ExecuteNonQuery();
                    con.Close();

                    // Display success message
                    Response.Write("<script>alert('Message sent successfully!');</script>");

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }

            bool ValidateFields()
            {
                // Check if any of the required fields is empty
                if (string.IsNullOrWhiteSpace(TextBox1.Text) || // Your Name
                    string.IsNullOrWhiteSpace(TextBox2.Text) || // Email Address
                    string.IsNullOrWhiteSpace(TextBox3.Text) || // Phone Number
                    string.IsNullOrWhiteSpace(TextBox4.Text)) // Message
                   
                {
                    // If any field is empty, display an error message
                    Response.Write("<script>alert('Please fill in all the fields.');</script>");
                    return false;
                }

                // If all fields are filled, return true
                return true;
            }



        }
    }
}