<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="User Sign Up.aspx.cs" Inherits="Salon_rating.User_Sign_Up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/User%20Sign%20Up.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col" style="text-align: center;">
                                
                                     <i class="fa-solid fa-user-tie fa-2xl"></i>
                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col" style="text-align: center;">
                                
                                    <h4>Member Sign Up</h4>
                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr/>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                
                                <label class="form-label">Full Names</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" 
                                        runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                 <label class="form-label">Date Of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="DOB" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                         <div class="row">
                            <div class="col-md-6">
                                
                                <label class="form-label">Contact No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                        runat="server" placeholder="Contact No"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                 <label class="form-label">Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox4" 
                                        runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                          <div class="row">
                            <div class="col-md-4">
                                
                                <label class="form-label">Country</label>
                                <div class="form-group">
                                     <asp:TextBox Class="form-control" ID="TextBox10" 
                                        runat="server" placeholder="Country" ></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                 <label class="form-label">City</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox6" 
                                        runat="server" placeholder="City" ></asp:TextBox>
                                </div>
                            </div>

                              <div class="col-md-4">
                                 <label class="form-label">Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" 
                                        runat="server" placeholder="Pin Code" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col">
                                
                                <label class="form-label">Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" 
                                        runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>   
                        </div>

                        <br />
                        <br />

                         <div class="row">
                             
                                 <div class="col">
                                     <center>
                                       <span class="badge text-bg-success">Login Credentials</span>
                                  </center>
                                 </div>
                                 

                              </div>
                        <br />
                        




                        
                          <div class="row">
                            <div class="col-md-6">
                                
                                <label class="form-label">User ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" 
                                        runat="server" placeholder="User ID"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                 <label class="form-label">Password</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox9" 
                                        runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>



                        <br />
                        




                        <div class="row">
                            <div class="col">
                               
                                  <div class="form-group" style="text-align: center;">
                                      
                                         <asp:Button CssClass="btn btn-success btn-block btn-lg " ID="Button1" 
                                          runat="server" Text="Sign Up" OnClick="Button1_Click" />
                                      
                                  </div>
                                     <br />
                                  
                                 </div>

                              </div>
                          </div>

                </div>

                <a href="Home%20Page.aspx" style="text-decoration: none;">~~~Back To Home</a><br /><br />
                
            </div>
        </div>
    </div>  

</asp:Content>
