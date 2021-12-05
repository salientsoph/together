<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<jsp:include page="../common/header.jsp" />
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="main-wrapper blog-list-right-sidebar">


<!-- ====================================
———	PAGE TITLE
===================================== -->
<section class="page-title">
  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(assets/img/pages/page-title-bg4.jpg);">
    <div class="container">
      <div class="row align-items-center justify-content-center" style="height: 200px;">
        <div class="col-lg-6">
          <div class="page-title-content">
            <div class="title-border">
              <h2 class="text-uppercase text-white font-weight-bold">Blog List</h2>
            </div>
            <p class="text-white mb-0"></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<!-- ====================================
——— TRAVEL LIST SECTION
===================================== -->
<section class="py-9 py-md-10">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-xl-9 order-1 order-lg-0">
        <div class="card rounded-0 card-transparent border-bottom mb-7 pb-7">
          <div class="row align-items-xl-center">
            <div class="col-md-6">
              <a href="blog-single-right-sidebar.html" class="position-relative">
                <img class="card-img-top rounded lazyestload" data-src="assets/img/blog/blog-01.jpg" src="assets/img/blog/blog-01.jpg" alt="Card image cap">
                <div class="card-img-overlay card-hover-overlay rounded"></div>
              </a>
            </div>

            <div class="col-md-6">
              <div class="card-body px-md-0 py-6 pt-md-0">
                <h3 class="mb-4">
                  <a href="blog-single-right-sidebar.html" class="text-capitalize text-dark hover-text-primary">Lorem ipsum dolor amet</a>
                </h3>
              
                <div class="meta-post-sm mb-4">
                  <ul class="list-unstyled d-flex flex-wrap mb-0">
                    <li class="meta-tag me-4 mb-1">
                      <i class="fa fa-user text-gray-color" aria-hidden="true"></i>
                      <a class="text-gray-color hover-text-primary" href="blog-single-right-sidebar.html">
                        <span class="ms-1 text-capitalize">Adam smith</span>
                      </a>
                    </li>
              
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">Mar 20, 2021</span>
                    </li>
              
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fa fa fa-tags" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">Travel</span>
                    </li>
              
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fa fa-envelope" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">8 com</span>
                    </li>
                  </ul>
                </div>
              
                <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore
                  et dolore magna
                  aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
              </div>
              
              <div class="card-footer px-5 px-lg-0">
                <a href="blog-single-right-sidebar.html" class="btn btn-sm btn-outline-secondary text-uppercase">View post</a>
              </div>
            </div>
          </div>
        </div>

        <div class="card rounded-0 card-transparent border-bottom mb-7 pb-7">
          <div class="row align-items-xl-center">
            <div class="col-md-6">
              <a href="blog-single-right-sidebar.html" class="position-relative">
                <img class="card-img-top rounded lazyestload" data-src="assets/img/blog/blog-02.jpg" src="assets/img/blog/blog-02.jpg" alt="Card image cap">
                <div class="card-img-overlay card-hover-overlay rounded"></div>
              </a>
            </div>
        
            <div class="col-md-6">
              <div class="card-body px-md-0 py-6 pt-md-0">
                <h3 class="mb-4">
                  <a href="blog-single-right-sidebar.html" class="text-capitalize text-dark hover-text-primary">Nulla placerat sem id ante</a>
                </h3>
        
                <div class="meta-post-sm mb-4">
                  <ul class="list-unstyled d-flex flex-wrap mb-0">
                    <li class="meta-tag me-4 mb-1">
                      <i class="fa fa-user text-gray-color" aria-hidden="true"></i>
                      <a class="text-gray-color hover-text-primary" href="blog-single-right-sidebar.html">
                        <span class="ms-1 text-capitalize">Adam smith</span>
                      </a>
                    </li>
        
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">Mar 20, 2021</span>
                    </li>
        
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fa fa fa-tags" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">Travel</span>
                    </li>
        
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fa fa-envelope" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">8 com</span>
                    </li>
                  </ul>
                </div>
        
                <p class="mb-0">Nulla placerat sem id ante mattis, ut convallis lectus tincidunt. Sed aliquam at tellus eu malesuada. Aliquam posuere
                imperdiet dui eget tempus. Vestibulum ipsum sem consequat ut purus ut.</p>
              </div>
        
              <div class="card-footer px-5 px-lg-0">
                <a href="blog-single-right-sidebar.html" class="btn btn-sm btn-outline-secondary text-uppercase">View post</a>
              </div>
            </div>
          </div>
        </div>

        <div class="card rounded-0 card-transparent border-bottom mb-7 pb-7">
          <div class="row align-items-xl-center">
            <div class="col-md-6">
              <a href="blog-single-right-sidebar.html" class="position-relative">
                <img class="card-img-top rounded lazyestload" data-src="assets/img/blog/blog-03.jpg" src="assets/img/blog/blog-03.jpg" alt="Card image cap">
                <div class="card-img-overlay card-hover-overlay rounded"></div>
              </a>
            </div>
        
            <div class="col-md-6">
              <div class="card-body px-md-0 py-6 pt-md-0">
                <h3 class="mb-4">
                  <a href="blog-single-right-sidebar.html" class="text-capitalize text-dark hover-text-primary">Mestibulum volutpat nibh</a>
                </h3>
        
                <div class="meta-post-sm mb-4">
                  <ul class="list-unstyled d-flex flex-wrap mb-0">
                    <li class="meta-tag me-4 mb-1">
                      <i class="fa fa-user text-gray-color" aria-hidden="true"></i>
                      <a class="text-gray-color hover-text-primary" href="blog-single-right-sidebar.html">
                        <span class="ms-1 text-capitalize">Adam smith</span>
                      </a>
                    </li>
        
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">Mar 20, 2021</span>
                    </li>
        
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fa fa fa-tags" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">Travel</span>
                    </li>
        
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fa fa-envelope" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">8 com</span>
                    </li>
                  </ul>
                </div>
        
                <p class="mb-0">Mestibulum volutpat nibh. Morbi mattis, ipsum non feugiat varius, diam dui faucibus nunc, ac pharetra massa justo vitae
                urna. Nulla facilisi. Aenean arcu est, maximus ac elementum viverra.</p>
              </div>
        
              <div class="card-footer px-5 px-lg-0">
                <a href="blog-single-right-sidebar.html" class="btn btn-sm btn-outline-secondary text-uppercase">View post</a>
              </div>
            </div>
          </div>
        </div>

        <div class="card rounded-0 card-transparent border-bottom mb-7 pb-7">
          <div class="row align-items-xl-center">
            <div class="col-md-6">
              <a href="blog-single-right-sidebar.html" class="position-relative">
                <img class="card-img-top rounded lazyestload" data-src="assets/img/blog/blog-04.jpg" src="assets/img/blog/blog-04.jpg" alt="Card image cap">
                <div class="card-img-overlay card-hover-overlay rounded"></div>
              </a>
            </div>
        
            <div class="col-md-6">
              <div class="card-body px-md-0 py-6 pt-md-0">
                <h3 class="mb-4">
                  <a href="blog-single-right-sidebar.html" class="text-capitalize text-dark hover-text-primary">Praesent condi men tum</a>
                </h3>
        
                <div class="meta-post-sm mb-4">
                  <ul class="list-unstyled d-flex flex-wrap mb-0">
                    <li class="meta-tag me-4 mb-1">
                      <i class="fa fa-user text-gray-color" aria-hidden="true"></i>
                      <a class="text-gray-color hover-text-primary" href="blog-single-right-sidebar.html">
                        <span class="ms-1 text-capitalize">Adam smith</span>
                      </a>
                    </li>
        
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">Mar 20, 2021</span>
                    </li>
        
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fa fa fa-tags" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">Travel</span>
                    </li>
        
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fa fa-envelope" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">8 com</span>
                    </li>
                  </ul>
                </div>
        
                <p class="mb-0">Praesent condi men tum ligula nec cursus congue. Nullam feugiat pretium tortor non efficitur. Donec ut urna fringilla,
                pellen tesque arcu ut, ultricies augue. Nullam auctor mattis eros viverra.</p>
              </div>
        
              <div class="card-footer px-5 px-lg-0">
                <a href="blog-single-right-sidebar.html" class="btn btn-sm btn-outline-secondary text-uppercase">View post</a>
              </div>
            </div>
          </div>
        </div>

        <div class="card rounded-0 card-transparent border-bottom mb-7 pb-7">
          <div class="row align-items-xl-center">
            <div class="col-md-6">
              <a href="blog-single-right-sidebar.html" class="position-relative">
                <img class="card-img-top rounded lazyestload" data-src="assets/img/blog/blog-05.jpg" src="assets/img/blog/blog-05.jpg" alt="Card image cap">
                <div class="card-img-overlay card-hover-overlay rounded"></div>
              </a>
            </div>
        
            <div class="col-md-6">
              <div class="card-body px-md-0 py-6 pt-md-0">
                <h3 class="mb-4">
                  <a href="blog-single-right-sidebar.html" class="text-capitalize text-dark hover-text-primary">Qorbi portitor justo tellus</a>
                </h3>
        
                <div class="meta-post-sm mb-4">
                  <ul class="list-unstyled d-flex flex-wrap mb-0">
                    <li class="meta-tag me-4 mb-1">
                      <i class="fa fa-user text-gray-color" aria-hidden="true"></i>
                      <a class="text-gray-color hover-text-primary" href="blog-single-right-sidebar.html">
                        <span class="ms-1 text-capitalize">Adam smith</span>
                      </a>
                    </li>
        
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">Mar 20, 2021</span>
                    </li>
        
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fa fa fa-tags" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">Travel</span>
                    </li>
        
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fa fa-envelope" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">8 com</span>
                    </li>
                  </ul>
                </div>
        
                <p class="mb-0">Qorbi portitor justo tellus sed et tellus elei fend, feugiat nibh posuere, rutrum sapien. Mauris sit amet mollis metus.
                Pellen tesque vitae ante magna. Etiam et lectus lorem. Ut arcu nisi efficitur eta.</p>
              </div>
        
              <div class="card-footer px-5 px-lg-0">
                <a href="blog-single-right-sidebar.html" class="btn btn-sm btn-outline-secondary text-uppercase">View post</a>
              </div>
            </div>
          </div>
        </div>

        <div class="card rounded-0 card-transparent border-bottom mb-7 mb-md-0 pb-7">
          <div class="row align-items-xl-center">
            <div class="col-md-6">
              <a href="blog-single-right-sidebar.html" class="position-relative">
                <img class="card-img-top rounded lazyestload" data-src="assets/img/blog/blog-06.jpg" src="assets/img/blog/blog-06.jpg" alt="Card image cap">
                <div class="card-img-overlay card-hover-overlay rounded"></div>
              </a>
            </div>
        
            <div class="col-md-6">
              <div class="card-body px-md-0 py-6 pt-md-0">
                <h3 class="mb-4">
                  <a href="blog-single-right-sidebar.html" class="text-capitalize text-dark hover-text-primary">Senean non justo maximus</a>
                </h3>
        
                <div class="meta-post-sm mb-4">
                  <ul class="list-unstyled d-flex flex-wrap mb-0">
                    <li class="meta-tag me-4 mb-1">
                      <i class="fa fa-user text-gray-color" aria-hidden="true"></i>
                      <a class="text-gray-color hover-text-primary" href="blog-single-right-sidebar.html">
                        <span class="ms-1 text-capitalize">Adam smith</span>
                      </a>
                    </li>
        
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">Mar 20, 2021</span>
                    </li>
        
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fa fa fa-tags" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">Travel</span>
                    </li>
        
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fa fa-envelope" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">8 com</span>
                    </li>
                  </ul>
                </div>
        
                <p class="mb-0">Senean non justo maximus, porttitor nisi aliquam, maximus est. Curabitur elementum ipsum ultricies, scelerisque velit
                in, tincidunt nisl. Suspendisse a porta enim. Quisque porta nisl at.</p>
              </div>
        
              <div class="card-footer px-5 px-lg-0">
                <a href="blog-single-right-sidebar.html" class="btn btn-sm btn-outline-secondary text-uppercase">View post</a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-4 col-xl-3">
        <div class="mb-md-6 mb-lg-0">
          <div class="row">
            <div class="col-md-6 col-lg-12">
              <div class="bg-smoke border border-light-gray rounded p-3 mb-4">
                <h3 class="mb-4">Search</h3>
                <form class="form-subscribe mb-3" action="index.html" method="post">
                  <div class="input-group input-group-sm">
                    <input type="email" class="form-control form-control-sm border-0" required="" placeholder="">
                    <button class="input-group-text border-0 btn bg-primary" type="submit">
                      <i class="fa fa-search text-white" aria-hidden="true"></i>
                    </button>
                  </div>
                </form>
              </div>
          
              <div class="d-none d-md-block">
                <div class="mb-4">
                  <ul class="nav nav-tabs nav-justified blog-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" id="recent-tab" data-bs-toggle="tab" href="#recent" role="tab"
                        aria-controls="recent" aria-selected="true">Recent</a>
                    </li>
          
                    <li class="nav-item">
                      <a class="nav-link" id="popular-tab" data-bs-toggle="tab" href="#popular" role="tab" aria-controls="popular"
                        aria-selected="false">Popular</a>
                    </li>
          
                    <li class="nav-item">
                      <a class="nav-link" id="new-tab" data-bs-toggle="tab" href="#new" role="tab" aria-controls="new"
                        aria-selected="false">New</a>
                    </li>
                  </ul>
          
                  <div class="tab-content bg-smoke border border-light-gray border-top-0 rounded-bottom px-3 py-5"
                    id="myTabContent">
                    <div class="tab-pane fade show active" id="recent" role="tabpanel" aria-labelledby="recent-tab">
                      <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="assets/img/blog/tab-01.jpg" src="assets/img/blog/tab-01.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Totam rem apriam eaque.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
          
                      <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="assets/img/blog/tab-02.jpg" src="assets/img/blog/tab-02.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Pitter soan smeeit herick.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
          
                      <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="assets/img/blog/tab-03.jpg" src="assets/img/blog/tab-03.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Amanda disuja carl parkar.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
          
                      <div class="media meta-post-sm">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="assets/img/blog/tab-04.jpg" src="assets/img/blog/tab-04.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Rodney samp deo artich.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
          
                    <div class="tab-pane fade" id="popular" role="tabpanel" aria-labelledby="popular-tab">
                      <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="assets/img/blog/tab-04.jpg" src="assets/img/blog/tab-04.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Rodney samp deo artich.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
          
                      <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="assets/img/blog/tab-03.jpg" src="assets/img/blog/tab-03.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Amanda disuja carl parkar.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
          
                      <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="assets/img/blog/tab-02.jpg" src="assets/img/blog/tab-02.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Pitter soan smeeit herick.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
          
                      <div class="media meta-post-sm">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="assets/img/blog/tab-01.jpg" src="assets/img/blog/tab-01.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Totam rem apriam eaque.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
          
                    <div class="tab-pane fade" id="new" role="tabpanel" aria-labelledby="new-tab">
                      <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="assets/img/blog/tab-02.jpg" src="assets/img/blog/tab-02.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Pitter soan smeeit herick.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
          
                      <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="assets/img/blog/tab-04.jpg" src="assets/img/blog/tab-04.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Rodney samp deo artich.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
          
                      <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="assets/img/blog/tab-01.jpg" src="assets/img/blog/tab-01.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Totam rem apriam eaque.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
          
                      <div class="media meta-post-sm">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="assets/img/blog/tab-03.jpg" src="assets/img/blog/tab-03.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Amanda disuja carl parkar.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          
            <div class="col-md-6 col-lg-12 d-none d-md-block">
              <div class="bg-smoke border border-light-gray rounded p-3 mb-4">
                <h3 class="mb-4">Categories</h3>
          
                <ul class="list-unstyled list-group list-group-flush">
                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                    <a href="blog-single-right-sidebar.html"
                      class="d-flex text-dark hover-text-primary py-3">
                      <span>Business</span>
                      <small class="ms-auto font-weight-bold">(9)</small>
                    </a>
                  </li>
          
                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                    <a href="blog-single-right-sidebar.html"
                      class="d-flex text-dark hover-text-primary py-3">
                      <span>Design</span>
                      <small class="ms-auto font-weight-bold">(7)</small>
                    </a>
                  </li>
          
                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                    <a href="blog-single-right-sidebar.html"
                      class="d-flex text-dark hover-text-primary py-3">
                      <span>Photography</span>
                      <small class="ms-auto font-weight-bold">(5)</small>
                    </a>
                  </li>
          
                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                    <a href="blog-single-right-sidebar.html"
                      class="d-flex text-dark hover-text-primary py-3">
                      <span>Creative</span>
                      <small class="ms-auto font-weight-bold">(8)</small>
                    </a>
                  </li>
          
                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                    <a href="blog-single-right-sidebar.html"
                      class="d-flex text-dark hover-text-primary py-3">
                      <span>Tours</span>
                      <small class="ms-auto font-weight-bold">(6)</small>
                    </a>
                  </li>
                </ul>
              </div>
          
              <div class="">
                <div class="bg-smoke border border-light-gray rounded p-3 mb-4 mb-lg-0">
                  <h3 class="mb-6">Instagram</h3>
          
                  <div class="mb-2">
                    <div class="row px-2">
                      <div class="col-4 px-1">
                        <div class="img-overlay rounded">
                          <img class="w-100 lazyestload" data-src="assets/img/blog/instagram-new-01.jpg" src="assets/img/blog/instagram-new-01.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
                      </div>
          
                      <div class="col-4 px-1">
                        <div class="img-overlay rounded">
                          <img class="w-100 lazyestload" data-src="assets/img/blog/instagram-new-02.jpg" src="assets/img/blog/instagram-new-02.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
                      </div>
          
                      <div class="col-4 px-1">
                        <div class="img-overlay rounded">
                          <img class="w-100 lazyestload" data-src="assets/img/blog/instagram-new-03.jpg" src="assets/img/blog/instagram-new-03.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
                      </div>
                    </div>
                  </div>
          
                  <div class="">
                    <div class="row px-2">
                      <div class="col-4 px-1">
                        <div class="img-overlay rounded">
                          <img class="w-100 lazyestload" data-src="assets/img/blog/instagram-new-04.jpg" src="assets/img/blog/instagram-new-04.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
                      </div>
          
                      <div class="col-4 px-1">
                        <div class="img-overlay rounded">
                          <img class="w-100 lazyestload" data-src="assets/img/blog/instagram-new-05.jpg" src="assets/img/blog/instagram-new-05.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
                      </div>
          
                      <div class="col-4 px-1">
                        <div class="img-overlay rounded">
                          <img class="w-100 lazyestload" data-src="assets/img/blog/instagram-new-06.jpg" src="assets/img/blog/instagram-new-06.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="d-md-none">
      <div class="mb-4">
        <ul class="nav nav-tabs nav-justified blog-tabs" id="myTab" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" id="recent-blog-tab" data-bs-toggle="tab" href="#recent-blog" role="tab" aria-controls="recent-blog"
              aria-selected="true">Recent</a>
          </li>
    
          <li class="nav-item">
            <a class="nav-link" id="popular-blog-tab" data-bs-toggle="tab" href="#popular-blog" role="tab" aria-controls="popular-blog"
              aria-selected="false">Popular</a>
          </li>
    
          <li class="nav-item">
            <a class="nav-link" id="new-blog-tab" data-bs-toggle="tab" href="#new-blog" role="tab" aria-controls="new-blog"
              aria-selected="false">New</a>
          </li>
        </ul>
    
        <div class="tab-content bg-smoke border border-light-gray border-top-0 rounded-bottom px-3 py-5" id="myTabContent">
          <div class="tab-pane fade show active" id="recent-blog" role="tabpanel" aria-labelledby="recent-blog-tab">
            <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
              <div class="img-overlay rounded me-2">
                <img class="lazyestload" data-src="assets/img/blog/tab-01.jpg" src="assets/img/blog/tab-01.jpg" alt="Generic placeholder image">
                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
              </div>
    
              <div class="media-body">
                <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                  Totam rem apriam eaque.
                </a>
    
                <ul class="list-unstyled d-flex flex-wrap mb-0">
                  <li class="meta-tag text-gray-color me-4 mb-1">
                    <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                    <span class="ms-1 text-capitalize">5 March, 2021</span>
                  </li>
                </ul>
              </div>
            </div>
    
            <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
              <div class="img-overlay rounded me-2">
                <img class="lazyestload" data-src="assets/img/blog/tab-02.jpg" src="assets/img/blog/tab-02.jpg" alt="Generic placeholder image">
                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
              </div>
    
              <div class="media-body">
                <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                  Pitter soan smeeit herick.
                </a>
    
                <ul class="list-unstyled d-flex flex-wrap mb-0">
                  <li class="meta-tag text-gray-color me-4 mb-1">
                    <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                    <span class="ms-1 text-capitalize">5 March, 2021</span>
                  </li>
                </ul>
              </div>
            </div>
    
            <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
              <div class="img-overlay rounded me-2">
                <img class="lazyestload" data-src="assets/img/blog/tab-03.jpg" src="assets/img/blog/tab-03.jpg" alt="Generic placeholder image">
                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
              </div>
    
              <div class="media-body">
                <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                  Amanda disuja carl parkar.
                </a>
    
                <ul class="list-unstyled d-flex flex-wrap mb-0">
                  <li class="meta-tag text-gray-color me-4 mb-1">
                    <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                    <span class="ms-1 text-capitalize">5 March, 2021</span>
                  </li>
                </ul>
              </div>
            </div>
    
            <div class="media meta-post-sm">
              <div class="img-overlay rounded me-2">
                <img class="lazyestload" data-src="assets/img/blog/tab-04.jpg" src="assets/img/blog/tab-04.jpg" alt="Generic placeholder image">
                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
              </div>
    
              <div class="media-body">
                <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                  Rodney samp deo artich.
                </a>
    
                <ul class="list-unstyled d-flex flex-wrap mb-0">
                  <li class="meta-tag text-gray-color me-4 mb-1">
                    <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                    <span class="ms-1 text-capitalize">5 March, 2021</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
    
          <div class="tab-pane fade" id="popular-blog" role="tabpanel" aria-labelledby="popular-blog-tab">
            <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
              <div class="img-overlay rounded me-2">
                <img class="lazyestload" data-src="assets/img/blog/tab-04.jpg" src="assets/img/blog/tab-04.jpg" alt="Generic placeholder image">
                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
              </div>
    
              <div class="media-body">
                <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                  Rodney samp deo artich.
                </a>
    
                <ul class="list-unstyled d-flex flex-wrap mb-0">
                  <li class="meta-tag text-gray-color me-4 mb-1">
                    <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                    <span class="ms-1 text-capitalize">5 March, 2021</span>
                  </li>
                </ul>
              </div>
            </div>
    
            <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
              <div class="img-overlay rounded me-2">
                <img class="lazyestload" data-src="assets/img/blog/tab-03.jpg" src="assets/img/blog/tab-03.jpg" alt="Generic placeholder image">
                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
              </div>
    
              <div class="media-body">
                <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                  Amanda disuja carl parkar.
                </a>
    
                <ul class="list-unstyled d-flex flex-wrap mb-0">
                  <li class="meta-tag text-gray-color me-4 mb-1">
                    <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                    <span class="ms-1 text-capitalize">5 March, 2021</span>
                  </li>
                </ul>
              </div>
            </div>
    
            <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
              <div class="img-overlay rounded me-2">
                <img class="lazyestload" data-src="assets/img/blog/tab-02.jpg" src="assets/img/blog/tab-02.jpg" alt="Generic placeholder image">
                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
              </div>
    
              <div class="media-body">
                <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                  Pitter soan smeeit herick.
                </a>
    
                <ul class="list-unstyled d-flex flex-wrap mb-0">
                  <li class="meta-tag text-gray-color me-4 mb-1">
                    <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                    <span class="ms-1 text-capitalize">5 March, 2021</span>
                  </li>
                </ul>
              </div>
            </div>
    
            <div class="media meta-post-sm">
              <div class="img-overlay rounded me-2">
                <img class="lazyestload" data-src="assets/img/blog/tab-01.jpg" src="assets/img/blog/tab-01.jpg" alt="Generic placeholder image">
                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
              </div>
    
              <div class="media-body">
                <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                  Totam rem apriam eaque.
                </a>
    
                <ul class="list-unstyled d-flex flex-wrap mb-0">
                  <li class="meta-tag text-gray-color me-4 mb-1">
                    <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                    <span class="ms-1 text-capitalize">5 March, 2021</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
    
          <div class="tab-pane fade" id="new-blog" role="tabpanel" aria-labelledby="new-blog-tab">
            <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
              <div class="img-overlay rounded me-2">
                <img class="lazyestload" data-src="assets/img/blog/tab-02.jpg" src="assets/img/blog/tab-02.jpg" alt="Generic placeholder image">
                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
              </div>
    
              <div class="media-body">
                <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                  Pitter soan smeeit herick.
                </a>
    
                <ul class="list-unstyled d-flex flex-wrap mb-0">
                  <li class="meta-tag text-gray-color me-4 mb-1">
                    <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                    <span class="ms-1 text-capitalize">5 March, 2021</span>
                  </li>
                </ul>
              </div>
            </div>
    
            <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
              <div class="img-overlay rounded me-2">
                <img class="lazyestload" data-src="assets/img/blog/tab-04.jpg" src="assets/img/blog/tab-04.jpg" alt="Generic placeholder image">
                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
              </div>
    
              <div class="media-body">
                <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                  Rodney samp deo artich.
                </a>
    
                <ul class="list-unstyled d-flex flex-wrap mb-0">
                  <li class="meta-tag text-gray-color me-4 mb-1">
                    <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                    <span class="ms-1 text-capitalize">5 March, 2021</span>
                  </li>
                </ul>
              </div>
            </div>
    
            <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
              <div class="img-overlay rounded me-2">
                <img class="lazyestload" data-src="assets/img/blog/tab-01.jpg" src="assets/img/blog/tab-01.jpg" alt="Generic placeholder image">
                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
              </div>
    
              <div class="media-body">
                <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                  Totam rem apriam eaque.
                </a>
    
                <ul class="list-unstyled d-flex flex-wrap mb-0">
                  <li class="meta-tag text-gray-color me-4 mb-1">
                    <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                    <span class="ms-1 text-capitalize">5 March, 2021</span>
                  </li>
                </ul>
              </div>
            </div>
    
            <div class="media meta-post-sm">
              <div class="img-overlay rounded me-2">
                <img class="lazyestload" data-src="assets/img/blog/tab-03.jpg" src="assets/img/blog/tab-03.jpg" alt="Generic placeholder image">
                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
              </div>
    
              <div class="media-body">
                <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                  Amanda disuja carl parkar.
                </a>
    
                <ul class="list-unstyled d-flex flex-wrap mb-0">
                  <li class="meta-tag text-gray-color me-4 mb-1">
                    <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                    <span class="ms-1 text-capitalize">5 March, 2021</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="bg-smoke border border-light-gray rounded p-3 mb-4">
        <h3 class="mb-4">Categories</h3>
  
        <ul class="list-unstyled list-group list-group-flush">
          <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
            <a href="blog-single-right-sidebar.html"
              class="d-flex text-dark hover-text-primary py-3">
              <span>Business</span>
              <small class="ms-auto font-weight-bold">(9)</small>
            </a>
          </li>
  
          <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
            <a href="blog-single-right-sidebar.html"
              class="d-flex text-dark hover-text-primary py-3">
              <span>Design</span>
              <small class="ms-auto font-weight-bold">(7)</small>
            </a>
          </li>
  
          <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
            <a href="blog-single-right-sidebar.html"
              class="d-flex text-dark hover-text-primary py-3">
              <span>Photography</span>
              <small class="ms-auto font-weight-bold">(5)</small>
            </a>
          </li>
  
          <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
            <a href="blog-single-right-sidebar.html"
              class="d-flex text-dark hover-text-primary py-3">
              <span>Creative</span>
              <small class="ms-auto font-weight-bold">(8)</small>
            </a>
          </li>
  
          <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
            <a href="blog-single-right-sidebar.html"
              class="d-flex text-dark hover-text-primary py-3">
              <span>Tours</span>
              <small class="ms-auto font-weight-bold">(6)</small>
            </a>
          </li>
        </ul>
      </div>

      <div class="bg-smoke border border-light-gray rounded p-3 mb-4 mb-lg-0">
        <h3 class="mb-6">Instagram</h3>
      
        <div class="mb-2">
          <div class="row px-2">
            <div class="col-4 px-1">
              <div class="img-overlay rounded">
                <img class="w-100 lazyestload" data-src="assets/img/blog/instagram-new-01.jpg" src="assets/img/blog/instagram-new-01.jpg" alt="Generic placeholder image">
                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
              </div>
            </div>
      
            <div class="col-4 px-1">
              <div class="img-overlay rounded">
                <img class="w-100 lazyestload" data-src="assets/img/blog/instagram-new-02.jpg" src="assets/img/blog/instagram-new-02.jpg" alt="Generic placeholder image">
                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
              </div>
            </div>
      
            <div class="col-4 px-1">
              <div class="img-overlay rounded">
                <img class="w-100 lazyestload" data-src="assets/img/blog/instagram-new-03.jpg" src="assets/img/blog/instagram-new-03.jpg" alt="Generic placeholder image">
                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
              </div>
            </div>
          </div>
        </div>
      
        <div class="">
          <div class="row px-2">
            <div class="col-4 px-1">
              <div class="img-overlay rounded">
                <img class="w-100 lazyestload" data-src="assets/img/blog/instagram-new-04.jpg" src="assets/img/blog/instagram-new-04.jpg" alt="Generic placeholder image">
                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
              </div>
            </div>
      
            <div class="col-4 px-1">
              <div class="img-overlay rounded">
                <img class="w-100 lazyestload" data-src="assets/img/blog/instagram-new-05.jpg" src="assets/img/blog/instagram-new-05.jpg" alt="Generic placeholder image">
                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
              </div>
            </div>
      
            <div class="col-4 px-1">
              <div class="img-overlay rounded">
                <img class="w-100 lazyestload" data-src="assets/img/blog/instagram-new-06.jpg" src="assets/img/blog/instagram-new-06.jpg" alt="Generic placeholder image">
                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- ====================================
———	PAGINATION
===================================== -->
<section class="pt-5 pt-md-7">
  <div class="container">
    <nav aria-label="Page navigation">
      <ul class="pagination justify-content-center align-items-center">
        <li class="page-item">
          <a class="page-link" href="javascript:void(0)" tabindex="-1">
            <i class="fas fa-long-arrow-alt-left d-none d-md-inline-block me-md-1" aria-hidden="true"></i> Previous
          </a>
        </li>
    
        <li class="page-item">
          <a class="page-link active" href="javascript:void(0)">1</a>
        </li>
    
        <li class="page-item">
          <a class="page-link" href="javascript:void(0)">2</a>
        </li>
    
        <li class="page-item">
          <a class="page-link" href="javascript:void(0)">3</a>
        </li>
    
        <li class="page-item">
          <a class="page-link" href="javascript:void(0)">...</a>
        </li>
    
        <li class="page-item">
          <a class="page-link" href="javascript:void(0)">9</a>
        </li>
    
        <li class="page-item">
          <a class="page-link" href="javascript:void(0)">Next
            <i class="fas fa-long-arrow-alt-right d-none d-md-inline-block ms-md-1" aria-hidden="true"></i>
          </a>
        </li>
      </ul>
    </nav>
  </div>
</section>

</section>



  </div><!-- element wrapper ends -->

	<jsp:include page="../common/footer.jsp"/>
  </body>
</html>