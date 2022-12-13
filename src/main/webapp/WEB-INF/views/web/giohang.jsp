<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Header start  -->
<%@include file="/WEB-INF/views/web/include/header.jsp"%>
<!-- Header End -->


<!-- breadcrums section start -->
  <section class="breadcrumb_section container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item active" aria-current="page">Shopping Basket</li>
        </ol>
      </nav>
  </section>
  <!-- breadcrums section end -->

  <!-- start account section -->

  <section class="section_cart mb-5">
    <div class="card">
        <div class="row">
            <div class="col-md-8 cart">
                <div class="title">
                    <div class="row">
                        <div class="col"><h4><b>Basket</b></h4></div>
                        <div class="col align-self-center text-right" style="color:#568B57;">3 bouquets</div>
                    </div>
                </div>    
                <div class="row border-top border-bottom">
                    <div class="row main align-items-center">
                        <div class="col-2"><img class="img-fluid" src="https://i.pinimg.com/564x/30/fe/2b/30fe2bb2371e7d7be4b559b908025808.jpg"></div>
                        <div class="col">
                            <div class="row ">The Machiato</div>
                            <div class="row text-muted">Size: Delux</div>
                        </div>
                        <div class="col">
                            <a href="#">-</a><a href="#" class="border">1</a><a href="#">+</a>
                        </div>
                        <div class="col">44.00$ <span class="close">&#10005;</span></div>
                    </div>
                </div>
                <div class="row">
                    <div class="row main align-items-center">
                        <div class="col-2"><img class="img-fluid" src="https://i.pinimg.com/564x/09/6b/58/096b58a119585418f45a4f71f750e6c4.jpg"></div>
                        <div class="col">
                            <div class="row ">The Luna</div>
                            <div class="row text-muted">Size: Grand</div>
                        </div>
                        <div class="col">
                            <a href="#">-</a><a href="#" class="border">1</a><a href="#">+</a>
                        </div>
                        <div class="col">44.00$ <span class="close">&#10005;</span></div>
                    </div>
                </div>
                <div class="row border-top border-bottom">
                    <div class="row main align-items-center">
                        <div class="col-2"><img class="img-fluid" src="https://i.pinimg.com/564x/38/6d/b4/386db4e109b97982550308463300a403.jpg"></div>
                        <div class="col">
                            <div class="row ">The Scorpio</div>
                            <div class="row text-muted">Size: Original</div>
                        </div>
                        <div class="col">
                            <a href="#">-</a><a href="#" class="border">1</a><a href="#">+</a>
                        </div>
                        <div class="col">44.00$ <span class="close">&#10005;</span></div>
                    </div>
                </div>
                <div class="back-to-shop"><a href="#">&leftarrow;</a><span class="" style="color:#568B57;">Back to shop</span></div>
            </div>
            <div class="col-md-4 summary">
                <div><h5><b>Summary</b></h5></div>
                <hr>
                <div class="row">
                    <div class="col" style="padding-left:0; ">3 BOUQUETS</div>
                    <div class="col text-right">132.00$</div>
                </div>
                <form>
                    <p>SHIPPING</p>
                    <select><option class="text-muted">Standard-Delivery- 5.00$</option></select>
                    <p>GIVE CODE</p>
                    <input id="code" placeholder="Enter your code">
                </form>
                <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                    <div class="col">TOTAL PRICE</div>
                    <div class="col text-right">137.00$</div>
                </div>
                <button class="btn" style="background-color: #085B45;">CHECKOUT</button>
            </div>
        </div>
        
    </div>
  </section>

  <!-- end account section -->


<!-- Footer -->
<%@include file="/WEB-INF/views/web/include/footer.jsp"%>
<!-- Footer End -->


<!-- JS Lib -->
<%@include file="/WEB-INF/views/web/include/jsLib.jsp"%>
<!-- JS Lib End -->