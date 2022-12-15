<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Header start  -->
<%@include file="/WEB-INF/views/admin/include/header.jsp"%>
<!-- Header End -->


<!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-12">
              <ol class="breadcrumb ">
                <li class="breadcrumb-item"><a href="#">Quản lý</a></li>
                <li class="breadcrumb-item active">Sản phẩm</li>
              </ol>
            </div>
            <div class="col-sm-6">

            </div>

          </div>
        </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">

              <div class="card">
                <div class="card-header row">
                  <div class="col-md-10">
                    <h3 class="mt-3"><b>Danh sách sản phẩm</b></h3>
                  </div>
                  <div class="col-md-2">
                    <button type="submit" class="btn bg-primary mt-2" data-toggle="modal"
                      data-target="#modal-add-new"><i class="fas fa-plus mr-2"></i>Thêm mới</button>
                  </div>


                </div>
                <!-- /.card-header -->
                <div class="card-body">
                  <table id="table_1" class="table table-bordered table-striped text-center" >
                    <thead class="bg-primary ">
                      <tr>
                        <th>Mã SP</th>
                        <th>Loại</th>
                        <th>Tên SP</th>
                        <th>Giá mua</th>
                        <th>Giá bán</th>
                        <th>Thao Tác</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Trident
                          <!-- TridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTrident -->
                        </td>
                        <td class="text-center">Hồng</a>
                        </td>
                        
                        <td>Internet
                          Explorer 4.0
                        </td>
                        <td>400.000</td>
                        <td>500.000</td>
                        <td>
                          <div class="d-flex justify-content-between px-4">
                            <a class="" href="#" data-toggle="modal" data-target="#modal-info-detail"><i
                                class="fas fa-info-circle"></i> </a>
                            <a class="" href="#" data-toggle="modal" data-target="#modal-edit"><i
                                class="fas fa-edit"></i>
                            </a>
                            <a class="" href="#" data-toggle="modal" data-target="#exampleModalDelete">
                              <i class="fas fa-trash-alt"></i> </a>
                            <a class="" href="#" id="expand2" >
                              <i class="fas fa-plus-circle"></i> </a>
                            
                            <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalDisable"><i class="fas fa-lock"></i> </a> -->
                          </div>

                        </td>
                      </tr>

                      <tr>
                        <td>Misc</td>
                        <td class="text-center">Cúc</a>
                          </a></td>
                        
                        <td>Internet
                          Explorer 4.0
                        </td>
                        <td>300.000</td>
                        <td>350.000</td>
                        <td>
                          <div class="d-flex justify-content-between px-4">
                            <a class="" href="#" data-toggle="modal" data-target="#modal-info-detail"><i
                                class="fas fa-info-circle"></i> </a>
                            <a class="" href="#" data-toggle="modal" data-target="#modal-edit"><i
                                class="fas fa-edit"></i>
                            </a>
                            <a class="" href="#" data-toggle="modal" data-target="#exampleModalDelete">
                              <i class="fas fa-trash-alt"></i> </a>
                            <a class="" href="#" id="expand2">
                              <i class="fas fa-plus-circle"></i> </a>
                            <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalConfirm"><i
                                class="fas fa-lock-open"></i> </a> -->
                            <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalDisable"><i class="fas fa-lock"></i> </a> -->
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>Misc</td>
                        <td class="text-center">Linh lan</a>
                        
                        <td>Internet
                          Explorer 4.0
                        </td>
                        <td>400.000</td>
                        <td>450.000</td>
                        <td>
                          <div class="d-flex justify-content-between px-4">

                            <a class="" href="#" data-toggle="modal" data-target="#modal-info-detail"><i
                                class="fas fa-info-circle"></i> </a>
                            <a class="" href="#" data-toggle="modal" data-target="#modal-edit"><i
                                class="fas fa-edit"></i>
                            </a>
                            <a class="" href="#" data-toggle="modal" data-target="#exampleModalDelete">
                              <i class="fas fa-trash-alt"></i> </a>
                            <a class="" href="#" id="expand2">
                              <i class="fas fa-plus-circle"></i> </a>
                            <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalConfirm"><i
                                class="fas fa-lock-open"></i> </a> -->
                            <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalDisable"><i class="fas fa-lock"></i> </a> -->
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>Misc</td>
                        <td class="text-center">Violet</a>
                        <td>Internet
                          Explorer 4.0
                        </td>
                        
                        <td>500.000</td>
                        <td>550.000</td>

                        <td>
                          <div class="d-flex justify-content-between px-4">
                            <a class="" href="#" data-toggle="modal" data-target="#modal-info-detail"><i
                                class="fas fa-info-circle"></i> </a>
                            <a class="" href="#" data-toggle="modal" data-target="#modal-edit"><i
                                class="fas fa-edit"></i>
                            </a>
                            <a class="" href="#" data-toggle="modal" data-target="#exampleModalDelete">
                              <i class="fas fa-trash-alt"></i> </a>
                            <a class="" href="#" id="expand2">
                              <i class="fas fa-plus-circle"></i> </a>
                            <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalConfirm"><i
                              class="fas fa-lock-open"></i> </a> -->
                            <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalDisable"><i
                                class="fas fa-lock"></i> </a> -->
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>Other browsers</td>
                        <td class="text-center">Lan</a>
                        
                        <td>Internet
                          Explorer 4.0
                        </td>
                        <td>280.000</td>
                        <td>500.000</td>

                        <td>
                          <div class="d-flex justify-content-between px-4">
                            <a class="" href="#" data-toggle="modal" data-target="#modal-info-detail"><i
                                class="fas fa-info-circle"></i> </a>
                            <a class="" href="#" data-toggle="modal" data-target="#modal-edit"><i
                                class="fas fa-edit"></i>
                            </a>
                            <a class="" href="#" data-toggle="modal" data-target="#exampleModalDelete">
                              <i class="fas fa-trash-alt"></i> </a>
                            <a class="" href="#" id="expand2">
                              <i class="fas fa-plus-circle"></i> </a>
                            <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalConfirm"><i
                                class="fas fa-lock-open"></i> </a> -->
                            <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalDisable"><i class="fas fa-lock"></i> </a> -->
                          </div>
                        </td>
                      </tr>

                    </tbody>
                    <!-- <tfoot class="bg-primary">
                      <tr>
                        <th>Rendering engine</th>
                        <th>Browser</th>
                        <th>Platform(s)</th>
                        <th>Engine version</th>
                        <th>CSS grade</th>
                      </tr>
                    </tfoot> -->
                  </table>
                  <div id="SPDetail" style="display: none">
                    <hr>
                    <h3 class="mb-2 float-left"><b>Chi tiết sản phẩm #SP01</b></h3>
                    <button type="submit" class="btn bg-primary mt-2 float-right" data-toggle="modal"
                              data-target="#modal-add-new-detail"><i class="fas fa-plus mr-2"></i>Thêm chi tiết</button>
                    <hr style="clear: both;">
                    <table id="table_detail" class="table table-bordered table-striped text-center">
                        <thead class="bg-primary">
                          <tr>
                            <th scope="col">Mã CTSP</th>
                            <th scope="col">Vật liệu</th>
                            <th scope="col">Số lượng</th>
                            <th scope="col">Mô tả</th>
                            <th scope="col">Ảnh</th>
                            <th scope="col">Thao tác</th>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                            <td class="text-center"> <a href="https://i.pinimg.com/564x/a6/ed/a4/a6eda4f603f684811eee6aabd934c1ba.jpg" data-toggle="lightbox"
                              data-title="The juliet"><img src="https://i.pinimg.com/564x/a6/ed/a4/a6eda4f603f684811eee6aabd934c1ba.jpg" alt="Product Image"
                                class="img-size-50" /></a>
                            </td>
                            <td>
                                <div class="d-flex justify-content-around px-4">
                                  <!-- <a class="" href="#" data-toggle="modal" data-target="#modal-info-detail"><i
                                      class="fas fa-info-circle"></i> </a> -->
                                  <a class="" href="#" data-toggle="modal" data-target="#modal-edit-detail"><i
                                      class="fas fa-edit"></i>
                                  </a>
                                  <a class="" href="#" data-toggle="modal" data-target="#exampleModalDeleteDetail">
                                    <i class="fas fa-trash-alt"></i> </a>
                                  <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalDetail">
                                    <i class="fas fa-plus-circle"></i> </a> -->
                                  <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalConfirm"><i
                                      class="fas fa-lock-open"></i> </a> -->
                                  <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalDisable"><i class="fas fa-lock"></i> </a> -->
                                </div>
                            </td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                            <td class="text-center"> <a href="https://i.pinimg.com/564x/07/99/b0/0799b050a23dd3b1fd0865ecbca2e6c3.jpg" data-toggle="lightbox"
                              data-title="The pearl"><img src="https://i.pinimg.com/564x/07/99/b0/0799b050a23dd3b1fd0865ecbca2e6c3.jpg" alt="Product Image"
                                class="img-size-50" /></a>
                            </td>
                            <td>
                                <div class="d-flex justify-content-around px-4">
                                 
                                  <a class="" href="#" data-toggle="modal" data-target="#modal-edit-detail"><i
                                      class="fas fa-edit"></i>
                                  </a>
                                  <a class="" href="#" data-toggle="modal" data-target="#exampleModalDeleteDetail">
                                    <i class="fas fa-trash-alt"></i> </a>
                                  
                                </div>
                            </td>
                          </tr>
                          <tr>
                            <th scope="row">3</th>
                            <td>Larry</td>
                            <td>the Bird</td>
                            <td>@twitter</td>
                            <td class="text-center"> <a href="https://i.pinimg.com/564x/eb/5b/26/eb5b26805429a94537231fbe84362ead.jpg" data-toggle="lightbox"
                              data-title="The macchiato"><img src="https://i.pinimg.com/564x/eb/5b/26/eb5b26805429a94537231fbe84362ead.jpg" alt="Product Image"
                                class="img-size-50" /></a>
                            </td>
                            <td>
                                <div class="d-flex justify-content-around px-4">
                                  
                                  <a class="" href="#" data-toggle="modal" data-target="#modal-edit-detail"><i
                                      class="fas fa-edit"></i>
                                  </a>
                                  <a class="" href="#" data-toggle="modal" data-target="#exampleModalDeleteDetail">
                                    <i class="fas fa-trash-alt"></i> </a>
                                  
                                </div>
                            </td>
                          </tr>
                          
                        </tbody>
                      </table>
                      
                  </div>
                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->
            </div>
          </div>
          <!-- /.row -->

        </div>

      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <div class="modal fade" id="modal-info-detail">
      <div class="modal-dialog modal-lg modal-dialog-scrollable">
        <div class="modal-content">
          <div class="modal-header bg-primary">
            <h4 class="modal-title">Thông tin sản phẩm #SP01</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="row">
              <!-- /.col -->
              <div class="col-md-12">
                <form class="form-horizontal">
                  <div class="row">

                    <div class="col-md-12">

                      <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">Mã SP</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="inputName" placeholder="SP1">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail" class="col-sm-2 col-form-label">Tên SP</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="inputEmail" placeholder="Hoa hồng Đà Lạt">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputName2" class="col-sm-2 col-form-label">Loại</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="inputName2" placeholder="Hồng">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputExperience" class="col-sm-2 col-form-label">Giá mua</label>
                        <div class="col-sm-10">
                          <input class="form-control" id="inputExperience" placeholder="30$"></input>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputSkills" class="col-sm-2 col-form-label">Giá bán</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="inputSkills" placeholder="35$">
                        </div>
                      </div>
                      <!-- <div class="form-group row">
                        <label for="inputSkills" class="col-sm-2 col-form-label">Số lượng</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="inputSkills" placeholder="100">
                        </div>
                      </div> -->
                    
                    </div>
                  </div>

                </form>
              </div>
              <!-- /.col -->
            </div>
          </div>
          <!-- <div class="modal-footer justify-content-between">
            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
            <button type="button" class="btn bg-dark">Lưu</button>
          </div> -->
        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->

    <div class="modal fade" id="modal-add-new">
      <div class="modal-dialog modal-lg modal-dialog-scrollable">
        <div class="modal-content">
          <div class="modal-header bg-secondary">
            <h4 class="modal-title">Thêm sản phẩm</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="row">
              <!-- /.col -->
              <div class="col-md-12">
                <form class="form-horizontal">
                  <div class="row">

                    <div class="col-md-12">

                      <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">Mã SP</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="inputName" placeholder="SP1">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail" class="col-sm-2 col-form-label">Tên SP</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="inputEmail" placeholder="Hoa hồng Đà Lạt">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputName2" class="col-sm-2 col-form-label">Loại</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="inputName2" placeholder="Hồng">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputExperience" class="col-sm-2 col-form-label">Giá mua</label>
                        <div class="col-sm-10">
                          <input class="form-control" id="inputExperience" placeholder="30$"></input>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputSkills" class="col-sm-2 col-form-label">Giá bán</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="inputSkills" placeholder="35$">
                        </div>
                      </div>
                      <!-- <div class="form-group row">
                        <label for="inputSkills" class="col-sm-2 col-form-label">SĐT</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="inputSkills" placeholder="0123456789">
                        </div>
                      </div> -->

                    </div>
                  </div>

                </form>
              </div>
              <!-- /.col -->
            </div>
          </div>
          <div class="modal-footer justify-content-between">
            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
            <button type="button" class="btn bg-secondary">Lưu</button>
          </div>
        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->



    <div class="modal fade" id="modal-edit">
      <div class="modal-dialog modal-lg modal-dialog-scrollable">
        <div class="modal-content">
          <div class="modal-header bg-secondary">
            <h4 class="modal-title">Sửa sản phẩm #SP01</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="row">
              <!-- /.col -->
              <div class="col-md-12">

                        <form class="form-horizontal">
                          <div class="row">
        
                            <div class="col-md-12">
        
                              <div class="form-group row">
                                <label for="inputName" class="col-sm-2 col-form-label">Mã SP</label>
                                <div class="col-sm-10">
                                  <input type="email" class="form-control" id="inputName" placeholder="SP1">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="inputEmail" class="col-sm-2 col-form-label">Tên SP</label>
                                <div class="col-sm-10">
                                  <input type="email" class="form-control" id="inputEmail" placeholder="Hoa hồng Đà Lạt">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="inputName2" class="col-sm-2 col-form-label">Loại</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" id="inputName2" placeholder="Hồng">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="inputExperience" class="col-sm-2 col-form-label">Giá mua</label>
                                <div class="col-sm-10">
                                  <input class="form-control" id="inputExperience" placeholder="30$"></input>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="inputSkills" class="col-sm-2 col-form-label">Giá bán</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" id="inputSkills" placeholder="35$">
                                </div>
                              </div>
                              <!-- <div class="form-group row">
                                <label for="inputSkills" class="col-sm-2 col-form-label">SĐT</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" id="inputSkills" placeholder="0123456789">
                                </div>
                              </div> -->
        
                            </div>
                          </div>
                        </form>
                        <!-- /.Info profile -->
              </div>
              <!-- /.col -->
            </div>
          </div>
          <div class="modal-footer justify-content-between">
            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
            <button type="button" class="btn bg-secondary">Lưu thay đổi</button>
          </div>
        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
    </div>



    <div class="modal fade" id="modal-edit-detail">
      <div class="modal-dialog modal-lg modal-dialog-scrollable">
        <div class="modal-content">
          <div class="modal-header bg-secondary">
            <h4 class="modal-title">Sửa chi tiết sản phẩm #SP01</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="row">
              <!-- /.col -->
              <div class="col-md-12">

                        <form class="form-horizontal">
                          <div class="row">
        
                            <div class="col-md-12">
        
                              <div class="form-group row">
                                <label for="inputName" class="col-sm-2 col-form-label">Mã CTSP</label>
                                <div class="col-sm-10">
                                  <input type="email" class="form-control" id="inputName" placeholder="SP1">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="inputEmail" class="col-sm-2 col-form-label">Vật liệu</label>
                                <div class="col-sm-10">
                                  <input type="email" class="form-control" id="inputEmail" placeholder="Hoa hồng Đà Lạt">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="inputName2" class="col-sm-2 col-form-label">Số lượng</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" id="inputName2" placeholder="Hồng">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="inputExperience" class="col-sm-2 col-form-label">Mô tả</label>
                                <div class="col-sm-10">
                                  <textarea rows="4" cols="50" class="form-control" id="editor" placeholder="30$"></textarea>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="inputSkills" class="col-sm-2 col-form-label">Ảnh</label>
                                <div class="col-sm-10">
                                  <!-- <input type="text" class="form-control" id="inputSkills" placeholder="35$"> -->
                                <button class="btn btn-default"><i class="fas fa-upload"></i></button>
                                </div>
                              </div>
                              <!-- <div class="form-group row">
                                <label for="inputSkills" class="col-sm-2 col-form-label">SĐT</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" id="inputSkills" placeholder="0123456789">
                                </div>
                              </div> -->
        
                            </div>
                          </div>
                        </form>
                        <!-- /.Info profile -->
              </div>
              <!-- /.col -->
            </div>
          </div>
          <div class="modal-footer justify-content-between">
            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
            <button type="button" class="btn bg-secondary">Lưu</button>
          </div>
        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
    </div>





    <div class="modal fade" id="modal-add-new-detail">
      <div class="modal-dialog modal-lg modal-dialog-scrollable">
        <div class="modal-content">
          <div class="modal-header bg-secondary">
            <h4 class="modal-title">Thêm chi tiết sản phẩm #SP01</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="row">
              <!-- /.col -->
              <div class="col-md-12">

                        <form class="form-horizontal">
                          <div class="row">
        
                            <div class="col-md-12">
        
                              <div class="form-group row">
                                <label for="inputName" class="col-sm-2 col-form-label">Mã CTSP</label>
                                <div class="col-sm-10">
                                  <input type="email" class="form-control" id="inputName" placeholder="SP1">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="inputEmail" class="col-sm-2 col-form-label">Vật liệu</label>
                                <div class="col-sm-10">
                                  <input type="email" class="form-control" id="inputEmail" placeholder="Hoa hồng Đà Lạt">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="inputName2" class="col-sm-2 col-form-label">Số lượng</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" id="inputName2" placeholder="Hồng">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="inputExperience" class="col-sm-2 col-form-label">Mô tả</label>
                                <div class="col-sm-10">
                                  <textarea rows="4" cols="50" class="form-control" id="editor2" placeholder="30$"></textarea>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="inputSkills" class="col-sm-2 col-form-label">Ảnh</label>
                                <div class="col-sm-10">
                                  <!-- <input type="text" class="form-control" id="inputSkills" placeholder="35$"> -->
                                <button class="btn btn-default"><i class="fas fa-upload"></i></button>
                                </div>
                              </div>
                              <!-- <div class="form-group row">
                                <label for="inputSkills" class="col-sm-2 col-form-label">SĐT</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" id="inputSkills" placeholder="0123456789">
                                </div>
                              </div> -->
        
                            </div>
                          </div>
                        </form>
                        <!-- /.Info profile -->
              </div>
              <!-- /.col -->
            </div>
          </div>
          <div class="modal-footer justify-content-between">
            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
            <button type="button" class="btn bg-secondary">Lưu thay đổi</button>
          </div>
        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
    </div>




    <!-- Modal mở -->
    <div class="modal fade " id="exampleModalDelete" tabindex="-1" aria-labelledby="exampleModalDelete"
      aria-hidden="true">
      <div class="modal-dialog ">
        <div class="modal-content">
          <div class="modal-header bg-danger">
            <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-trash-alt"></i>
              &nbsp; Bạn muốn xóa sản phẩm #SP01?
            </h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <!-- <div class="modal-body">
            <p class="text-center">Bạn muốn mở hoạt động tài khoản này?</p>
          </div> -->
          <div class="modal-footer d-flex justify-content-between">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
            <button type="button" class="btn btn-danger" data-dismiss="modal">Xóa</button>
          </div>
        </div>
      </div>
    </div>
    <!-- /.modal  confirm mở-->



    <div class="modal fade " id="exampleModalDeleteDetail" tabindex="-1" aria-labelledby="exampleModalDelete"
    aria-hidden="true">
    <div class="modal-dialog ">
      <div class="modal-content">
        <div class="modal-header bg-danger">
          <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-trash-alt"></i>
            &nbsp; Bạn muốn xóa chi tiết sản phẩm #CTSP01?
          </h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <!-- <div class="modal-body">
          <p class="text-center">Bạn muốn mở hoạt động tài khoản này?</p>
        </div> -->
        <div class="modal-footer d-flex justify-content-between">
          <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Xóa</button>
        </div>
      </div>
    </div>
  </div>


   
    <!--Modal tắt hđ-->

    <footer class="main-footer">
      <div class="float-right d-none d-sm-block">
        <b>Version</b> 1.0.0
      </div>
      <strong>Copyright &copy; 2014-2022 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
      <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
  </div>
  <!-- ./wrapper -->



<script>
    // Click Open Img
    $(document).on('click', '[data-toggle="lightbox"]', function (event) {
      event.preventDefault();
      $(this).ekkoLightbox();
    });

    // Datatable
    $(function () {
      $("#example3").DataTable({
        "responsive": true,
        "ordering": true,
        "autoWidth": false,
        "language": {
          "lengthMenu": "Hiện _MENU_ dòng mỗi trang",
          "zeroRecords": "Không có kết quả phù hợp",
          "info": "Trang _PAGE_ / _PAGES_",
          "infoEmpty": "Không tìm thấy kết quả",
          "infoFiltered": "(filtered from _MAX_ total records)",
          "loadingRecords": "Đang tải...",
          "search": "Tìm kiếm:",
          paginate: {
            previous: '‹',
            next: '›'
          },
        },
        columnDefs: [{
          orderable: false,
          targets: 1
        }, {
          orderable: false,
          targets: 6
        }]

      })
      $("#example1").DataTable({
        "responsive": true,
        "lengthChange": false,
        "autoWidth": false,
        "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
      $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false,
        "responsive": true,
      });

      $('#table_1')
      .DataTable({
        columnDefs: [{ orderable: false, targets: 5 }],
        paginate: {
            previous: '‹',
            next: '›'
          },
        "responsive": true,
        "ordering": true,
        "autoWidth": false,
          "language": {
          "lengthMenu": "Hiện _MENU_ dòng mỗi trang",
          "zeroRecords": "Không có kết quả phù hợp",
          "info": "Trang _PAGE_ / _PAGES_",
          "infoEmpty": "Không tìm thấy kết quả",
          "infoFiltered": "(filtered from _MAX_ total records)",
          "loadingRecords": "Đang tải...",
          "search": "Tìm kiếm:",
          paginate: {
            previous: '‹',
            next: '›'
          }}
      });

      $("#expand2").click(function(){
            $("#SPDetail").toggle();
        });

    });

  </script>
  <script>
    ClassicEditor
      .create( document.querySelector( '#editor' ) )
      .then( editor => {
        window.editor = editor;
      } )
      .catch( error => {
        console.error( 'There was a problem initializing the editor.', error );
      } );
      ClassicEditor
      .create( document.querySelector( '#editor2' ) )
      .then( editor => {
        window.editor = editor;
      } )
      .catch( error => {
        console.error( 'There was a problem initializing the editor.', error );
      } );
  </script>
  
  
<!-- JS Lib -->
<%@include file="/WEB-INF/views/admin/include/jsLib.jsp"%>
<!-- JS Lib End -->