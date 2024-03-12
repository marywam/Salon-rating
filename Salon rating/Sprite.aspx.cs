using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Salon_rating
{
    public partial class Sprite : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            try
            {
                // Get the selected rating value
                string selectedRating = Request.Form["rating"];

                // Get the comment
                string comment = TextBox1.Text;

                // Save the rating and comment to the database
                SaveRatingAndCommentToDatabase(selectedRating, comment);

                // Save the selected rating to the hidden field
                SelectedRatingHiddenField.Value = selectedRating;

            }

            catch (Exception ex)
            {
                // Handle any exceptions
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }

        }



        private void SaveRatingAndCommentToDatabase(string selectedRating, string comment)
        {


            // Establish a connection to the database
            SqlConnection con = new SqlConnection(strcon);

            try
            {
                // Open the database connection
                con.Open();

                // Convert the selected rating to a suitable binary format (e.g., byte array)
                byte[] ratingBytes = ConvertRatingToBytes(selectedRating);

                // Define the SQL query to insert the rating and comment into the database
                string query = "INSERT INTO Rating_tbl ([Star_rating], [Comment]) VALUES (@Star_rating, @Comment)";

                // Create a SqlCommand object with the query and connection
                SqlCommand cmd = new SqlCommand(query, con);

                // Add parameters to the SqlCommand object
                cmd.Parameters.AddWithValue("@Star_rating", ratingBytes);
                cmd.Parameters.AddWithValue("@Comment", comment);

                // Execute the SQL query
                cmd.ExecuteNonQuery();

                // Optional: You can display a success message or perform additional actions here
                Response.Write("<script>alert('Rating and comment saved successfully.');</script>");
            }
            catch (Exception ex)
            {
                // Handle any exceptions
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
            finally
            {
                // Close the database connection
                con.Close();
            }


           
        }

        private byte[] ConvertRatingToBytes(string selectedRating)
        {
            return Encoding.UTF8.GetBytes(selectedRating);
        }
    }
}