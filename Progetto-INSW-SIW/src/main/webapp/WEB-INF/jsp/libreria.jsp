<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>La tua libreria</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="css/style.css">

</head>

<body>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="lds-ellipsis">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>


  <c:if test="${not loggato}">
		<jsp:include page="partials/index/menuIndex.jsp" />
	</c:if>
	<c:if test="${loggato and not loggatoAdmin}">
		<jsp:include page="partials/user/menuUser.jsp" />
	</c:if>
	<c:if test="${loggatoAdmin}">
		<jsp:include page="partials/admin/menuAdmin.jsp" />
	</c:if>

    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(https://source.unsplash.com/collection/228444/1920x1280);">
        <div class="bradcumbContent">
            <p>Gestisci</p>
            <h2>La tua libreria personale</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

	<!-- CARDS AREA START  -->
		<c:forEach items="${listaLibri}" var="item">
        <!-- Single Post Start -->
           <div class="single-blog-post mb-100 wow fadeInUp" data-wow-delay="100ms">
          <!-- Post Thumb -->
          	<div class="col-12 col-md-6 col-lg-4">
	        	<div class="single-event-area mb-30">
    	        	<div class="event-thumbnail">
        	        	<img src="img/9780786102563.jpg" alt="">
                	</div>
                	<form action="deleteLibro" method="POST">
	                	<div class="event-text">
	            	    	<h4>Divina Commedia</h4>
	                    	<div class="event-meta-data">
	                	    	<a href="#" class="event-place">${item.autore }</a>
	                        	<a href="#" class="event-place">${item.isbn}</a>
                   				<a href="#" class="event-place">${item.titolo}</a>
	                        	<input type="text" id="libro" name="libro" class="event-date" class="event-place" value=${item.isbn } hidden="true"></input>
	                        	<input type="text" id="libreria" name="libreria" value=${username } class="event-place" hidden="true"></input>
	                    	</div>
	                    	<button class="btn see-more-btn" type="submit" >Elimina libro</button>
	                	</div>
	             	</form>
             	</div>
         	</div>-
               <div class="blog-post-thumb mt-30">
                   
                   
        			
               </div>
           </div>
		</c:forEach>
   
    <jsp:include page="partials/index/footer.jsp" />

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>

</html>