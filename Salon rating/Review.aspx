<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Review.aspx.cs" Inherits="Salon_rating.Review" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Review.css" rel="stylesheet" />
         
          <script>
              document.addEventListener("DOMContentLoaded", function () {
                  let table = new DataTable('#<%= GridView2.ClientID %>',
                {
                    // Define the number of columns based on your GridView
                    columns: [
                        { data: "Expl_Comm" },
                        { data: "Star_icon" },
                         { data: "User ID" }
                    ]
                });
        });
   </script>
         
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    
    <div class="container">
        <div class="row">
            <div class="col-md-5 ">

                <div class="card">
                    <div class="card-body">

                          <div class="row">
                            <div class="col" style="text-align: center;">
                                
                                    <h4>Rate Us</h4>
                                
                            </div>
                        </div>

                       

                        <div class="row">
                            <div class="col">
                                <hr/>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                
                                
                                <div class="form-group">
                                    <div class="star-group">
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
                                </div>
                                 <div class="score">no Rating</div>
                            </div>
                            </div>

                      <br />
                             <div class="row">
                            <div class="col-md-4">
                                
                                
                                <div class="form-group mb-3">

                                    <label for="<%= TextBox1.ClientID %>"class="form-label">Comment</label>
                                    <asp:TextBox ID="TextBox1" TextMode="MultiLine"  Placeholder="Add a comment"  
                                        runat ="server" Columns="63"></asp:TextBox>
 
                                
                                </div>
                            </div>
                            
                        </div>

                        <br />
                        <br />


                         <div class="row">
                            <div class="col-md-6">
                                
                                
                                <div class="form-group">

                                    <asp:Button Class="btn btn-success btn-lg " ID="Button2" 
                                          runat="server" Text="Submit" OnClick="Button1_Click" />
                                    
                                </div>
                            </div>

                            
                        </div>

                        <asp:HiddenField ID="SelectedRatingHiddenField" runat="server" />


                       


                      
                        




                        
                         
                          

                           



                        <br />
                        




                        
                          </div>

                </div>

                <a href="Home%20Page.aspx" style="text-decoration: none;">~~~Back To Home</a><br /><br />
                
            </div>


            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col" style="text-align: center;">
                                
                                    <h4>Rating Reviews</h4>
                                
                            </div>
                        </div>

                        


                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                        <div class="row">
                           
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:De Style DBConnectionString %>" SelectCommand="SELECT * FROM [Star_table]"></asp:SqlDataSource>
                          

                            <asp:GridView ID="GridView2" runat="server"  AutoGenerateColumns="False"  DataSourceID="SqlDataSource1"  DataKeyNames="Rate_Id">
                                <Columns>
                                    <asp:BoundField DataField="User ID" HeaderText="User ID" /> 
                                 <asp:TemplateField HeaderText="Star Rating">
                               <ItemTemplate>
                            <div>
                               <%# GetStarIcons(Eval("Star_icon")) %>
                           </div>
                         </ItemTemplate>
                   </asp:TemplateField> 
                       <asp:BoundField DataField="Expl_Comm" HeaderText="Comment" />
                </Columns>
               </asp:GridView>
                            
                                
                            
                        </div>
                        
                       

                    </div>
                </div>
                
   
        </div>
    </div>  
        </div>
    <br />
    <br />


     <script>
         const ratings = document.querySelectorAll('.star-group input');
         const score = document.querySelector('.score');
         


         ratings.forEach(rating => {
             rating.addEventListener('change', () => {
                 
                 const selectedRating = document.querySelector('.star-group input:checked').value;

                 const text = selectedRating == 1 ? 'star' : 'stars';

                 score.textContent = `${selectedRating}  ${text} rating.`;

                
             })
         })




    </script>






      
            
</asp:Content>
