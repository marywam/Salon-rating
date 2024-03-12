<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="User Profile.aspx.cs" Inherits="Salon_rating.User_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 ">

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
                                    <h4>Your Profile</h4>
                                    <span>Account Status - </span>
                                    <asp:Label  class="badge text-bg-info"  ID="Label1" runat="server" Text="Your status"></asp:Label>
                                </center>
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
                                    <asp:DropDownList Class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                         <asp:ListItem Text="Kenya" Value="Kenya" />
                                         <asp:ListItem Text="Somali" Value="Somali" />
                                         <asp:ListItem Text="Madagascar" Value="Madagascar" />
                                         <asp:ListItem Text="Malawi" Value="Malawi" />
                                         <asp:ListItem Text="Burundi" Value="Burundi" />
                                         <asp:ListItem Text="Ethopia" Value="Ethopia" />
                                         <asp:ListItem Text="Uganda" Value="Uganda" />
                                         <asp:ListItem Text="South Sudan" Value="South Sudan" />
                                         <asp:ListItem Text="Sudan" Value="Sudan" />
                                         <asp:ListItem Text="Tanzania" Value="Tanzania" />
                                         <asp:ListItem Text="Mozambique" Value="Mozambique" />
                                         <asp:ListItem Text="Comoros" Value="Comoros" />
                                         <asp:ListItem Text="Seychelles" Value="Seychelles" />
                                    </asp:DropDownList>
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
                                        runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                 <label class="form-label"> Old Password</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox9" 
                                        runat="server" placeholder="Old Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                              <div class="col-md-6">
                                 <label class="form-label">New Password</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox10" 
                                        runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>



                        <br />
                        




                        <div class="row">
                            <div class="col-8 ">
                               
                                  <div class="form-group">
                                      <center>
                                         <asp:Button Class="btn btn-primary btn-block btn-lg " ID="Button1" 
                                          runat="server" Text="Update" />
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
                
    <div class="review-block">
        <asp:Repeater ID="ratingRepeater" runat="server">
            <ItemTemplate>
                <div class="row">
                    <div class="col-sm-3">
                        <div class="review-block-img">

                             <i class="fa-solid fa-user-tie fa-2xl"></i>
                        </div>
                        <div class="review-block-name"><a href="#"><%# Eval("User ID") %></a></div>
                        <div class="review-block-date"><%# Eval("Date") %></div>
                    </div>
                    <div class="col-sm-9">
                        <div class="review-block-rate">
                            <asp:Repeater ID="starRepeater" runat="server" DataSource='<%# Eval("Stars") %>'>
                                <ItemTemplate>
                                    <button type="button" class='<%# (Convert.ToInt32(Container.DataItem) > 0) ? "btn btn-success btn-xs" : "btn btn-default btn-xs" %>' aria-label="Left Align">
                                        <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                    </button>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div class="review-block-title"><%# Eval("Title") %></div>
                        <div class="review-block-description"><%# Eval("Description") %></div>
                    </div>
                </div>
                <hr />
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
        </div>
    </div>  
</asp:Content>
