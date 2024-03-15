<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home Page.aspx.cs" Inherits="Salon_rating.Home_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Home.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <section >
        <div id="carouselExampleDark" class="carousel carousel-dark slide">
      <div class="carousel-indicators">
       <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active"  aria-label="Slide 1"></button>
       <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
       <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
     </div>
     <div class="carousel-inner">
       <div class="carousel-item active" data-bs-interval="10000">
           <img src="images/Background_3.jpg" alt="background_1" class="img-fluid" style="max-height: 700px; width:100%;"/> 
         <div class="carousel-caption d-none d-md-block">
           <h5 class="animate__animated animate__bounceInRight" style="animation-delay: 1s">First slide label</h5>
           <p class="animate__animated animate__bounceInLeft" style="animation-delay: 2s">Some representative placeholder content for the first slide.</p>
         </div>
        </div>
        <div class="carousel-item" data-bs-interval="2000">
            <img src="images/Background_2.jpg" alt="Background_2" class=" img-fluid " style="max-height: 700px; width: 100%;"/>
          <div class="carousel-caption d-none d-md-block">
            <h5 class="animate__animated animate__slideInDown" style="animation-delay: 1s">Second slide label</h5>
           <p class="animate__animated animate__fadeInUp" style="animation-delay: 2s">Some representative placeholder content for the second slide.</p>
         </div>
        </div>
        <div class="carousel-item">
            <img src="images/spa_1.jpg" alt = "Background_3" class="img-fluid " style="max-height: 700px; width:100%;" />
         <div class="carousel-caption d-none d-md-block">
           <h5 class="animate__animated animate__zoomIn" style="animation-delay: 1s">Third slide label</h5>
            <p class="animate__animated animate__fadeInLeft" style="animation-delay: 2s">Some representative placeholder content for the third slide.</p>
          </div>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
       <span class="carousel-control-prev-icon" aria-hidden="true"></span>
       <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
       <span class="carousel-control-next-icon" aria-hidden="true"></span>
       <span class="visually-hidden">Next</span>
     </button>
    </div>
    </section>

    <section>
        <div class="container">
     <h2 class="text-center">Recent Activity</h2>
            <br>
      <div class="row">

        <div class="col-md-4">
          <div class="card" style="width: 350px;" >
           <div class="card-header">
             <div class="image_1">
                <img src="images/girl.jpg" />&nbsp&nbsp&nbsp&nbsp
               <p style="margin-top: 20px;"><a href="#" style="color: black; text-decoration: none;">Kateryn Hilzn<br></a><i>Wrote a Review</i></p>
              </div>
            </div>
              <img style= "height: 300px;" src="images/spa_person.jpg" class="card-img-top" alt="..." />
            <div class="card-body">
              <div class="star">
               <i style="color: orange;"class="fa-solid fa-star"></i>
               <i style="color: orange;" class="fa-solid fa-star"></i>
               <i style="color: orange;" class="fa-solid fa-star"></i>
               <i style="color: orange;" class="fa-solid fa-star"></i>
               <i class="fa-solid fa-star"></i>
              </div>
              <p> for a relaxing spa day, and I must say, it was absolutely incredible! 
                From the moment I walked in, I was greeted with warmth and hospitality.
              <a href="#" style="color: blue; text-decoration: none;">continue Reading</a> </p>
            </div>
          </div>
        </div>

        <div class="col-md-4" id="reviewDiv">
          <div class="card" style="width: 350px;" >
            <div class="card-header">
              <div class="image_1">
                  <img src="images/dp_1.jpg" />&nbsp&nbsp&nbsp&nbsp
                <p style="margin-top: 20px;"><a href="#" style="color: black; text-decoration: none;">Peter Anderson<br></a><i>Wrote a Review</i></p>
              </div>
            </div>
              <img style="height: 300px;" src="images/hair_cut.jpg" class="card-img-top" alt="..."/>
            <div class="card-body">
              <div class="star">
               <i  style="color: orange;"class="fa-solid fa-star"></i>
               <i style="color: orange;" class="fa-solid fa-star"></i>
               <i style="color: orange;" class="fa-solid fa-star"></i>
               <i style="color: orange;" class="fa-solid fa-star"></i>
               <i class="fa-solid fa-star"></i>
              </div>
              <p> My barber was incredibly skilled and attentive to my preferences. He took the time to listen to what 
                I wanted and provided expert advice on the best style for me.
              <a href="#" style="color: blue; text-decoration: none;">continue Reading</a> </p>
            </div>
          </div>
            <br />
        </div>
      </div>
    </div>
    </section>

        <Section  id="card-categories" class="pt-md-5">
      <h2 class="text-center my-5 " style="color: #b8474d;">SERVICES </h2>
      <h3 class="text-center my-5"><i>What we Offer<i></h3>
    
     <div class="container">
        <div class="row">
          <div class="col-md-3">
            <div class="card">
                <img src="images/Hair-stylist.jpg" class="card-img-top" alt="..."/>
             <div class="card-body">
               <h5 class="card-title">Hair Dressing </h5>
               <p class="card-text">We offer exclusive services on hair and would like to give you the best because you deserve it  .</p>
               <a href="Destyle Hairdresser.aspx" class="btn btn-primary">Check Out More</a>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card" >
                <img src="images/HOTELSPAWISA.jpg" class="card-img-top" alt="..."/>
             <div class="card-body">
                <h5 class="card-title">Spa and Beauty</h5>
                <p class="card-text">At our spa and beauty sanctuary, we believe in the transformative power of self-care 
                    and relaxation. Nestled in a serene oasis, our sanctuary offers a haven where you can escape the hustle and bustle of everyday life and indulge
                    in a world of tranquility and rejuvenation.</p>
                <a href="spa.aspx" class="btn btn-primary">Check Out More</a>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card" >
                <img src="images/nail-polish-manicure-and-makeup.jpg" class="card-img-top" alt="..."/>
             <div class="card-body">
                <h5 class="card-title">Manicure Nails</h5>
                <p class="card-text" style=" font-family: 'Poppins', sans-serif !important;"></p>
                <a  href="#" class="btn btn-primary">Check out More</a>
              </div>
            </div>
          </div>
          <div class="col-md-3">
           <div class="card">
               <img src="images/eye_lashes.jpg" class="card-img-top" alt="..." />
             <div class="card-body">
                <h5 class="card-title">Barber</h5>
                <p class="card-text">Ut dolor quam, ultrices non eros at, maximus imperdiet metus. Sed pellentesque id nisl et tempus.</p>
                <a href="#" class="btn btn-primary">Check out More</a>
              </div>
           </div>
          </div>
        </div>
      </div>
    </section>
    <section>
        <br>
    <br>
   <div  id="Parent" >
     <div class="red">
         <img src="images/About.jpg" alt="background_1" style="max-height: 300px; width:20%;" />
       <div class="text-box">
         <h1>What makes  us Different from others</h1>
         <hr>
         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam condimentum sed felis a sollicitudin. Nulla a auctor orci. Curabitur at pretium augue. Donec eget elit dignissim, sodales mi sed, lacinia massa. Etiam fermentum, dui a congue blandit, odio eros interdum libero, et pharetra sapien est non mi. Aliquam hendrerit venenatis eleifend. Aliquam turpis dolor, lobortis et facilisis id, tempus quis justo. Nunc ultrices, massa eget porttitor ultricies, enim tellus aliquam odio, pellentesque ullamcorper ex mi sit amet erat. Nunc a massa ut mauris pulvinar pellentesque id vel diam. Morbi nisl diam, volutpat dignissim facilisis et, congue at sapien. Integer vulputate lorem enim, id volutpat tellus fermentum ac. Morbi pharetra facilisis
            nisl, sed elementum nulla gravida et. Praesent nec diam facilisis, mollis mauris sed, <br>
           <button class="btn btn-primary" style="margin-left: 260px;"><a href="#">Learn More</a></button>
          </p>
        </div>
      </div>
    </div>
    </section>
    </i></i>
</asp:Content>
