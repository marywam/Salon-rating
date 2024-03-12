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
                <input id="Text1" type="text" class="form-control" aria-describedby="fullname" />
                <div id="name" class="form-text">We'll never share your name with anyone else.</div>
           </div>
            <div class="mb-3">
                <asp:Label ID="Label2" runat="server" Text="Label"  for="exampleInputEmail1" class="form-label">Email address</asp:Label>
                <input id="Text2" type="text" class="form-control" aria-describedby="emailHelp" />
    
             <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
            </div>
       <div class="mb-3">
           <asp:Label ID="Label3" runat="server" Text="Label" for="exampleNumber" class="form-label">Phone Number</asp:Label>
           <input id="Text3" type="text" class="form-control"  aria-describedby="Phone Number"/>
         <div id="Phonenumber" class="form-text">We'll never share your phone number with anyone else.</div>
      </div>

       <div class="mb-3">
           <asp:Label ID="Label4" runat="server" Text="Label" for="exampleFormControlTextarea1" class="form-label">Message</asp:Label>
           <textarea id="TextArea1" cols="20" rows="2" class="form-control" id="exampleFormControlTextarea1"></textarea>
       </div>
           <asp:Button ID="Button1" runat="server" type="submit" Text="Submit" class="btn btn-primary" />
 
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
   
</asp:Content>
