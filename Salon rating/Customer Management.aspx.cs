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
    public partial class Customer_Management : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //Go button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            getCustomerID();
        }

        //Active button
        protected void Button2_Click(object sender, EventArgs e)
        {
            UpdateCustomerStatusbyID("active");
        }

        //pending button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            UpdateCustomerStatusbyID("pending");
        }

        //deactivate button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            UpdateCustomerStatusbyID("deactivate");
        }

        //delete button
        protected void Button5_Click(object sender, EventArgs e)
        {
            deleteCustomerByID();
        }

        //user defined function
        void getCustomerID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Customer_tbl where  [User ID] =  @UserID  ", con);
                cmd.Parameters.AddWithValue("@UserID", TextBox12.Text.Trim());
                

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox1.Text = dr.GetValue(0).ToString();
                        TextBox3.Text = dr.GetValue(10).ToString();
                        TextBox2.Text = dr.GetValue(1).ToString();
                        TextBox5.Text = dr.GetValue(2).ToString();
                        TextBox6.Text = dr.GetValue(3).ToString();
                        TextBox4.Text = dr.GetValue(4).ToString();
                        TextBox7.Text = dr.GetValue(5).ToString();
                        TextBox8.Text = dr.GetValue(6).ToString();




                    }
                    
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

        void UpdateCustomerStatusbyID(string status)
        {
            if (checkIfCustomerExist())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("UPDATE Customer_tbl SET [Account Status] = @Status WHERE [User ID] = @UserID", con);
                    cmd.Parameters.AddWithValue("@Status", status);
                    cmd.Parameters.AddWithValue("@UserID", TextBox12.Text.Trim());


                    cmd.ExecuteNonQuery();
                    GridView1.DataBind();
                    con.Close();

                    Response.Write("<script>alert('Customer Status Updated');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Customer ID');</script>");
            }    
        }

        void deleteCustomerByID()
        {
            if (checkIfCustomerExist())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE FROM [Customer_tbl] WHERE    [User ID] =  @UserID  ", con);
                    cmd.Parameters.AddWithValue("@UserID", TextBox12.Text.Trim());


                    cmd.ExecuteNonQuery();
                    con.Close();
                   Response.Write("<script>alert('Customer deleted successfully');</script>");
                    clearForm();
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
  
            }
            else
            {
                Response.Write("<script>alert('Invalid customer ID');</script>");
            }
            
                
            
        }


        bool checkIfCustomerExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Customer_tbl where  [User ID] =  @UserID  ", con);
                cmd.Parameters.AddWithValue("@UserID", TextBox12.Text.Trim());

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



        void clearForm()
            {
                TextBox1.Text = "";
                TextBox3.Text = "";
                TextBox2.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox4.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";

                
            }
        
    }
}