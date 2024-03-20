<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="lash.aspx.cs" Inherits="Salon_rating.lash" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        *{
             margin:0;
            padding:0;
        }
        body {
            
            background-image: url('../images/pattern_1.jpg');

        }

        .nail_logo {
          display: flex;
          
          
        }

        .nail_logo img{
            height: 600px;
            width: 500px;
             margin-right: 50px;
        }

         .text-container {
          flex-grow: 1; /* Text container takes remaining space */
          margin-left: 2px;
         }

         .text_below{
             font-size:80px;
             color:paleturquoise;
             margin-left: 700px;
             
         }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="text_below">EYE LASH MENU</p> 
     <div class="container">
         <div class="nail_logo">
             <img src="images/cover_lash.jpg" />
         
         
             

          <div class="text-container">
         <h4>3weeks Acrylic/Gel Fill &nbsp&nbsp  <b>ksh3000</b></h4>
   <p> During this 3-week acrylic/gel fill appointment, we'll expertly refresh and maintain the appearance 
       of your existing nail enhancements. This process involves gently removing any lifting or overgrown acrylic
       or gel, meticulously filling in the regrowth area near your cuticles, and reshaping your nails to perfection. 
       We'll then apply fresh layers of high-quality acrylic or gel to ensure durability and a flawless finish. 
       By the end of your appointment, your nails will look as beautiful and well-maintained </p>
           
    <h4>ChartArt- All Ten nails Length  &nbsp&nbsp <b>ksh1000</b></h4>
    <p>
        This service focuses on achieving uniform nail length across all ten nails for a balanced and polished look. Whether you prefer them short and neat or longer and more expressive, 
        we'll ensure each nail is meticulously shaped and trimmed to your desired length, 
        </p>
      
     <h4>Reducing Nail Length  &nbsp&nbsp <b>ksh200</b></h4>
      <p>"Our goal during a nail length reduction is to trim your nails to your desired length while maintaining 
          their strength and integrity. Whether you're looking for a subtle adjustment or a significant change, 
          we'll carefully shape and file each nail to achieve your preferred length. </p>

    <h4>Acrylic OverLay & Gel Color &nbsp&nbsp <b>ksh3200</b></h4>
    <p> An acrylic overlay with gel color offers the best of both worlds for durable, vibrant nails. First, we apply a strong and protective acrylic overlay to your natural nails, providing a sturdy foundation. Then, we add a layer of high-quality gel color on top, giving you endless options for beautiful and long-lasting nail designs. 
        This combination ensures not only stunning aesthetics but also lasting wear, so you can enjoy your flawless manicure for weeks to come.</p>

     <h4>3 weeks Refill & Gel Color  &nbsp&nbsp <b>ksh500</b></h4>
     <p> During this appointment, we expertly fill in any regrowth, ensuring your nails maintain their strength and shape. 
         Then, we apply your choice of gel color, adding a pop of color or a subtle hue to enhance your style. With this combination, 
         your nails will not only stay strong and well-maintained but also remain 
         beautifully colored for weeks, giving you confidence in every gesture.</p>

     <h4>Short Full Set & Gel Color  &nbsp&nbsp <b>ksh700</b></h4>
     <p>"Our short full set with gel color is perfect for those who prefer a natural yet polished look. With this service, 
         we'll carefully apply acrylic or gel extensions to create your desired length while keeping them short and manageable. 
         Then, we'll add a layer of vibrant gel color of your choice to complete the look. The result is a beautifully enhanced 
         manicure that's both stylish and practical, 
         giving you the freedom to express yourself with confidence while maintaining a chic and versatile appearance.</p>

    <h4>Medium Full Set & Gel Color  &nbsp&nbsp <b>ksh800</b></h4>
    <p>With this service, we'll expertly apply acrylic or gel extensions to achieve a medium length that's both stylish and functional. </p>

    <h4>2 weeks Refill & Gel Color  &nbsp&nbsp <b>ksh600</b></h4>
    <p>During this appointment, we'll expertly fill in any regrowth to ensure your nails stay strong and healthy.
        Additionally, we'll apply your favorite gel color, adding a touch of flair and vibrancy to your look. With this combination, 
        your nails will not only retain their shape and strength but also boast a fresh and stylish color that lasts.</p>
    </div>
              
             </div>
         
        
     </div>
</asp:Content>
