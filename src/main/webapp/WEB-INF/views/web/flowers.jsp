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
          <li class="breadcrumb-item active" aria-current="page">Flowers</li>
        </ol>
      </nav>
  </section>
  <!-- breadcrums section end -->

  <section class="mb-4">
    <div class="py-4 text-center d-flex justify-content-center align-items-center" style="height: 150px; background-image: url(https://media.urbanstems.com/image/upload/f_auto/v1644430329/Blog/ShopAll_banner_ylypk9.jpg); background-size: cover; background-repeat: no-repeat;">
      <h2 class="mb-2" style="vertical-align: middle;">ALL FLOWERS</h2>
    </div>
  </section>

  <!-- start section all flowers -->

  <section class="all_section">
    <div class="container text-center">
        <h5>WHEN DO YOU NEED YOUR DELIVERY?</h5>
        <div class="d-flex justify-content-center when">
            <a class="btn when_item " href="#">ASAP</a>
            <a class="btn when_item" href="#">Choose time</a>
            <a class="btn when_item active_when" href="#">No rush</a>
        </div>
        <div class="float-left text-muted mt-4 mb-4 d-flex flex-row">
            <div><i class="bi bi-filter-left" style="font-size: 25px ;"></i> SORT BY: &nbsp</div>
            <div class="sort_item selected" style="line-height:44px;"><small>All</small></div>
            <div class="sort_item" style="line-height:44px;"><small>Best sellers</small></div>
            <div class="sort_item" style="line-height:44px;"><small>First available</small></div>
            <div class="sort_item" style="line-height:44px;"><small>Price: low to high</small></div>
            <div class="sort_item" style="line-height:44px;"><small>Price: high to low</small></div>
        </div>
        
        <div class="float-right text-muted mt-4 mb-4" >
            <i class="bi bi-flower3" style="font-size: 25px ;"></i> FLOWER TYPE:
            <select class="form-select" aria-label="Default select example" style="border: 0;">
                <option selected>Violet</option>
                <option value="1">Rose</option>
                <option value="2">Tulip</option>
                <option value="3">Orchid</option>
                <option value="3">Lily</option>
                <option value="3">Freesia</option>
                <option value="3">Dahlia</option>
            </select>
        </div> 
        
        <div class="row" style="clear:both;">
            <div class="product_item col-md-4 d-flex flex-column">
                <div class="div_img">
                    <!-- <img src="https://i.pinimg.com/564x/9e/6e/a8/9e6ea8bf628ef7f30a0ab6a4cdb03904.jpg"> -->
                    <div class="badge_img">Best seller</div>
                </div>
                <div class="d-flex flex-row justify-content-between px-2 py-2" style="background-color: #FBEDE2;">
                    <div><strong>THE MANOR</strong></div>
                    <div><strong>49$</strong></div>
                    
                </div>
                <small class="text-right px-2 pb-2" style="background-color: #FBEDE2;">Hand Delivery</small>
                
            </div>
            <div class="product_item col-md-4 d-flex flex-column">
                <div class="div_img">
                    <!-- <img src="https://i.pinimg.com/564x/10/db/8b/10db8bc384ab440daee4d3a77c2f4939.jpg"> -->
                    <div class="badge_img">Best seller</div>
                </div>
                <div class="d-flex flex-row justify-content-between px-2 py-2" style="background-color: #FBEDE2;">
                    <div><strong>THE JULIET</strong></div>
                    <div><strong>68$</strong></div>
                </div>
                <small class="text-right px-2 pb-2" style="background-color: #FBEDE2;">Hand Delivery</small>
            </div>
            <div class="product_item col-md-4 d-flex flex-column">
                <div class="div_img">
                    <!-- <img src="https://i.pinimg.com/564x/e9/29/ce/e929cea3a9335896622e6ebc85ac896e.jpg"> -->
                    <div class="badge_img">New arrival</div>
                </div>
                <div class="d-flex flex-row justify-content-between px-2 py-2" style="background-color: #FBEDE2;">
                    <div><strong>THE LUNA</strong></div>
                    <div><strong>48$</strong></div>
                </div>
                <small class="text-right px-2 pb-2" style="background-color: #FBEDE2;">Hand Delivery</small>
            </div>
        </div>
        <div class="row mt-4">
            <div class="product_item col-md-4 d-flex flex-column">
                <div class="div_img">
                    <!-- <img src="https://i.pinimg.com/564x/9e/6e/a8/9e6ea8bf628ef7f30a0ab6a4cdb03904.jpg"> -->
                    <div class="badge_img ">Available</div>
                </div>
                <div class="d-flex flex-row justify-content-between px-2 py-2" style="background-color: #FBEDE2;">
                    <div><strong>THE MANOR</strong></div>
                    <div><strong>49$</strong></div>
                </div>
                <small class="text-right px-2 pb-2" style="background-color: #FBEDE2;">Hand Delivery</small>
            </div>
            <div class="product_item col-md-4 d-flex flex-column">
                <div class="div_img">
                    <!-- <img src="https://i.pinimg.com/564x/10/db/8b/10db8bc384ab440daee4d3a77c2f4939.jpg"> -->
                    <div class="badge_img">Best seller</div>
                </div>
                <div class="d-flex flex-row justify-content-between px-2 py-2" style="background-color: #FBEDE2;">
                    <div><strong>THE JULIET</strong></div>
                    <div><strong>68$</strong></div>
                </div>
                <small class="text-right px-2 pb-2" style="background-color: #FBEDE2;">Overnight Shipping</small>
            </div>
            <div class="product_item col-md-4 d-flex flex-column">
                <div class="div_img">
                    <!-- <img src="https://i.pinimg.com/564x/e9/29/ce/e929cea3a9335896622e6ebc85ac896e.jpg"> -->
                    <div class="badge_img">New arrival</div>
                </div>
                <div class="d-flex flex-row justify-content-between px-2 py-2" style="background-color: #FBEDE2;">
                    <div><strong>THE LUNA</strong></div>
                    <div><strong>48$</strong></div>
                </div>
                <small class="text-right px-2 pb-2" style="background-color: #FBEDE2;">Hand Delivery</small>
            </div>
        </div>
        <div class="row mt-4">
            <div class="product_item col-md-4 d-flex flex-column">
                <div class="div_img">
                    <!-- <img src="https://i.pinimg.com/564x/9e/6e/a8/9e6ea8bf628ef7f30a0ab6a4cdb03904.jpg"> -->
                    <div class="badge_img">Available</div>
                </div>
                <div class="d-flex flex-row justify-content-between px-2 py-2" style="background-color: #FBEDE2;">
                    <div><strong>THE MANOR</strong></div>
                    <div><strong>49$</strong></div>
                </div>
                <small class="text-right px-2 pb-2" style="background-color: #FBEDE2;">Hand Delivery</small>
            </div>
            <div class="product_item col-md-4 d-flex flex-column">
                <div class="div_img">
                    <!-- <img src="https://i.pinimg.com/564x/10/db/8b/10db8bc384ab440daee4d3a77c2f4939.jpg"> -->
                    <div class="badge_img">New arrival</div>
                </div>
                <div class="d-flex flex-row justify-content-between px-2 py-2" style="background-color: #FBEDE2;">
                    <div><strong>THE JULIET</strong></div>
                    <div><strong>68$</strong></div>
                </div>
                <small class="text-right px-2 pb-2" style="background-color: #FBEDE2;">Hand Delivery</small>
            </div>
            <div class="product_item col-md-4 d-flex flex-column">
                <div class="div_img">
                    <!-- <img src="https://i.pinimg.com/564x/e9/29/ce/e929cea3a9335896622e6ebc85ac896e.jpg"> -->
                    <div class="badge_img">Best seller</div>
                </div>
                
                <div class="d-flex flex-row justify-content-between px-2 py-2" style="background-color: #FBEDE2;">
                    <div><strong>THE LUNA</strong></div>
                    <div><strong>48$</strong></div>
                </div>
                <small class="text-right px-2 pb-2" style="background-color: #FBEDE2;">Only 1 Left</small>
            </div>
        </div>
        <div class="row mt-4">
            <div class="product_item col-md-4 d-flex flex-column">
                <div class="div_img">
                    <!-- <img src="https://i.pinimg.com/564x/9e/6e/a8/9e6ea8bf628ef7f30a0ab6a4cdb03904.jpg"> -->
                    <div class="badge_img">New arrival</div>
                </div>
                <div class="d-flex flex-row justify-content-between px-2 py-2" style="background-color: #FBEDE2;">
                    <div><strong>THE MANOR</strong></div>
                    <div><strong>49$</strong></div>
                </div>
                <small class="text-right px-2 pb-2" style="background-color: #FBEDE2;">Hand Delivery</small>
            </div>
            <div class="product_item col-md-4 d-flex flex-column">
                <div class="div_img">
                    <!-- <img src="https://i.pinimg.com/564x/10/db/8b/10db8bc384ab440daee4d3a77c2f4939.jpg"> -->
                    <div class="badge_img">Available</div>
                </div>
                <div class="d-flex flex-row justify-content-between px-2 py-2" style="background-color: #FBEDE2;">
                    <div><strong>THE JULIET</strong></div>
                    <div><strong>68$</strong></div>
                </div>
                <small class="text-right px-2 pb-2" style="background-color: #FBEDE2;">Hand Delivery</small>
            </div>
            <div class="product_item col-md-4 d-flex flex-column">
                <div class="div_img">
                    <!-- <img src="https://i.pinimg.com/564x/e9/29/ce/e929cea3a9335896622e6ebc85ac896e.jpg"> -->
                    <div class="badge_img">Best seller</div>
                </div>
                <div class="d-flex flex-row justify-content-between px-2 py-2" style="background-color: #FBEDE2;">
                    <div><strong>THE LUNA</strong></div>
                    <div><strong>48$</strong></div>
                </div>
                <small class="text-right px-2 pb-2" style="background-color: #FBEDE2;">Hand Delivery</small>
            </div>
        </div>
    </div>
  </section>

  <!-- end section all flowers -->

  <section class=" container pagination_section mt-4">
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-end">
          <li class="page-item disabled">
            <a class="page-link" href="#" tabindex="-1">Pre</a>
          </li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item">
            <a class="page-link" href="#">Next</a>
          </li>
        </ul>
      </nav>
  </section>

  <section class="container mt-lg-5">
    <h4 class="h4">Farm-Fresh Flowers In Modern Arrangements</h4>
    <p class="text-justify">
        There’s no question that flowers have become a staple when it comes to freshening up your living space or just letting someone know you’re thinking about them. But nobody enjoys a bouquet with a short vase life. Luckily for all the flower lovers out there, The Bouqs Co. has you covered. We source our flowers from the highest quality sustainable farms. This means your bouquets are delivered farm-fresh, so they last a long time and maintain a lush, vibrant appearance. Because who likes a wilted Bouq? Not us!
        <br>Do you work from home and love flowers? Download one of our flower backgrounds for Zoom.
    </p>
    <h4>Artisan Crafted Floral Arrangements</h4>
    <p class="mb-lg-5 text-justify">
        Our vibrant arrangements are designed by florists who care about quality and variety. You can choose from different assortments of the freshest roses, tulips, peonies, lilies, and more! If you're wondering which type of flower to send, check out our wonderful selection. Need flowers delivered today? We offer same-day delivery in some ZIP codes when you order by noon in your recipient's time zone!
    </p>
  </section>


<!-- Footer -->
<%@include file="/WEB-INF/views/web/include/footer.jsp"%>
<!-- Footer End -->


<!-- JS Lib -->
<%@include file="/WEB-INF/views/web/include/jsLib.jsp"%>
<!-- JS Lib End -->