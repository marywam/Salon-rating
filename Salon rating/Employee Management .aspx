<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Employee Management .aspx.cs" Inherits="Salon_rating.Employee_Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/EmployeeManagement.css" rel="stylesheet" />
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            let table = new DataTable('#<%= GridView1.ClientID %>',
            {
                // Define the number of columns based on your GridView
                columns: [
                    { data: "Employee ID" },
                    { data: "Employee Name" },
                    { data: "Occupation" },
                    { data: "Age" },
                    { data: "Gender" }
                ]
            });
        });
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-5 ">

                <div class="card">
                    <div class="card-body">

                          <div class="row">
                            <div class="col" style="text-align: center;">
                                
                                    <h4>Employee Details</h4>
                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col" style="text-align: center;">
                                
                                    <i class="fa-solid fa-user-check fa-2xl"></i>
                                
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr/>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                
                                <label class="form-label">Employee ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" 
                                        runat="server" placeholder="Employee ID"></asp:TextBox>
                                     <asp:Button Class="btn btn-primary btn-lg " ID="Button2" 
                                          runat="server" Text="Go" OnClick="Button2_Click" />
                                        </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                 <label class="form-label">Employee Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="Employee Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                
                                <label class="form-label">Occupation</label>
                                <div class="form-group">
                                    <asp:DropDownList Class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                         <asp:ListItem Text="Hair Dresser" Value="Hair Dresser" />
                                         <asp:ListItem Text="Manicurist" Value="Manicurist" />
                                         <asp:ListItem Text="Massage Therapist" Value="Massage Therapist" />
                                         <asp:ListItem Text="lash Technician" Value="lash Technician" />
                                        
                                    </asp:DropDownList>
                                </div>
                            </div>
                            
                        </div>


                         <div class="row">
                            <div class="col-md-6">
                                
                                <label class="form-label">Age</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                        runat="server" placeholder="Age" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                 <label class="form-label">Gender</label>
                                <div class="form-group">
                                    <asp:DropDownList Class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                         <asp:ListItem Text="Female" Value="Female" />
                                         <asp:ListItem Text="Male" Value="Male" />
                                        
                                        
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>


                       


                      
                        




                        
                         
                          

                           



                        <br />
                        




                        <div class="row">
                            <div class="col-4 ">
                                        <asp:Button ID="Button1"   Class="btn btn-lg btn-success" 
                                            runat ="server" Text="Add" OnClick="Button1_Click"></asp:Button>
                                 </div>

                            <div class="col-4 ">
                                        <asp:Button ID="Button3"   Class="btn btn-lg btn-warning" 
                                            runat ="server" Text="Update" OnClick="Button3_Click"></asp:Button>
                                 </div>

                            <div class="col-4 ">
                                        <asp:Button ID="Button4"   Class="btn btn-lg btn-danger" 
                                            runat ="server" Text="Delete" OnClick="Button4_Click"></asp:Button>
                                 </div>

                              </div>
                          </div>

                </div>

                <a href="Home%20Page.aspx" style="text-decoration: none;">~~~Back To Home</a><br /><br />
                
            </div>


            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col" style="text-align: center;">
                                
                                    <h4>Employee List</h4>
                                
                            </div>
                        </div>

                        


                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:De Style DBConnectionString %>" SelectCommand="SELECT * FROM [Employee_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Employee ID" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="Employee ID" HeaderText="Employee ID" ReadOnly="True" SortExpression="Employee ID" />
                                        <asp:BoundField DataField="Employee Name" HeaderText="Employee Name" SortExpression="Employee Name" />
                                        <asp:BoundField DataField="Occupation" HeaderText="Occupation" SortExpression="Occupation" />
                                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                        
                       

                    </div>
                </div>
                
   
        </div>
    </div>  
        </div>
    <br />
    <br />

</asp:Content>
