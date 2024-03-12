<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="User Login.aspx.cs" Inherits="Salon_rating.User_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/UserLogin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col"  style="text-align: center;">
                                
                                     <i class="fa-solid fa-user-tie fa-2xl"></i>
                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col" style="text-align: center;">
                                
                                    <h3>Member Login</h3>
                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label class="form-label">User ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="User ID"></asp:TextBox>
                                </div>

                                <label class="form-label">Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                        runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <br />

                                  <div class="form-group"  style="text-align: center;">
                                      
                                         <asp:Button CssClass="btn btn-success btn-block btn-lg " ID="Button1" 
                                          runat="server" Text="Log in" OnClick="Button1_Click" />
                                       
                                  </div>
                                     <br />
                                  <div class="form-group" style="text-align: center;">
                                      
                                     <a href="User%20Sign%20Up.aspx"><input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="Sign Up" /></a>
                                          
                                  </div>
                                 </div>

                              </div>
                          </div>

                </div>

                <a href="Home%20Page.aspx" style="text-decoration: none;">~~~Back To Home</a><br /><br />
                
            </div>
        </div>
    </div>  



</asp:Content>

