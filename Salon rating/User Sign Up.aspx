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
                                        runat="server" placeholder="Full Name" onblur="validateFullName()" ClientIDMode="Static"></asp:TextBox>
                                      <span id="fullNameError" style="color: red;"></span>

                                </div>
                            </div>

                            <div class="col-md-6">
                                 <label class="form-label">Date Of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="DOB" TextMode="Date" onblur="validateDateOfBirth()" ClientIDMode="Static"
                                        ></asp:TextBox>
                                    <span id="dateOfBirthError" style="color: red;"></span>

                                </div>
                            </div>
                        </div>


                         <div class="row">
                            <div class="col-md-6">
                                
                                <label class="form-label">Contact No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                        runat="server" placeholder="Contact No"  onblur="validateContactNo()" ClientIDMode="Static"></asp:TextBox>
                                    <span id="contactNoError" style="color: red;"></span>
                                </div>
                            </div>

                            <div class="col-md-6">
                                 <label class="form-label">Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox4" 
                                        runat="server" placeholder="Email ID" TextMode="Email" onblur="validateEmail()" ClientIDMode="Static"></asp:TextBox>
                                    <span id="emailError" style="color: red;"></span>

                                </div>
                            </div>
                        </div>


                          <div class="row">
                            <div class="col-md-4">
                                
                                <label class="form-label">Country</label>
                                <div class="form-group">
                                     <asp:TextBox Class="form-control" ID="TextBox10" 
                                        runat="server" placeholder="Country" onblur="validateCountry()" ClientIDMode="Static" ></asp:TextBox>
                                    <span id="countryError" style="color: red;"></span>
                                </div>
                            </div>

                            <div class="col-md-4">
                                 <label class="form-label">City</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox6" 
                                        runat="server" placeholder="City" onblur="validateCity()" ClientIDMode="Static" ></asp:TextBox>
                                    <span id="cityError" style="color: red;"></span>
                                </div>
                            </div>

                              <div class="col-md-4">
                                 <label class="form-label">Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" 
                                        runat="server" placeholder="Pin Code" TextMode="Number" onblur="validatePinCode()" ClientIDMode="Static"></asp:TextBox>
                                    <span id="pinCodeError" style="color: red;"></span>
                                </div>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col">
                                
                                <label class="form-label">Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" 
                                        runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2" onblur="validateFullAddress()" ClientIDMode="Static"></asp:TextBox>
                                    <span id="fullAddressError" style="color: red;"></span>

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
                                        runat="server" placeholder="User ID" onblur="validateUserID()" ClientIDMode="Static"></asp:TextBox>
                                    <span id="userIDError" style="color: red;"></span>
                                </div>
                            </div>

                            <div class="col-md-6">
                                 <label class="form-label">Password</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox9" 
                                        runat="server" placeholder="Password" TextMode="Password" onblur="validatePassword()" ClientIDMode="Static"></asp:TextBox>
                                 <span id="passwordError" style="color: red;"></span>
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

    <asp:Label ID="lblMessage" runat="server" Visible="false" ForeColor="Green" Text="Successfully registered"></asp:Label>


    <script>

        
            


        //Validation for Full Name
    function validateFullName() {
        var fullNameInput = document.getElementById('TextBox3');
        var fullNameError = document.getElementById('fullNameError');
        var fullName = fullNameInput.value.trim();

        if (fullName === '') {
            fullNameError.textContent = 'Full Name is required.';
        } else {
            fullNameError.textContent = '';
        }
    }

        //Validation for Date Of Birth

        function validateDateOfBirth() {
            var dobInput = document.getElementById('TextBox1');
            var dobError = document.getElementById('dateOfBirthError');
            var dob = dobInput.value.trim();

            // Check if the date is empty
            if (dob === '') {
                dobError.textContent = 'Date of Birth is required.';
                return; // Stop further validation
            }

            // Check if the entered value is a valid date
            var isValidDate = /^\d{4}-\d{2}-\d{2}$/.test(dob);
            if (!isValidDate) {
                dobError.textContent = 'Invalid date format. Please use YYYY-MM-DD format.';
                return; // Stop further validation
            }

            // Parse the entered date
            var parts = dob.split('-');
            var year = parseInt(parts[0], 10);
            var month = parseInt(parts[1], 10) - 1; // Months are zero-indexed
            var day = parseInt(parts[2], 10);

            // Create a Date object from the parsed values
            var enteredDate = new Date(year, month, day);

            // Check if the entered date is in the future
            var currentDate = new Date();
            if (enteredDate > currentDate) {
                dobError.textContent = 'Date of Birth cannot be in the future.';
                return; // Stop further validation
            }

            // Optionally, you can add additional validation criteria here, such as age restrictions

            // If all validations pass, clear the error message
            dobError.textContent = '';
        }

        //Validation of Contact No
        function validateContactNo() {
            var contactNoInput = document.getElementById('TextBox2');
            var contactNoError = document.getElementById('contactNoError');
            var contactNo = contactNoInput.value.trim();

            // Check if the contact number is empty
            if (contactNo === '') {
                contactNoError.textContent = 'Contact No is required.';
                return; // Stop further validation
            }

            // Regular expression to validate a phone number (10 digits)
            var phoneRegex = /^\d{10}$/;

            // Check if the contact number matches the regex pattern
            if (!phoneRegex.test(contactNo)) {
                contactNoError.textContent = 'Please enter a valid 10-digit phone number.';
                return; // Stop further validation
            }

            // If all validations pass, clear the error message
            contactNoError.textContent = '';
        }


        //Validation of Email Address
        function validateEmail() {
            var emailInput = document.getElementById('TextBox4');
            var emailError = document.getElementById('emailError');
            var email = emailInput.value.trim();

            // Check if the email address is empty
            if (email === '') {
                emailError.textContent = 'Email ID is required.';
                return; // Stop further validation
            }

            // Regular expression to validate an email address format
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

            // Check if the email address matches the regex pattern
            if (!emailRegex.test(email)) {
                emailError.textContent = 'Please enter a valid email address.';
                return; // Stop further validation
            }

            // If all validations pass, clear the error message
            emailError.textContent = '';
        }

        //Validatation for country
        function validateCountry() {
            var countryInput = document.getElementById('TextBox10');
            var countryError = document.getElementById('countryError');
            var country = countryInput.value.trim();

            // Check if the country field is empty
            if (country === '') {
                countryError.textContent = 'Country is required.';
                return; // Stop further validation
            }

            // Check if the length of the input value is less than 2 characters
            if (country.length === 1) {
                countryError.textContent = 'Please enter a valid  country.';
                return; // Stop further validation
            }
            // For instance, to allow only alphabetic characters and spaces
            var validcountryRegex = /^[A-Za-z\s]+$/;
            if (!validcountryRegex.test(country)) {
                countryError.textContent = 'Please enter a valid country name.';
                return; // Stop further validation
            }
            // If all validations pass, clear the error message
            countryError.textContent = '';
        }


        //Validation for City
        function validateCity() {
            var cityInput = document.getElementById('TextBox6');
            var cityError = document.getElementById('cityError');
            var city = cityInput.value.trim();

            // Check if the city field is empty
            if (city === '') {
                cityError.textContent = 'City is required.';
                return; // Stop further validation
            }

            // Optionally, you can add additional validation criteria, such as length or format

            // For example, to require a minimum length for the city
            if (city.length < 2) {
                cityError.textContent = 'City must be at least 2 characters long.';
                return; // Stop further validation
            }

            // Optionally, you can also check for specific characters or formats using regular expressions
            // For instance, to allow only alphabetic characters and spaces
            var validCityRegex = /^[A-Za-z\s]+$/;
            if (!validCityRegex.test(city)) {
                cityError.textContent = 'Please enter a valid city name.';
                return; // Stop further validation
            }

            // If all validations pass, clear the error message
            cityError.textContent = '';
        }

        //Validation for Pin Code 
        function validatePinCode() {
            var pinCodeInput = document.getElementById('TextBox7');
            var pinCodeError = document.getElementById('pinCodeError');
            var pinCode = pinCodeInput.value.trim();

            // Check if the pin code field is empty
            if (pinCode === '') {
                pinCodeError.textContent = 'Pin Code is required.';
                return; // Stop further validation
            }

            // Regular expression to validate a pin code (6 digits)
            var pinCodeRegex = /^\d{6}$/;

            // Check if the pin code matches the regex pattern
            if (!pinCodeRegex.test(pinCode)) {
                pinCodeError.textContent = 'Please enter a valid 6-digit pin code.';
                return; // Stop further validation
            }

            // If all validations pass, clear the error message
            pinCodeError.textContent = '';
        }

        //Validation for Full Address
        function validateFullAddress() {
            var fullAddressInput = document.getElementById('TextBox5');
            var fullAddressError = document.getElementById('fullAddressError');
            var fullAddress = fullAddressInput.value.trim();

            // Check if the full address field is empty
            if (fullAddress === '') {
                fullAddressError.textContent = 'Full Address is required.';
                return; // Stop further validation
            }
            // If all validations pass, clear the error message
            fullAddressError.textContent = '';
        }

        //validation for the userID
        function validateUserID() {
            var userIDInput = document.getElementById('TextBox8');
            var userIDError = document.getElementById('userIDError');
            var userID = userIDInput.value.trim();

            if (userID === '') {
                userIDError.textContent = 'User ID is required.';
            }  else {
                userIDError.textContent = '';
            }
        }

        //Validation for the password
        function validatePassword() {
            var passwordInput = document.getElementById('TextBox9');
            var passwordError = document.getElementById('passwordError');
            var password = passwordInput.value.trim();

            if (password === '') {
                passwordError.textContent = 'Password is required.';
            } else if (password.length < 8) {
                passwordError.textContent = 'Password must be at least 8 characters long.';
            }  else {
                passwordError.textContent = '';
            }
        }
    </script>

</asp:Content>
