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
    public partial class Home_Page : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadReviews();
            }
        }

        protected void LoadReviews()
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT Star_rating, Comment FROM Rating_tbl", con))
                {
                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while(reader.Read())
                        {
                            //logic to create and add the review elements

                            //new div for each review
                            Panel reviewDiv = new Panel();
                            reviewDiv.CssClass = "review";

                            //Create a label for the rating
                            Label ratingLabel = new Label();
                            ratingLabel.CssClass = "rating";
                            ratingLabel.Text = "Star_rating" + reader["Star_rating"].ToString() + "Star(s)";
                            reviewDiv.Controls.Add(ratingLabel);

                            //Create a paragraph for comment
                            Literal commentParagraph = new Literal();
                            commentParagraph.Text = "<p class='comment'> " + HttpUtility.HtmlEncode(reader["Comment"].ToString()) + "<p>";
                            reviewDiv.Controls.Add(commentParagraph);

                            //Add the div to the container on jthe page
                            //reviewsPanel.Controls.Add(reviewDiv);

                        }
                    }
                }
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}