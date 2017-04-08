<%@include file="header.jsp" %>

<div style="margin-bottom: 20px" class="container bootstrap snippets">
      <div class="row text-center">
        <div class="col-sm-4">
          <div class="contact-detail-box">
            <i class="fa fa-th fa-3x text-colored"></i>
            <h4>Get In Touch</h4>
            <abbr title="Phone">Ph:</abbr> (+91) 1800 208 9898<br>
            E-mail: <a href="mailto:carmenestelasi@gmail.com" class="text-muted">cs@mobilesera.com</a>
          </div>
        </div><!-- end col -->

        <div class="col-sm-4">
          <div class="contact-detail-box">
            <i class="fa fa-map-marker fa-3x text-colored"></i>
            <h4>Our Location</h4>

            <address>
            101, Matru Chhaya, Opposite<br>
            Chinai Collage, Old Nagardas Road,<br>
            Andheri (E), Mumbai, MH 400069<br>
          </address>
          </div>
        </div><!-- end col -->

        <div class="col-sm-4">
          <div class="contact-detail-box">
            <i class="fa fa-book fa-3x text-colored"></i>
            <h4>24x7 Support</h4>
         
            <h4 class="text-muted">1234 567 890</h4>
          </div>
        </div><!-- end col -->

      </div>
      <!-- end row -->


      <div class="row">
        <div class="col-sm-6">
          <div class="contact-map">
              
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15267858.96585908!2d73.7507000526077!3d20.892007766328785!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30635ff06b92b791%3A0xd78c4fa1854213a6!2sIndia!5e0!3m2!1sen!2sin!4v1478361759491" width="550" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>  </div>
        </div><!-- end col -->

        <!-- Contact form -->
        <div class="col-sm-6">
          <div  class="form-main">

            <div class="form-group">
              <label for="name2">Name</label>
              <input class="form-control" id="name2" name="name" onblur="if(this.value == '') this.value='Name'" onfocus="if(this.value == 'Name') this.value=''" type="text" value="Name">
              <div class="error" id="err-name" style="display: none;">Please enter name</div>
            </div> <!-- /Form-name -->

            <div class="form-group">
              <label for="email2">Email</label>
              <input class="form-control" id="email2" name="email" type="text" onfocus="if(this.value == 'E-mail') this.value='';" onblur="if(this.value == '') this.value='E-mail';" value="E-mail">
              <div class="error" id="err-emailvld" style="display: none;">E-mail is not a valid format</div> 
            </div> <!-- /Form-email -->

            <div class="form-group">
              <label for="message2">Message</label>
              <textarea class="form-control" id="message2" name="message" rows="5" onblur="if(this.value == '') this.value='Message'" onfocus="if(this.value == 'Message') this.value=''">Message</textarea>

              <div class="error" id="err-message" style="display: none;">Please enter message</div>
            </div> <!-- /col -->

            <div class="row">            
              <div class="col-xs-12">                               
                <button type="submit" class="btn btn-primary btn-shadow btn-rounded w-md" id="send">Submit</button>
              </div> <!-- /col -->
            </div> <!-- /row -->

          </div> <!-- /form -->
        </div> <!-- end col -->

      </div> <!-- end row -->
          
    </div>

<%@include file="footer.jsp" %>