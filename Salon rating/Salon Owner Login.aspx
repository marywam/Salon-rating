<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Salon Owner Login.aspx.cs" Inherits="Salon_rating.Salon_Owner_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Salon%20Owner.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col" style="text-align: center;">
                                
                                     <i class="fa-solid fa-chalkboard-user fa-2xl"></i>
                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col" style="text-align: center;">
                                
                                    <h3>Salon Owner Login</h3>
                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                
                                <div class="form-group">
                                    <label class="form-label" for="<%= TextBox1.ClientID %>">Salon Owner ID</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1"  
                                        runat="server" placeholder="Salon Owner ID"></asp:TextBox>
                                </div>

                                
                                <div class="form-group">
                                    <label class="form-label" for="<%= TextBox2.ClientID %>">Password</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                        runat="server" placeholder="Password" TextMode="Password" AutoPostBack="False"></asp:TextBox>
                                </div>
                                <br />

                                  <div class="form-group"  style="text-align: center;">
                                      
                                         <asp:Button CssClass="btn btn-success btn-block btn-lg " ID="Button1" 
                                          runat="server" Text="Log in" OnClick="Button1_Click" />
                                       
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
