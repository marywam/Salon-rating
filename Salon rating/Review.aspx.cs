using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Salon_rating
{
    public partial class Review : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                // Get the selected rating value
                string selectedRating = Request.Form["rating"];

                // Get the comment
                string comment = TextBox1.Text;

               

                // Get the user ID
                string userId = GetUserId();

                // Encode the comment to handle special characters
                string encodedComment = HttpUtility.HtmlEncode(comment);

                // Save the rating and comment to the database
                SaveRatingAndCommentToDatabase(selectedRating, encodedComment, userId);

                // Rebind the GridView to reflect the updated data
                GridView2.DataBind();

                // Save the selected rating to the hidden field
                SelectedRatingHiddenField.Value = selectedRating;

            }
            catch (Exception ex)
            {
                // Handle any exceptions
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

        private void SaveRatingAndCommentToDatabase(string selectedRating, string encodedComment, string userId)
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
                string query = "INSERT INTO [Star_table]([Star_icon], [Expl_Comm], [User ID]) VALUES (@Star_icon, @Expl_Comm, @UserID)";

                // Create a SqlCommand object with the query and connection
                SqlCommand cmd = new SqlCommand(query, con);

               

                // Add parameters to the SqlCommand object
                cmd.Parameters.AddWithValue("@Star_icon", ratingBytes);
                cmd.Parameters.AddWithValue("@Expl_Comm", encodedComment);
                cmd.Parameters.AddWithValue("@UserID", userId);


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


        protected string GetStarIcons(object starIcon)
        {
            StringBuilder htmlBuilder = new StringBuilder();
            if (starIcon != null && !string.IsNullOrEmpty(starIcon.ToString()))
            {
                int selectedRating = 0;
                int.TryParse(starIcon.ToString(), out selectedRating);
                for (int i = 1; i <= 5; i++)
                {
                    if (i <= selectedRating)
                    {
                        htmlBuilder.Append("<i class='fas fa-star selected'></i>");
                    }
                    else
                    {
                        htmlBuilder.Append("<i class='far fa-star'></i>");
                    }
                }
            }
            return htmlBuilder.ToString();
        }
        protected string GetUserId()
        {
            string userId = null;
            try
            {
                // Check if the user ID is stored in the session
                if (Session["username"] != null)
                {
                    userId = Session["username"].ToString();
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
            return userId;
        }
    }
   

    
}