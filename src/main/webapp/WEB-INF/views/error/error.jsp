<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>404 Not Found - Star Travel</title>

    <!-- Plugins css Style -->
    <link href='${path}/assets/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
    <link href='${path}/assets/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>

    <!-- GOOGLE FONT -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700' rel='stylesheet'>

    <!-- CUSTOM CSS -->
    <link href="${path}/assets/css/star.css" id="option_style" rel="stylesheet">


    <!-- FAVICON -->
    <link rel="shortcut icon" type="image/png" href="${path}/assets/img/favicon.png" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->

  </head>

  <body>

    <!-- ====================================
    ———	CONTACT SECTION
    ===================================== -->
    <section style="background-image: url(${path}/assets/img/not-found/not-found-bg.jpg); background-size: cover;">
      <div class="container">
        <div class="row text-center align-items-center justify-content-center vh-100">
          <div class="col-md-10 col-lg-8 col-xl-6">
            <div class="mb-7 mb-lg-9">
              <img class="img-fluid lazyestload" data-src="${path}/assets/img/not-found/not-found.png" src="${path}/assets/img/not-found/not-found.png" alt="image">
            </div>
            
            <p class="text-white h3 mb-7 mb-lg-9">Oops! The page you are looking for could not be found!</p>
            <p class="text-white">Please try searching again</p>

            <div class="row justify-content-center">
              <div class="col-md-8">
                <form class="mb-7" action="index.html" method="post">
                  <div class="input-group">
                    <input type="email" class="form-control form-search" required="">
                    <button class="input-group-text border-0 btn bg-primary px-6" type="submit">
                      <i class="fa fa-search text-white" aria-hidden="true"></i>
                    </button>
                  </div>
                </form>
              </div>
            </div>

            <div class="">
              <a href="" class="btn btn-primary text-uppercase">Go home</a>
            </div>
          </div>
        </div>
      </div>
    </section>


    <!-- Javascript -->
    <script src="${path}/assets/plugins/jquery/jquery-3.4.1.min.js"></script>
    <script src="${path}/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${path}/assets/plugins/lazyestload/lazyestload.js"></script>
    <script src="${path}/assets/js/star.js"></script>

  </body>
</html>