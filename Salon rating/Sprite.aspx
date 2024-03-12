<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sprite.aspx.cs" Inherits="Salon_rating.Sprite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Star.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h2>Your Rating</h2>
        <div>
            <% int selectedRating = 0;
            int.TryParse(SelectedRatingHiddenField.Value, out selectedRating);
            for (int i = 1; i <= 5; i++)
            {
                if (i <= selectedRating)
                {%>
                    <i class="fas fa-star"></i>
                <%}
                else
                {%>
                    <i class="far fa-star"></i>
                <%}
            }%>
      
        </div>
        <div>
            <h3>Your Comment</h3>
            <p><% Response.Write(TextBox1.Text); %></p>
        </div>
        </div>


    <div class="container">
            <br />
        <h2>Rate Us</h2>
            <br />
        <div class="rating">
            <input type="radio" id="star5" name="rating" value="5" />
            <label for="star5"><i  class="fas fa-star"></i></label>
            <input type="radio" id="star4" name="rating"  value="4" />
            <label for="star4"><i class="fas fa-star"></i></label>
            <input type="radio" id="star3" name="rating" value="3" />
            <label for="star3"><i class="fas fa-star"></i></label>
            <input type="radio" id="star2" name="rating" value="2" />
            <label for="star2"><i class="fas fa-star"></i></label>
            <input type="radio" id="star1" name="rating" value="1" />
            <label for="star1"><i class="fas fa-star"></i></label>
        </div>
            <div class="score">no Rating</div>
            
            <br />
        <asp:TextBox ID="TextBox1" runat="server"  class="form-control" TextMode="MultiLine" Rows="4" placeholder="comment"></asp:TextBox>
            <br />
        <asp:Button ID="Button2"  class="btn btn-primary" runat="server" Text="Submit" OnClick="Button2_Click" />
            <br />
          <asp:HiddenField ID="SelectedRatingHiddenField" runat="server" />

       
          




  

             
    </div>


    <br />
    <br />


     <script>
         const ratings = document.querySelectorAll('.rating input');
         const score = document.querySelector('.score');
         


         ratings.forEach(rating => {
             rating.addEventListener('change', () => {
                 
                 const selectedRating = document.querySelector('.rating input:checked').value;

                 const text = selectedRating == 1 ? 'star' : 'stars';

                 score.textContent = `${selectedRating}  ${text} rating.`;

                
             })
         })




    </script>


</asp:Content>
