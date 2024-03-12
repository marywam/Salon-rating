using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Salon_rating
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                if (Session["role"].Equals(""))
                {
                    LinkButton4.Visible = true;  //user login link button
                    LinkButton1.Visible = true;   // user sign up link button

                    LinkButton2.Visible = false;  //LogOut link button
                    ImageButton1.Visible = false; // Set the image URL
                    LinkButton3.Visible = false;  //Hello User button 


                    LinkButton6.Visible = true;  //salon owner login buttton
                    LinkButton11.Visible = false; //Employee Management
                    LinkButton12.Visible = false; //Customer Management


                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton4.Visible = false;  //user login link button
                    LinkButton1.Visible = false;   // user sign up link button

                    LinkButton2.Visible = true;  //LogOut link button
                    ImageButton1.Visible = false; // Set the image URL
                    LinkButton3.Visible = true;  //Hello User button  
                    LinkButton3.Text = "Hello " + Session["username"].ToString();

                    LinkButton6.Visible = true;  //salon owner login buttton
                    LinkButton11.Visible = false; //Employee Management
                    LinkButton12.Visible = false; //Customer Management
                }

                else if (Session["role"].Equals("admin"))
                {
                    LinkButton4.Visible = false;  //user login link button
                    LinkButton1.Visible = false;   // user sign up link button

                    LinkButton2.Visible = true;  //LogOut link button
                    //ImageButton1.Visible = true;
                   // ImageButton1.ImageUrl = "images/avatar_1.jpg";
                    LinkButton3.Visible = true;  //Hello User button  
                    LinkButton3.Text = "HelloAdmin" + Session["Full Name"].ToString();

                    // Set the image
                    string base64String = Session["ImageBase64"] as string;
                    if (!string.IsNullOrEmpty(base64String))
                    {
                        ImageButton1.Visible = true; // Assuming Image1 is the ID of your image control
                        ImageButton1.ImageUrl = "data:image/jpeg;base64," + base64String;
                    }
                    else
                    {
                        // If no image is available, you can show a default image or leave it empty
                        // Image1.Visible = false; // Optionally hide the image control
                        // Image1.ImageUrl = "path_to_default_image.jpg"; // Optionally set a default image
                    }

                    LinkButton6.Visible = false;  //salon owner login buttton
                    LinkButton11.Visible = true; //Employee Management
                    LinkButton12.Visible = true; //Customer Management
                }
                


            }
            catch (Exception ex)
            {

            }
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("User Login.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Salon Owner Login.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employee Management .aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer Management.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("User Sign Up.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["Full Name"] = "";
            Session["Image"] = "";
            Session["role"] = "";
            Session["status"] = "";


            LinkButton4.Visible = true;  //user login link button
            LinkButton1.Visible = true;   // user sign up link button

            LinkButton2.Visible = false;  //LogOut link button
            ImageButton1.Visible = false;
            LinkButton3.Visible = false;  //Hello User button  

            LinkButton6.Visible = true;  //salon owner login buttton
            LinkButton11.Visible = false; //Employee Management
            LinkButton12.Visible = false; //Customer Management

            Response.Redirect("Home Page.aspx");

        }
    }
}