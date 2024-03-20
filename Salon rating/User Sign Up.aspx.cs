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
    public partial class User_Sign_Up : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Sign Up button click event
        protected void Button1_Click(object sender, EventArgs e)
        {




            // Check if all fields are filled
            if (!ValidateFields())
            {
                Response.Write("<script>alert('Fill all the fields');</script>");
            }
            else if (checkCustomerExist())
            {
                Response.Write("<script>alert('Member Already Exist with this User ID. Try another ID');</script>");
            }
            else
            {
                // Proceed with the sign-up process
                signUpNewCustomer();
                Response.Write("<script>alert('You have successfully signed up, You can now LogIn');</script>");
            }
            
            
        }

        //user defined method

        bool checkCustomerExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from [Customer_tbl] where  [User ID] =  @UserID", con);
                cmd.Parameters.AddWithValue("@UserID", TextBox8.Text.Trim());

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

               
               
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            } 

        }
        void signUpNewCustomer()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

               



                // Store customer details in the Customer_tbl table
                SqlCommand cmd = new SqlCommand("INSERT INTO [Customer_tbl]([Full Name], [Date Of Birth],[Contact No], [Email ID], [Country],[City],[Pin Code], [Full Address], [User ID], [Password],[Account Status]) values(@FullName, @DateOfBirth,@ContactNo, @EmailID, @Country,@City,@PinCode, @FullAddress, @UserID, @Password,@AccountStatus)", con);

                cmd.Parameters.AddWithValue("@FullName", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@DateOfBirth", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@ContactNo", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@EmailID", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Country", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@City", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@PinCode", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@FullAddress", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@UserID", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@AccountStatus", "pending");

                // Execute the command to insert customer details and retrieve the newly generated user ID
                int userId = Convert.ToInt32(cmd.ExecuteScalar());

                // Store the User ID in the Star_table table
                SqlCommand cmdStar = new SqlCommand("INSERT INTO [Star_table]([User ID]) VALUES (@UserID)", con);
                cmdStar.Parameters.AddWithValue("@UserID", userId);
                cmdStar.ExecuteNonQuery();
                con.Close();
                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }


        private bool ValidateFields()
        {
            // Check if any of the required fields is empty
            if (string.IsNullOrWhiteSpace(TextBox3.Text) || // Full Name
                string.IsNullOrWhiteSpace(TextBox1.Text) || // Date Of Birth
                string.IsNullOrWhiteSpace(TextBox2.Text) || // Contact No
                string.IsNullOrWhiteSpace(TextBox4.Text) || // Email ID
                string.IsNullOrWhiteSpace(TextBox10.Text) || // Country
                string.IsNullOrWhiteSpace(TextBox6.Text) || // City
                string.IsNullOrWhiteSpace(TextBox7.Text) || // Pin Code
                string.IsNullOrWhiteSpace(TextBox5.Text) || // Full Address
                string.IsNullOrWhiteSpace(TextBox8.Text) || // User ID
                string.IsNullOrWhiteSpace(TextBox9.Text))   // Password
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