<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Salon_rating.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/About_Destyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div  id="Container" >
     <div class="image">
         <img src="images/About_1.jpg" alt="background_2" />
         
       <div class="text-box">
         <h1>About Us </h1>
         <hr>
         <p>
              De Style Salon is not just a place for exceptional hair and beauty services; 
            it's a community-driven destination dedicated to enhancing your experience. 
            We pride ourselves on providing top-notch salon services while fostering an environment where
            your feedback matters. Our unique platform allows customers to rate and provide feedback on their salon experiences, 
            ensuring continuous improvement and personalized care. At De Style Salon, we believe in the power of collaboration between stylists and clients, 
            creating a space where every visit is tailored to exceed expectations. 
            Welcome to a salon where your voice shapes the beauty journey.

          </p>
        </div>
      </div>
    </div>

    <br />
    <br />




  <div class="card" >
  <div class="card-body">
      <h1>Connect with us </h1>
       <form>
 
            <div class="mb-3">
                <asp:Label ID="Label1" runat="server" Text="Label"  for="exampleName" class="form-label">Your Name</asp:Label>
                <asp:TextBox ID="TextBox1"  class="form-control" aria-describedby="fullname"  runat="server"  onblur="validateYourName()" ClientIDMode="Static"></asp:TextBox>
                <span id="nameError" style="color: red;"></span>
                <div id="name" class="form-text">We'll never share your name with anyone else.</div>
           </div>
            <div class="mb-3">
                <asp:Label ID="Label2" runat="server" Text="Label"  for="exampleInputEmail1" class="form-label">Email address</asp:Label>
                <asp:TextBox ID="TextBox2" class="form-control" aria-describedby="emailHelp" runat="server" onblur="validateEmail()" ClientIDMode="Static" ></asp:TextBox>
                  <span id="emailError" style="color: red;"></span>
                
             <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
            </div>
       <div class="mb-3">
           <asp:Label ID="Label3" runat="server" Text="Label" for="exampleNumber" class="form-label">Phone Number</asp:Label>
           <asp:TextBox ID="TextBox3" class="form-control"  aria-describedby="Phone Number" runat="server" onblur="validateContactNo()" ClientIDMode="Static"></asp:TextBox>
              <span id="contactNoError" style="color: red;"></span>
      
         <div id="Phonenumber" class="form-text">We'll never share your phone number with anyone else.</div>
      </div>

       <div class="mb-3">
           <label class="form-label">Message</label>
           <div class="form-group">
           
           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"  placeholder="Message" TextMode="MultiLine" Rows="2" onblur="validateMessage()" ClientIDMode="Static"></asp:TextBox>
               <span id="messageError" style="color: red;"></span>
          </div> 
       </div>
           <asp:Button ID="Button1" runat="server" type="submit" Text="Submit" class="btn btn-primary" OnClick="Button1_Click" />
 
       </form>
    </div>
  </div>

     <br />
    <br />
    <div class="Call">
       <div class="phone">
        <div class="icon"><i class="fa-solid fa-phone"></i></div>
        <h3>Phone</h3>
        <p>0704909172</p>
      </div>

      <div class="email">
        <div class="icon"><i class="fa-solid fa-envelope"></i></div>
        <h3>Email:</h3>
        <p>maryannewambui0124@gmail.com</p>
      </div>
    </div>
   
    <script>

        //Validation for Your _name
        function validateYourName() {
            var nameInput = document.getElementById('TextBox1');
            var nameError = document.getElementById('nameError');
            var name = nameInput.value.trim();

            if (name === '') {
                nameError.textContent = 'Your Name is required.';
            } else {
                nameError.textContent = '';
            }
        }

        //Validation for Email
        function validateEmail() {
            var emailInput = document.getElementById('TextBox2');
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

        //Validation of Contact No
        function validateContactNo() {
            var contactNoInput = document.getElementById('TextBox3');
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

        //Validation for Message Text Area
        function validateMessage() {
            var messageInput = document.getElementById('TextBox4');
            var messageError = document.getElementById('messageError');
            var message = messageInput.value.trim();

            if (message === '') {
                messageError.textContent = 'Message is required.';
            } else {
                messageError.textContent = '';
            }
        }

    </script>
</asp:Content>
