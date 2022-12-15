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
                <li class="breadcrumb-item active">Nhà cung cấp</li>
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
                    <h3 class="mt-3"><b>Danh sách nhà cung cấp</b></h3>
                  </div>
                  <div class="col-md-2">
                    <button type="submit" class="btn bg-primary mt-2" data-toggle="modal"
                      data-target="#modal-add-new"><i class="fas fa-plus mr-2"></i>Thêm mới</button>
                  </div>


                </div>
                <!-- /.card-header -->
                <div class="card-body">
                  <table id="tableNCC" class="table table-bordered table-striped text-center" >
                    <thead class="bg-primary ">
                      <tr>
                        <th>Mã NCC</th>
                        <th>Tên NCC</th>
                        <th>Địa chỉ</th>
                        
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
                        
                        <td>400$</td>
                        <td>
                          <div class="d-flex justify-content-around px-4">
                            <a class="" href="#" data-toggle="modal" data-target="#modal-info-detail"><i
                                class="fas fa-info-circle"></i> </a>
                            <a class="" href="#" data-toggle="modal" data-target="#modal-edit"><i
                                class="fas fa-edit"></i>
                            </a>
                            <a class="" href="#" data-toggle="modal" data-target="#exampleModalDelete">
                              <i class="fas fa-trash-alt"></i> </a>
                            <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalConfirm">
                                <i class="far fa-check-circle"></i> </a> -->
                            <!-- <a class="" href="#" id="expand" >
                              <i class="fas fa-plus-circle"></i> </a> -->
                            
                            <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalDisable">
                                <i class="fas fa-lock"></i> </a> -->
                          </div>

                        </td>
                      </tr>

                      <tr>
                        <td>Misc</td>
                        <td class="text-center">Cúc</a>
                          </a></td>
                        
                        
                        <td>300$</td>
                        <td>
                            <div class="d-flex justify-content-around px-4">
                              <a class="" href="#" data-toggle="modal" data-target="#modal-info-detail"><i
                                  class="fas fa-info-circle"></i> </a>
                              <a class="" href="#" data-toggle="modal" data-target="#modal-edit"><i
                                  class="fas fa-edit"></i>
                              </a>
                              <a class="" href="#" data-toggle="modal" data-target="#exampleModalDelete">
                                <i class="fas fa-trash-alt"></i> </a>
                              <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalConfirm">
                                  <i class="far fa-check-circle"></i> </a> -->
                              <!-- <a class="" href="#" id="expand" >
                                <i class="fas fa-plus-circle"></i> </a> -->
                              
                              <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalDisable">
                                  <i class="fas fa-lock"></i> </a> -->
                            </div>
  
                          </td>
                      </tr>
                      <tr>
                        <td>Misc</td>
                        <td class="text-center">Linh lan</a>
                        
                       
                        <td>400$</td>
                        <td>
                            <div class="d-flex justify-content-around px-4">
                              <a class="" href="#" data-toggle="modal" data-target="#modal-info-detail"><i
                                  class="fas fa-info-circle"></i> </a>
                              <a class="" href="#" data-toggle="modal" data-target="#modal-edit"><i
                                  class="fas fa-edit"></i>
                              </a>
                              <a class="" href="#" data-toggle="modal" data-target="#exampleModalDelete">
                                <i class="fas fa-trash-alt"></i> </a>
                              <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalConfirm">
                                  <i class="far fa-check-circle"></i> </a> -->
                              <!-- <a class="" href="#" id="expand" >
                                <i class="fas fa-plus-circle"></i> </a> -->
                              
                              <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalDisable">
                                  <i class="fas fa-lock"></i> </a> -->
                            </div>
  
                          </td>
                      </tr>
                      <tr>
                        <td>Misc</td>
                        <td class="text-center">Violet</a>
                    
                        <td>380$</td>

                        <td>
                            <div class="d-flex justify-content-around px-4">
                              <a class="" href="#" data-toggle="modal" data-target="#modal-info-detail"><i
                                  class="fas fa-info-circle"></i> </a>
                              <a class="" href="#" data-toggle="modal" data-target="#modal-edit"><i
                                  class="fas fa-edit"></i>
                              </a>
                              <a class="" href="#" data-toggle="modal" data-target="#exampleModalDelete">
                                <i class="fas fa-trash-alt"></i> </a>
                              <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalConfirm">
                                  <i class="far fa-check-circle"></i> </a> -->
                              <!-- <a class="" href="#" id="expand" >
                                <i class="fas fa-plus-circle"></i> </a> -->
                              
                              <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalDisable">
                                  <i class="fas fa-lock"></i> </a> -->
                            </div>
  
                          </td>
                      </tr>
                      <tr>
                        <td>Other browsers</td>
                        <td class="text-center">Lan</a>
                       
                        <td>280$</td>
                        <td>
                            <div class="d-flex justify-content-around px-4">
                              <a class="" href="#" data-toggle="modal" data-target="#modal-info-detail"><i
                                  class="fas fa-info-circle"></i> </a>
                              <a class="" href="#" data-toggle="modal" data-target="#modal-edit"><i
                                  class="fas fa-edit"></i>
                              </a>
                              <a class="" href="#" data-toggle="modal" data-target="#exampleModalDelete">
                                <i class="fas fa-trash-alt"></i> </a>
                              <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalConfirm">
                                  <i class="far fa-check-circle"></i> </a> -->
                              <!-- <a class="" href="#" id="expand" >
                                <i class="fas fa-plus-circle"></i> </a> -->
                              
                              <!-- <a class="" href="#" data-toggle="modal" data-target="#exampleModalDisable">
                                  <i class="fas fa-lock"></i> </a> -->
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
            <h4 class="modal-title">Thông tin nhà cung cấp #NCC01</h4>
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
                          <label for="inputName" class="col-sm-2 col-form-label">Mã NCC</label>
                          <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputName" placeholder="PN01">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="inputEmail" class="col-sm-2 col-form-label">Tên NCC</label>
                          <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputEmail" placeholder="NV01">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="inputName2" class="col-sm-2 col-form-label">Địa chỉ</label>
                          <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputName2" placeholder="20/12/2022">
                          </div>
                        </div>
                        
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
            <h4 class="modal-title">Thêm nhà cung cấp</h4>
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
                          <label for="inputName" class="col-sm-2 col-form-label">Mã NCC</label>
                          <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputName" placeholder="PN01">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="inputEmail" class="col-sm-2 col-form-label">Tên NCC</label>
                          <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputEmail" placeholder="NV01">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="inputName2" class="col-sm-2 col-form-label">Địa chỉ</label>
                          <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputName2" placeholder="20/12/2022">
                          </div>
                        </div>
                        
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
            <h4 class="modal-title">Sửa nhà cung cấp #NCC01</h4>
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
                          <label for="inputName" class="col-sm-2 col-form-label">Mã NCC</label>
                          <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputName" placeholder="PN01">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="inputEmail" class="col-sm-2 col-form-label">Tên NCC</label>
                          <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputEmail" placeholder="NV01">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="inputName2" class="col-sm-2 col-form-label">Địa chỉ</label>
                          <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputName2" placeholder="20/12/2022">
                          </div>
                        </div>
                        
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
              <h4 class="modal-title">Sửa chi tiết phiếu nhập #PN01</h4>
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
                            <label for="inputName" class="col-sm-2 col-form-label">Mã CTPN</label>
                            <div class="col-sm-10">
                              <input type="email" class="form-control" id="inputName" placeholder="PN01">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="inputEmail" class="col-sm-2 col-form-label">Vật liệu</label>
                            <div class="col-sm-10">
                              <input type="email" class="form-control" id="inputEmail" placeholder="NV01">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="inputName2" class="col-sm-2 col-form-label">Số lượng</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" id="inputName2" placeholder="20/12/2022">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="inputExperience" class="col-sm-2 col-form-label">Giá nhập</label>
                            <div class="col-sm-10">
                              <input class="form-control" id="inputExperience" placeholder="ABC"></input>
                            </div>
                          </div>
                          <!-- <div class="form-group row">
                            <label for="inputSkills" class="col-sm-2 col-form-label">Giá bán</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" id="inputSkills" placeholder="35$">
                            </div>
                          </div> -->
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





      <div class="modal fade" id="modal-add-new-detail">
        <div class="modal-dialog modal-lg modal-dialog-scrollable">
          <div class="modal-content">
            <div class="modal-header bg-secondary">
              <h4 class="modal-title">Thêm chi tiết phiếu nhập #PN01</h4>
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
                            <label for="inputName" class="col-sm-2 col-form-label">Mã CTPN</label>
                            <div class="col-sm-10">
                              <input type="email" class="form-control" id="inputName" placeholder="PN01">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="inputEmail" class="col-sm-2 col-form-label">Vật liệu</label>
                            <div class="col-sm-10">
                              <input type="email" class="form-control" id="inputEmail" placeholder="NV01">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="inputName2" class="col-sm-2 col-form-label">Số lượng</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" id="inputName2" placeholder="20/12/2022">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="inputExperience" class="col-sm-2 col-form-label">Giá nhập</label>
                            <div class="col-sm-10">
                              <input class="form-control" id="inputExperience" placeholder="ABC"></input>
                            </div>
                          </div>
                          <!-- <div class="form-group row">
                            <label for="inputSkills" class="col-sm-2 col-form-label">Giá bán</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" id="inputSkills" placeholder="35$">
                            </div>
                          </div> -->
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



    <!-- Modal mở -->
    <div class="modal fade " id="exampleModalDelete" tabindex="-1" aria-labelledby="exampleModalDelete"
      aria-hidden="true">
      <div class="modal-dialog ">
        <div class="modal-content">
          <div class="modal-header bg-danger">
            <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-trash-alt"></i>
              &nbsp; Bạn muốn xóa nhà cung cấp #NCC01?
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
    <!-- /.modal  confirm mở-->


    <div class="modal fade " id="exampleModalDeleteDetail" tabindex="-1" aria-labelledby="exampleModalDelete"
      aria-hidden="true">
      <div class="modal-dialog ">
        <div class="modal-content">
          <div class="modal-header bg-danger">
            <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-trash-alt"></i>
              &nbsp; Bạn muốn xóa chi tiết phiếu nhập #CTPN01?
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




    <div class="modal fade " id="exampleModalConfirm" tabindex="-1" aria-labelledby="exampleModalDelete"
      aria-hidden="true">
      <div class="modal-dialog ">
        <div class="modal-content">
          <div class="modal-header bg-success">
            <h5 class="modal-title" id="exampleModalLabel"><i class="far fa-check-circle"></i>
              &nbsp; Bạn muốn xác nhận đơn hàng #DH01?
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
            <button type="button" class="btn btn-success" data-dismiss="modal">Xác nhận</button>
          </div>
        </div>
      </div>
    </div>





    <!--Modal tắt hđ-->
    <div class="modal fade " id="exampleModalDetail" tabindex="-1" aria-labelledby="exampleModalConfirm"
      aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header bg-secondary">
            <h5 class="modal-title" id="exampleModalLabel">
              Thêm chi tiết phiếu nhập #PN01
            </h5>

          
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
                          <label for="inputName" class="col-sm-2 col-form-label">Sản phẩm</label>
                          <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputName" placeholder="PN01">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="inputEmail" class="col-sm-2 col-form-label">Số lượng</label>
                          <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputEmail" placeholder="NV01">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="inputName2" class="col-sm-2 col-form-label">Giá mua</label>
                          <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputName2" placeholder="20/12/2022">
                          </div>
                        </div>
                        <!-- <div class="form-group row">
                          <label for="inputExperience" class="col-sm-2 col-form-label">Nhà cung cấp</label>
                          <div class="col-sm-10">
                            <input class="form-control" id="inputExperience" placeholder="ABC"></input>
                          </div>
                        </div> -->
                        <!-- <div class="form-group row">
                          <label for="inputSkills" class="col-sm-2 col-form-label">Giá bán</label>
                          <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputSkills" placeholder="35$">
                          </div>
                        </div> -->
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
          <div class="modal-footer d-flex justify-content-between">
            <button type="button" class="btn btn-default " data-dismiss="modal">Đóng</button>
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Lưu</button>
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
        


        $('#tableNCC').DataTable({
            columnDefs: [{ orderable: false, targets: 3 }],
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

    });

  </script>
  
  

<!-- JS Lib -->
<%@include file="/WEB-INF/views/admin/include/jsLib.jsp"%>
<!-- JS Lib End -->