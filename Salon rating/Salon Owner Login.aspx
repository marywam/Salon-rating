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
                                        runat="server" placeholder="Salon Owner ID" onblur="validateSalonOwnerID()" ClientIDMode="Static"></asp:TextBox>
                                     <span id="salonOwnerIDError" style="color: red;"></span>
                                </div>

                                
                                <div class="form-group">
                                    <label class="form-label" for="<%= TextBox2.ClientID %>">Password</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                        runat="server" placeholder="Password" TextMode="Password" AutoPostBack="False" onblur="validatePassword()" ClientIDMode="Static" ></asp:TextBox>
                                     <span id="passwordError" style="color: red;"></span>
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
    

    <script>
        //Validation for  salon Owner ID
        function validateSalonOwnerID() {
            var salonOwnerIDInput = document.getElementById('TextBox1');
            var salonOwnerIDError = document.getElementById('salonOwnerIDError');
            var salonOwnerID = salonOwnerIDInput.value.trim();

            // Check if the salon owner ID field is empty
            if (salonOwnerID === '') {
                salonOwnerIDError.textContent = 'Salon Owner ID is required.';
                return; // Stop further validation
            }

            // Regular expression to validate the salon owner ID (letters, numbers, and spaces only)
            var salonOwnerIDRegex = /^[a-zA-Z0-9\s]+$/;

            // Check if the salon owner ID matches the regex pattern
            if (!salonOwnerIDRegex.test(salonOwnerID)) {
                salonOwnerIDError.textContent = 'Salon Owner ID can only contain letters, numbers, and spaces.';
                return; // Stop further validation
            }

            // If all validations pass, clear the error message
            salonOwnerIDError.textContent = '';
        }

        //Validation for Password
        function validatePassword() {
            var passwordInput = document.getElementById('TextBox2');
            var passwordError = document.getElementById('passwordError');
            var password = passwordInput.value.trim();

            if (password === '') {
                passwordError.textContent = 'Password is required.';
            } else if (password.length < 7) {
                passwordError.textContent = 'Password must be at least 8 characters long.';
            } else if (!/^[a-zA-Z]+$/.test(password)) {
                passwordError.textContent = 'Password must contain only alphabetic characters.';
            } else {
                passwordError.textContent = '';
                   }
        }

    </script>
</asp:Content>
