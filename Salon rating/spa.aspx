<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="spa.aspx.cs" Inherits="Salon_rating.spa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        body{
            background-color:ghostwhite;
        }
    .container {
        display: flex;
        align-items: center;
        margin-bottom: 100px;
    }

    .container img {
        max-width: 600px;
        height: auto;
        margin-right: 50px;
    }

    
    .container b {
            font-size: 18px;
            color: black;
        }
     .container br {
            margin-bottom: 20px; /* Adjust as needed */
        }
     .text-container {
    flex-grow: 1; /* Text container takes remaining space */
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <img src="images/massage%20spa.jpg" alt="Image 1"/>
        
        <div class="text-container">
         <h4>- 60min 5,134(ksh) Spirit of africa massage</h4>
   <p> A soul surrendering full body massage, using a blend of African oils designed to ease away tension,
    enhance and restore the body.</p>
           
    <h4>- 60min 5,134(ksh)Chungu massage</h4>
    <p>The Swahili word for strong. A deep tissue and pressure point massage, relieving deep tension, leaving the muscles energized and revitalized.</p>
            
    </div>
</div>

<div class="container">
    <img src="images/spa-treatments-beer-bath-hydrotherapy.jpg" alt="Image 2" />

     <div class="text-container">
         
    <h4>-1 hour 6,000(ksh) Bath Massage</h4>
  <p> Indulge in a luxurious bath experience infused with essential oils and soothing ingredients to rejuvenate your body and mind.</p>
            
    </div>

   
    
</div>

<div class="container">
    <img src="images/spa-treatments-facial.jpg" alt="Image 3" />

    <div class="text-container">
        
        
        <h4>-60min 3,000(ksh) Face Massage</h4>
        <p>Pamper your face with a gentle massage using specialized techniques to improve circulation, reduce stress, and enhance skin health.</p>
    </div>

   
    
</div>


</asp:Content>
