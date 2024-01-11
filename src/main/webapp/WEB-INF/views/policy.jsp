<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>



  <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0">
            <div class="page-header-inner" id="login_banner">
                <div class="container text-center ">
                    <h1 class=" display-3 text-white mb-3 animated slideInDown" id="login_h1">Policy</h1>

                    <p id="login_p">û����� ���� ��å</p>



                </div>
            </div>
        </div>
        <!-- Page Header End -->

        <!-- Booking Start -->
        <div class="container-fluid mypage_booking pb-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container">
                <div class="bg-white mypage_shadow" style="padding: 35px;">
                    <div class="row g-2">

                        <h3 class="mypage_section-title text-center text-primary ">�˻�</h3>


                    </div>



                    <div class="row policy_row g-2">


                        <form>

                            <div class="row  policy_row g-2">
                                <div class="col-md-3_b">
                                    <select class="form-select">
                                        <option selected>��������</option>
                                        <option value="1">��õ��</option>
                                        <option value="2">������</option>
                                        <option value="3">�����</option>
                                    </select>
                                </div>
                                <div class="col-md-3_b">
                                    <select class="form-select">
                                        <option selected>�������</option>
                                        <option value="1">���</option>
                                        <option value="2">�����</option>
                                    </select>
                                </div>
                                <div class="col-md-3_b">
                                    <div>
                                        <input type="text" class="form-control datetimepicker-input"
                                            placeholder="�� ���� �Է�" data-target="#date2" data-toggle="datetimepicker" />
                                    </div>
                                </div>
                                <div class="col-md-3_b">
                                    <select class="form-select">
                                        <option selected>�ҵ����</option>
                                        <option value="1">�ҵ����</option>
                                        <option value="2">���� �� 200���� �̸�</option>
                                        <option value="3">���� �� 200���� �̻� 300���� �̸�</option>
                                    </select>
                                </div>
                                <div class="col-md-3_b">
                                    <select class="form-select">
                                        <option selected>��ȥ����</option>
                                        <option value="1">��ȥ</option>
                                        <option value="2">��ȥ</option>
                                    </select>
                                </div>
                                <div class="col-md-3_b">
                                    <select class="form-select">
                                        <option selected>���ɺо�</option>
                                        <option value="1">�ְ�</option>
                                        <option value="2">����</option>
                                        <option value="3">��ȥ�κ�</option>
                                    </select>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div id="policy_checkbox">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                            <label class="custom-control-label" for="customCheck1">��ü</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck2">
                            <label class="custom-control-label" for="customCheck2">������</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck3">
                            <label class="custom-control-label" for="customCheck3">��û����</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck4">
                            <label class="custom-control-label" for="customCheck4">���ƿ� ���� ��</label>
                        </div>

                    </div>


                    <div class="mypage_section-title">
                        <form>

                            <div class="row g-2">


                                <div class="col-md-5">
                                    <div>
                                        <input type="text" class="form-control datetimepicker-input"
                                            placeholder="�˻�� �Է��ϼ���" />
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <button class="btn btn-primary w-100">�˻��ϱ�</button>
                                </div>
                                <div class="col-md-2">
                                    <button class="btn btn-primary w-100">�� �������� �˻�</button>
                                </div>
                                <div class="col-md-2">
                                    <button class="btn btn-secondary ">�ʱ�ȭ</button>
                                </div>


                            </div>
                        </form>
                    </div>


                </div>
            </div>
        </div>
    </div>


    <!-- Booking End -->
    <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
        <h6 class="section-title text-center text-primary text-uppercase">Policy</h6>
        <h1 class="mb-5"><span class="text-primary text-uppercase">��å</span> �ѷ����� </h1>
    </div>


    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="rounded shadow overflow-hidden">
                        <div class="position-relative">
                            <img class="img-fluid" src="resources/img/ī��1.png" alt="">
                            <div class="policy_wish_box">
                                <div
                                    class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">

                                    <a class="btn btn-square mx-1 toggleLink" href="#"  data-target="policy_heart_1"><img class="policy_heart"
                                            id="policy_heart_1" src="resources/img/addWish.png" /></a>
                                </div>
                            </div>
                        </div>

                        <!-- �� �ҷ��� �� -->
                        <div class="text-center p-4 mt-2 policy_detail" >
                            <h5 class="fw-bold mb-4">û�� ���ڸ� ���</h5>
                          
                            <small id="policy_areaName">���׽�</small>
                            <small id="policy_startDate">2024-01-22</small>
                           
                        </div>


                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="rounded shadow overflow-hidden">
                        <div class="position-relative">
                            <img class="img-fluid" src="resources/img/ī��2.png" alt="">
                            <div class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">
                                <a class="btn btn-square mx-1 toggleLink"href="#"  data-target="policy_heart_2"><img class="policy_heart"
                                        id="policy_heart_2" src="resources/img/addWish.png" /></a>
                            </div>
                        </div>
                        <div class="text-center p-4 mt-2 policy_detail" >
                            <h5 class="fw-bold mb-4">û�� ���ڸ� ���</h5>
                          
                            <small id="policy_areaName">���׽�</small>
                            <small id="policy_startDate">2024-01-22</small>
                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="rounded shadow overflow-hidden">
                        <div class="position-relative">
                            <img class="img-fluid" src="resources/img/ī��3.png" alt="">
                            <div class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">
                                <a class="btn btn-square mx-1 toggleLink" href="#"  data-target="policy_heart_3"><img class="policy_heart"
                                        id="policy_heart_3" src="resources/img/addWish.png" /></a>
                            </div>
                        </div>
                        <div class="text-center p-4 mt-2 policy_detail" >
                            <h5 class="fw-bold mb-4">û�� ���ڸ� ���</h5>
                          
                            <small id="policy_areaName">���׽�</small>
                            <small id="policy_startDate">2024-01-22</small>
                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="rounded shadow overflow-hidden">
                        <div class="position-relative">
                            <img class="img-fluid" src="resources/img/ī��4.png" alt="">
                            <div class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">
                                <a class="btn btn-square mx-1 toggleLink" href="#"  data-target="policy_heart_4"><img class="policy_heart"
                                        id="policy_heart_4" src="resources/img/addWish.png" /></a>
                            </div>
                        </div>
                        <div class="text-center p-4 mt-2 policy_detail" >
                            <h5 class="fw-bold mb-4">û�� ���ڸ� ���</h5>
                          
                            <small id="policy_areaName">���׽�</small>
                            <small id="policy_startDate">2024-01-22</small>
                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="rounded shadow overflow-hidden">
                        <div class="position-relative">
                            <img class="img-fluid" src="resources/img/ī��5.png" alt="">
                            <div class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">
                                <a class="btn btn-square mx-1 toggleLink" href="#"  data-target="policy_heart_5"><img class="policy_heart"
                                        id="policy_heart_5" src="resources/img/addWish.png" /></a>
                            </div>
                        </div>
                        <div class="text-center p-4 mt-2 policy_detail" >
                            <h5 class="fw-bold mb-4">û�� ���ڸ� ���</h5>
                          
                            <small id="policy_areaName">���׽�</small>
                            <small id="policy_startDate">2024-01-22</small>
                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="rounded shadow overflow-hidden">
                        <div class="position-relative">
                            <img class="img-fluid" src="resources/img/ī��6.png" alt="">
                            <div class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">
                                <a class="btn btn-square mx-1 toggleLink" href="#"  data-target="policy_heart_6"><img class="policy_heart"
                                        id="policy_heart_6" src="resources/img/addWish.png" /></a>
                            </div>
                        </div>
                        <div class="text-center p-4 mt-2 policy_detail" >
                            <h5 class="fw-bold mb-4">û�� ���ڸ� ���</h5>
                          
                            <small id="policy_areaName">���׽�</small>
                            <small id="policy_startDate">2024-01-22</small>
                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="rounded shadow overflow-hidden">
                        <div class="position-relative">
                            <img class="img-fluid" src="resources/img/ī��7.png" alt="">
                            <div class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">
                                <a class="btn btn-square mx-1 toggleLink" href="#"  data-target="policy_heart_7"><img class="policy_heart"
                                        id="policy_heart_7" src="resources/img/addWish.png" /></a>
                            </div>
                        </div>
                        <div class="text-center p-4 mt-2 policy_detail" >
                            <h5 class="fw-bold mb-4">û�� ���ڸ� ���</h5>
                          
                            <small id="policy_areaName">���׽�</small>
                            <small id="policy_startDate">2024-01-22</small>
                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="rounded shadow overflow-hidden">
                        <div class="position-relative">
                            <img class="img-fluid" src="resources/img/ī��8.png" alt="">

                            <div class="position-absolute start-90 top-100 translate-middle d-flex align-items-center">
                                <a class="btn btn-square mx-1 toggleLink" href="#"  data-target="policy_heart_8"><img class="policy_heart"
                                        id="policy_heart_8" src="resources/img/addWish.png" /></a>
                            </div>
                        </div>
                        <div class="text-center p-4 mt-2 policy_detail" >
                            <h5 class="fw-bold mb-4">û�� ���ڸ� ���</h5>
                          
                            <small id="policy_areaName">���׽�</small>
                            <small id="policy_startDate">2024-01-22</small>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav aria-label="Page navigation">
            <ul class="pagination justify-content-end">
                <li class="policy_page-item prev">
                    <a class="page-link" href="javascript:void(0);"><i class="fa fa-angle-double-left"
                            aria-hidden="true"></i></a>
                </li>
                <li class="policy_page-item prev">
                    <a class="page-link" href="javascript:void(0);"><i class="fa fa-angle-left"
                            aria-hidden="true"></i></a>
                </li>
                <li class="page-item active">
                    <a class="page-link" href="javascript:void(0);">1</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript:void(0);">2</a>
                </li>
                <li class="page-item ">
                    <a class="page-link" href="javascript:void(0);">3</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript:void(0);">4</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="javascript:void(0);">5</a>
                </li>
                <li class="page-item next">
                    <a class="page-link" href="javascript:void(0);"><i class="fa fa-angle-right"
                            aria-hidden="true"></i></a>
                </li>
                <li class="page-item next">
                    <a class="page-link" href="javascript:void(0);"><i class="fa fa-angle-double-right"
                            aria-hidden="true"></i></a>
                </li>
            </ul>
        </nav>
    </div>
    
  <script>
     $(document).ready(function () {
    // üũ�ڽ� �ߺ� ����
    $('.custom-control-input').on('change', function () {
        if ($(this).prop('checked')) {
            $('.custom-control-input').not(this).prop('disabled', true);
        } else {
            $('.custom-control-input').prop('disabled', false);
        }
    });

    // ����Ʈ ���� ��ư
    $(".toggleLink").click(function (e) {
        e.preventDefault();

        var $img = $("#" + $(this).data("target"));

        $img.attr("src", function (_, oldSrc) {
            return oldSrc.includes("addWish.png") ? "resources/img/checkWish.png" : "resources/img/addWish.png";
        });
    });
});


    </script>
<%@include file="includes/footer.jsp" %>
