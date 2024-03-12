<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Customer Management.aspx.cs" Inherits="Salon_rating.Customer_Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            let table = new DataTable('#<%= GridView1.ClientID %>',
            {
                // Define the number of columns based on your GridView
                columns: [
                    { data: "User ID" },
                    { data: "Full Name" },
                    { data: "Account Status" },
                      { data: "Date Of Birth" },
                     { data: "Email ID" },
                    { data: "City" }
                    

                ]
            });
        });
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">

            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                     <i class="fa-solid fa-user-tie fa-2xl"></i>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Customer Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr/>
                            </div>
                        </div>


                        <div class="row">

                            <div class="col-md-3">
                                
                                <label class="form-label">User ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox12" 
                                        runat="server" placeholder="User ID"></asp:TextBox>
                                      <asp:LinkButton Class="btn btn-primary " ID="LinkButton3" 
                                          runat="server" OnClick="LinkButton3_Click">
                                         <i class="fa-solid fa-check fa-sm"></i>
                                     </asp:LinkButton>
                                        </div>
                                    
                                </div>
                            </div>



                            <div class="col-md-4">
                                
                                 <label class="form-label">Full Names</label>
                                    <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox> 
                                </div>
                                </div>

                            <div class="col-md-5">
                                 <label class="form-label">Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                      <asp:TextBox Class="form-control me-1" ID="TextBox3" 
                                        runat="server" placeholder="Status" ReadOnly="True"></asp:TextBox>  
                                   
                                     <asp:LinkButton Class="btn btn-success me-1" ID="Button2" 
                                          runat="server" OnClick="Button2_Click">
                                         <i class="fa-solid fa-check fa-sm "></i>
                                     </asp:LinkButton>
                                        
                                    <asp:LinkButton Class="btn btn-warning me-1" ID="LinkButton1" 
                                          runat="server" OnClick="LinkButton1_Click"><i class="fa-solid fa-pause fa-sm"></i>
                                     </asp:LinkButton>  

                                    <asp:LinkButton Class="btn btn-danger mr-1" ID="LinkButton2" 
                                          runat="server" OnClick="LinkButton2_Click"><i class="fa-regular fa-circle fa-sm"></i>
                                     </asp:LinkButton> 
                                        

                                        </div>
                                </div>
                            </div>
                        </div>


                         <div class="row">


                        <div class="col-md-3">
                                 <label class="form-label">Date Of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                        runat="server" placeholder="DOB" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>



                            <div class="col-md-4">
                                
                                <label class="form-label">Contact No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" 
                                        runat="server" placeholder="Contact No" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-5">
                                 <label class="form-label">Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox6" 
                                        runat="server" placeholder="Email ID" TextMode="Email" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                          <div class="row">
                            <div class="col-md-4">
                                
                                <label class="form-label">Country</label>
                                <div class="form-group">
                                     <asp:TextBox Class="form-control" ID="TextBox4" 
                                        runat="server" placeholder="Country"  ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                 <label class="form-label">City</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox7" 
                                        runat="server" placeholder="City" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                              <div class="col-md-4">
                                 <label class="form-label">Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" 
                                        runat="server" placeholder="Pin Code" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <br />
                        <br />
                        <div class="row">
                            <div class="col-8 mx-auto">
                               
                                  <div class="form-group">
                                      <center>
                                         <asp:Button Class="btn btn-danger btn-block btn-lg " ID="Button5" 
                                          runat="server" Text="Delete User Permanently" OnClick="Button5_Click" />
                                       </center>
                                  </div>
                                     <br />
                                  
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
                            <div class="col">
                                <center>
                                    <h4>Customer List</h4>
                                </center>
                            </div>
                        </div>

                        


                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:De Style DBConnectionString %>" SelectCommand="SELECT * FROM [Customer_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="User ID" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="User ID" HeaderText="User ID" ReadOnly="True" SortExpression="User ID" />
                                        <asp:BoundField DataField="Full Name" HeaderText="Full Name" SortExpression="Full Name" />
                                        <asp:BoundField DataField="Account Status" HeaderText="Account Status" SortExpression="Account Status" />
                                        <asp:BoundField DataField="Date Of Birth" HeaderText="Date Of Birth" SortExpression="Date Of Birth" />
                                        <asp:BoundField DataField="Email ID" HeaderText="Email ID" SortExpression="Email ID" />
                                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>
                
   
        </div>
    </div>  

    </div>
</asp:Content>
