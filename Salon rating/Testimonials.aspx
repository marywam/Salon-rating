<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Testimonials.aspx.cs" Inherits="Salon_rating.Testimonials" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Testimonial.css" rel="stylesheet" />
    <title>Testimonials</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="section__container">
      <div class="header">
        <p>TESTIMONIALS</p>
        <h1>What our clients say about us.</h1>
      </div>
      <div class="testimonials__grid">
        <div class="card">
          <span><i class="fa-solid fa-quote-left"></i></span>
          <p>
            The barbers mostly Peter at DeStyle took pride in offering personalized consultations to me. 
              He listened attentively to my requests and provided expert advice on hair care and styling techniques, 
          </p>
          <hr />
            <img src="images/pic-1.jpg" alt="user"/>
          <p class="name">Allan Collins</p>
        </div>
        <div class="card">
          <span><i class="fa-solid fa-quote-left"></i></span>
          <p>
            At De Style , their skilled barbers mostly Stephen took the time to understand my 
              needs and deliver precision cuts that enhance their individual style.
          </p>
          <hr />
            <img src="images/pic-2.jpeg" alt="user"/>
          <p class="name">Clay Washington</p>
        </div>
        <div class="card">
          <span><i class="fa-solid fa-quote-left"></i></span>
          <p>
             De Style offered pre-wedding relaxation services such as massages, facials, or manicures/pedicures. 
              These treatments helped me relax and unwind before the big day, ensuring i felt refreshed and rejuvenated.
          </p>
          <hr />
            <img src="images/pic-3.jpg"  alt="user"/>
          <p class="name">Tanya Grant</p>
        </div>
      </div>
      <div class="footer">
        <h4>Welcome to DeStyle Salon</h4>
        <p>
          At De Style salon, we understand that no two individuals are alike. 
            Our salon is dedicated to creating unique and personalized experiences tailored to your specific needs and preferences.
        </p>
      </div>
    </div>




    
</asp:Content>
