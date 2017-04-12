<link rel="stylesheet" href="resources/css/footer.css" />

    <footer class="footer">
    <div class="container">
        <div class="row">
        <div class="col-sm-3 col-md-3">
            <h4 class="title">MobilesEra</h4>
            
            <p><i class="fa fa-map-pin"></i> 101, Matru Chhaya, Opposite Chinai Collage, Old Nagardas Road, Andheri (E), Mumbai, MH 400069</p>
        	<p><i class="fa fa-phone"></i> Phone (India) : +91 1234 567 180</p>
        	<p><i class="fa fa-envelope"></i> E-mail : cs@mobilesera.com</p>
            <ul class="social-icon">
            	<a href="https://www.facebook.com/MobilesEra-1705593453067052/" class="social"><i class="fa fa-facebook" aria-hidden="true"></i></a>            
            	<a href="https://www.instagram.com/" class="social"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            	<a href="https://www.youtube.com/" class="social"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
            	<a href="https://www.google.co.in/" class="social"><i class="fa fa-google" aria-hidden="true"></i></a>          
            </ul>
            </div>
        <c:if test="${pageContext.request.userPrincipal.name != null}">    
        <div class="col-sm-3 col-md-3">
            <h4 class="title">My Account</h4>
            <span class="acount-icon">          
            <a href="userWishList"><i class="fa fa-heart" aria-hidden="true"></i> Wish List</a>
            <a href="userCartList"><i class="fa fa-cart-plus" aria-hidden="true"></i> Cart</a>
            <a href="profile"><i class="fa fa-user" aria-hidden="true"></i> Profile</a>                      
          </span>
         </div>
         </c:if>   
        	<div class="col-md-3 footer-nav animated fadeInUp">            	
                <h4>Pages -</h4>
            	<div class="col-md-6">
                    <ul class="list">
                        <li><a href="/MobilesEra/">Home</a></li>
                        <li><a href="contactus">Contacts</a></li>
                        <li><a href="aboutus">About Us</a></li>
                        <li><a href="faq">FAQ's</a></li>
                    </ul>
                </div>
            </div>
        <div class="col-sm-3 col-md-3">
            <h4 class="title">Payment Methods</h4>
            
            <ul class="payment">
            <li><a><i class="fa fa-cc-amex" aria-hidden="true"></i></a></li>
            <li><a><i class="fa fa-credit-card" aria-hidden="true"></i></a></li>            
            <li><a><i class="fa fa-paypal" aria-hidden="true"></i></a></li>
            <li><a><i class="fa fa-cc-visa" aria-hidden="true"></i></a></li>
            </ul>
        </div>   
        
        </div>
        <hr>
        
        <div class="row text-center"> © 2017. Made with Eclipse by Abhay.</div>
        </div>
        
        
    </footer>
   
</body>
</html>