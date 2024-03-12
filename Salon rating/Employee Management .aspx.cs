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
    public partial class Employee_Management : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //add button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfEmployeeExist())
            {
                Response.Write("<script>alert('Author with ID already exist.You cannot add another Author with the same Author ID');</script>");

            }
            else
            {
                AddNewEmployee();
            }
        }

        //Update button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfEmployeeExist())
            {
                updateEmployee();
               
            }
            else
            {
                Response.Write("<script>alert('Employee with ID already exist.You cannot add another Employee with the same Employee ID');</script>");

            }
        }
        //Delete link button
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfEmployeeExist())
            {
                deleteEmployee();

            }
            else
            {
                Response.Write("<script>alert('Employee with ID already exist.You cannot add another Employee with the same Employee ID');</script>");

            }
        }

        //Go link button
        protected void Button2_Click(object sender, EventArgs e)
        {
            getEmployeeByID();
        }

        //user defined function
        void getEmployeeByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Employee_tbl where  [Employee ID] =  @EmployeeID", con);
                cmd.Parameters.AddWithValue("@EmployeeID", TextBox3.Text.Trim());

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox1.Text = dt.Rows[0]["Employee Name"].ToString(); // Accessing the correct column index
                    DropDownList2.SelectedValue = dt.Rows[0]["Occupation"].ToString(); // Assuming DropDownList2 has items with corresponding values
                    TextBox2.Text = dt.Rows[0]["Age"].ToString(); // Accessing the correct column index
                    DropDownList3.SelectedValue = dt.Rows[0]["Gender"].ToString(); // Assuming DropDownList3 has items with corresponding values

                }
                else
                {
                    Response.Write("<script>alert('Invalid Employee ID');</script>");
                }



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                
            }
        }
        void deleteEmployee()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE FROM [Employee_tbl] WHERE [Employee Name] = @EmployeeName AND [Occupation] = @Occupation AND [Age] = @Age AND [Gender] = @Gender AND [Employee ID] = @EmployeeID", con);

                // Assuming Employee ID is an integer in the database, parse TextBox3.Text to int
                int EmployeeID;
                if (!int.TryParse(TextBox3.Text.Trim(), out EmployeeID))
                {
                    Response.Write("<script>alert('Employee ID must be a valid integer.');</script>");
                    return;
                }

                cmd.Parameters.AddWithValue("@EmployeeID", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@EmployeeName", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Occupation", DropDownList2.Text.Trim());
                cmd.Parameters.AddWithValue("@Age", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Gender", DropDownList3.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('employee deleted successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void updateEmployee()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE [Employee_tbl] SET [Employee Name] = @EmployeeName, [Occupation] = @Occupation, [Age] = @Age, [Gender] = @Gender WHERE [Employee ID] = @EmployeeID", con);

                // Assuming Employee ID is an integer in the database, parse TextBox3.Text to int
                int EmployeeID;
                if (!int.TryParse(TextBox3.Text.Trim(), out EmployeeID))
                {
                    Response.Write("<script>alert('Employee ID must be a valid integer.');</script>");
                    return;
                }

                cmd.Parameters.AddWithValue("@EmployeeID", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@EmployeeName", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Occupation", DropDownList2.Text.Trim());
                cmd.Parameters.AddWithValue("@Age", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Gender", DropDownList3.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('employee updated successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
        void AddNewEmployee()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO [Employee_tbl]([Employee ID], [Employee Name],[Occupation], [Age], [Gender]) values(@EmployeeID, @EmployeeName,@Occupation, @Age, @Gender)", con);

                // Assuming Employee ID is an integer in the database, parse TextBox3.Text to int
                int EmployeeID;
                if (!int.TryParse(TextBox3.Text.Trim(), out EmployeeID))
                {
                    Response.Write("<script>alert('Employee ID must be a valid integer.');</script>");
                    return;
                }

                cmd.Parameters.AddWithValue("@EmployeeID", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@EmployeeName", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Occupation", DropDownList2.Text.Trim());
                cmd.Parameters.AddWithValue("@Age", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Gender", DropDownList3.Text.Trim());
               

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Employee added successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }



        bool checkIfEmployeeExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Employee_tbl where  [Employee ID] =  @EmployeeID", con);
                cmd.Parameters.AddWithValue("@EmployeeID", TextBox3.Text.Trim());

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

        void  clearForm()
        {
            TextBox3.Text = "";
             TextBox1.Text = "";
            DropDownList2.SelectedIndex = -1;
            TextBox2.Text = "";
            DropDownList3.SelectedIndex = -1 ;
        }
    }
}