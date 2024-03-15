<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Destyle Hairdresser.aspx.cs" Inherits="Salon_rating.Destyle_Hairdresser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
body {
    background-image: url('../images/pattern_1.jpg');
}
  .card {
    border: none;
  }
  .card-title {
    color: #333; /* Replace with your color */
    font-weight: bold;
  }
  .card-text {
    color: #666; /* Replace with your color */
  }
  .card img {
   width: 500px; 
   height: 500px;
   
  }
  .card-body p{
      color: black;
  }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container my-4">
  <div class="row">
    <!-- Styling Section -->
    <div class="col-md-6">
      <div class="card mb-4">
        <img src="images/styling.jpg" class="card-img-top" alt="Styling"  />
       
       
        <div class="card-body">
          <h5 class="card-title">STYLING</h5>
          <p class="card-text"></p>
          <p class="card-text"><small class="text-muted">Images from Freepik</small></p>
        </div>
      </div>
    </div>

    <!-- Haircut Section -->
    <div class="col-md-6">
      <div class="card mb-4">
          <img src="images/haircutafrican.jpg" class="card-img-top" alt="Haircut" />
       
        <div class="card-body">
             <h5 class="card-title">HAIRCUT</h5>
          <p class="card-text"></p>
        </div>
      </div>
    </div>
  </div>

  <div class="row">
    <!-- Color Section -->
    <div class="col-md-6">
      <div class="card mb-4">
          <img src="images/dye.jpg" class="card-img-top" alt="Color" style="width: 500px; height: 600px"/>
        
        <div class="card-body">
          <h5 class="card-title">COLOR</h5>
          <p class="card-text">At Destyle Salon, you can expect experienced and skilled stylists 
              who use quality products to achieve your desired hair color.
              Additionally, they may offer additional services such as hair treatments to
              maintain the health and vibrancy of your colored hair.</p>
        </div>
      </div>
    </div>

    <!-- Specials Section -->
    <div class="col-md-6">
      <div class="card mb-4">
         <img src="images/Wig%20Installation.jpg" class="card-img-top" alt="Specials"/>
        
        <div class="card-body">
          <h5 class="card-title">SPECIALS
              <br /> Wig Installation
          </h5>
          <p class="card-text">This process involves careful positioning, adjusting, 
              and styling to ensure a natural and comfortable look. 
              wig installation services provide clients with the opportunity to achieve 
              their desired hairstyle with confidence and ease. At Destyle Salon, 
              our skilled stylists are dedicated to delivering personalized wig installation 
              services tailored to each client's needs and preferences.





</p>
        </div>
      </div>
    </div>
  </div>
</div>
</asp:Content>
