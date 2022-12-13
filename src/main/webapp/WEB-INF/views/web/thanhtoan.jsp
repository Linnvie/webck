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
          <li class="breadcrumb-item"><a href="#">Shopping Basket</a></li>
          <li class="breadcrumb-item active" aria-current="page">Checkout</li>
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
                        <div class="col"><h4><b>Checkout</b></h4></div>
                        <div class="col align-self-center text-right" style="color:#568B57;">3 bouquets</div>
                    </div>
                </div>    
                <div class="row border-top border-bottom">
                    <div class="row main align-items-center">
                        <div class="col-2"><img class="img-fluid" src="https://i.pinimg.com/564x/30/fe/2b/30fe2bb2371e7d7be4b559b908025808.jpg"></div>
                        <div class="col-4">
                            <div class="row ">The Machiato</div>
                            <div class="row text-muted">Size: Delux</div>
                        </div>
                        <div class="col-3">
                            <a href="#"></a><a href="#" class="">1</a><a href="#"></a>
                        </div>
                        <div class="col-3 text-right">44.00$</div>
                    </div>
                </div>
                <div class="row">
                    <div class="row main align-items-center">
                        <div class="col-2"><img class="img-fluid" src="https://i.pinimg.com/564x/09/6b/58/096b58a119585418f45a4f71f750e6c4.jpg"></div>
                        <div class="col-4">
                            <div class="row ">The Luna</div>
                            <div class="row text-muted">Size: Grand</div>
                        </div>
                        <div class="col-3">
                            <a href="#"></a><a href="#" class="">1</a><a href="#"></a>
                        </div>
                        <div class="col-3 text-right">44.00$</div>
                    </div>
                </div>
                <div class="row border-top border-bottom">
                    <div class="row main align-items-center">
                        <div class="col-2"><img class="img-fluid" src="https://i.pinimg.com/564x/38/6d/b4/386db4e109b97982550308463300a403.jpg"></div>
                        <div class="col-4">
                            <div class="row ">The Scorpio</div>
                            <div class="row text-muted">Size: Original</div>
                        </div>
                        <div class="col-3">
                            <a href="#"></a><a href="#" class="">1</a><a href="#"></a>
                        </div>
                        <div class="col-3 text-right">44.00$</div>
                    </div>
                </div>
                <!-- <div class="back-to-shop"><a href="#">&leftarrow;</a><span class="" style="color:#568B57;">Back to shop</span></div> -->
                <div class="mt-5 d-flex flex-column justify-content-end ">
                    <div>
                        <div class="float-left" style="clear: both;">Shipping</div>
                        <div class="float-right mr-3">5.00$</div>
                    </div>
                    <div>
                        <div class="float-left mt-3"  style="clear: both;">Discount</div>
                        <div class="float-right mt-3 mr-3">0.00$</div>
                    </div>
                    <div>
                        <h5 class="float-left" style="clear: both;">TOTAL PRICE</h5>
                        <h5 class="float-right mr-3">135$</h5>
                    </div>
                    
                    
                </div>
                <button class="float-right px-5 py-2 mt-4 mr-3" style="background-color: #085B45; border: 0; color: #ffffff">PURCHASE</button>
            
            </div>
            <div class="col-md-4 summary">
                <div><h5><b>Payment</b></h5></div>
                <hr>
                <div class="d-flex flex-row justify-content-between">
                    <small style="line-height: 35px;" >Select payment method</small>
                    <select class="form-select" aria-label="Default select example" style="margin: 0; font-size: 13px; width: 130px; height: 40px; border-radius: 5px;">
                        <option >Cash</option>
                        <option selected value="3">Credit Card</option>
                    </select>
                </div>
                
                <form>
                    <div class="form-group" style="margin: 0;">
                        <small for="exampleInputEmail1">Card Number</small>
                        <input style="margin: 0; font-size: 13px;" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="">
                        <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                    </div>
                    <div class="form-group" style="margin: 0;">
                        <small for="exampleInputPassword1">Card Holder</small>
                        <input style="margin: 0; font-size: 13px;" type="password" class="form-control" id="exampleInputPassword1" placeholder="">
                    </div>
                    <div class="d-flex justify-content-between">
                      <div class="mr-3">
                        <small>Expires</small>
                        <input type="text" class="form-control" placeholder="" style="margin: 0; font-size: 13px;">
                      </div>
                      <div class="">
                        <small>CVC</small>
                        <input type="text" class="form-control" placeholder="" style="margin: 0; font-size: 13px;">
                      </div>
                    </div>
                </form>
                <hr>
                <div class="mt-5">
                  <div class="mb-3"><h5><b>Address</b></h5></div>
                  <hr>
                  <div>
                    <div style="font-size: 13px;">Send to your address</div>
                    <select id="option-address" class="form-select" aria-label="Default select example" style="margin: 0; font-size: 13px; height: 40px; border-radius: 5px; ">
                      <option selected  value="3">79 Tavistock DrTuckerton, New Jersey(NJ)</option>
                      <option value="3" >Add new address...</option>
                    </select>
                  </div>
                  <div class="new_address" style="display: none;">
                    <small class="text-muted">Please enter your new address</small>
                    <form class="form-horizontal" role="form" style="padding-top: 5px;">
                      <fieldset >
                        <!-- Text input-->
                        <div class="form-group" style="margin: 0;">
                          <small class=" control-label" for="textinput">Line 1</small>
                          <div class="">
                            <input type="text" placeholder="Address Line 1" class="form-control" style="margin: 0; font-size: 13px;">
                          </div>
                        </div>
              
                        <!-- Text input-->
                        <div class="form-group" style="margin: 0;">
                          <small class=" control-label" for="textinput">Line 2</small>
                          <div class="">
                            <input type="text" placeholder="Address Line 2" class="form-control" style="margin: 0; font-size: 13px;">
                          </div>
                        </div>
              
                        <!-- Text input-->
                        <div class="form-group" style="margin: 0;">
                          <small class=" control-label" for="textinput">City</small>
                          <div class="">
                            <input type="text" placeholder="City" class="form-control" style="margin: 0; font-size: 13px;">
                          </div>
                        </div>
              
                        <!-- Text input-->
                        <div class="form-group" style="margin: 0;">
                          <small class=" control-label" for="textinput">State</small>
                          <div class="">
                            <input type="text" placeholder="State" class="form-control" style="margin: 0; font-size: 13px;">
                          </div>
                        </div>

                        <div class="form-group" style="margin: 0;">
                          <small class=" control-label" for="textinput">Phone Number</small>
                          <div class="">
                            <input type="text" placeholder="+84-392-648-746" class="form-control" style="margin: 0; font-size: 13px;">
                          </div>
                        </div>

                      </fieldset>
                    </form>
                  </div>
                  <div class="text-center my-3">OR</div>
                  <button class="btn" style="font-size: 13px; background-color: #085B45; border: 0; padding: 10px 0px; margin: 0 0 15px 0;" id="btn-gift"><i class="fa-solid fa-gift"></i> &nbsp; Send as a gift</button>
                  <div class="send_gift" style="display: none;">
                    <small class="text-muted">Please enter recipient's address</small>
                    <form class="form-horizontal" role="form" style="padding-top: 5px;">
                      <fieldset >
                        <!-- Text input-->
                        <div class="form-group" style="margin: 0;">
                          <small class=" control-label" for="textinput">Line 1</small>
                          <div class="">
                            <input type="text" placeholder="Address Line 1" class="form-control" style="margin: 0; font-size: 13px;">
                          </div>
                        </div>
              
                        <!-- Text input-->
                        <div class="form-group" style="margin: 0;">
                          <small class=" control-label" for="textinput">Line 2</small>
                          <div class="">
                            <input type="text" placeholder="Address Line 2" class="form-control" style="margin: 0; font-size: 13px;">
                          </div>
                        </div>
              
                        <!-- Text input-->
                        <div class="form-group" style="margin: 0;">
                          <small class=" control-label" for="textinput">City</small>
                          <div class="">
                            <input type="text" placeholder="City" class="form-control" style="margin: 0; font-size: 13px;">
                          </div>
                        </div>
              
                        <!-- Text input-->
                        <div class="form-group" style="margin: 0;">
                          <small class=" control-label" for="textinput">State</small>
                          <div class="">
                            <input type="text" placeholder="State" class="form-control" style="margin: 0; font-size: 13px;">
                          </div>
                        </div>

                        <div class="form-group" style="margin: 0;">
                          <small class=" control-label" for="textinput">Phone Number</small>
                          <div class="">
                            <input type="text" placeholder="+84-392-648-746" class="form-control" style="margin: 0; font-size: 13px;">
                          </div>
                        </div>

                      </fieldset>
                    </form>
                  </div>
                </div>
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