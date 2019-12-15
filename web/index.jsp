<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Taklidi</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body class="goto-here">
       <%
            PrintWriter p= response.getWriter();          
            String id=request.getParameter("id");
            Class.forName("com.mysql.jdbc.Driver");
            Connection c;
            c= DriverManager.getConnection("jdbc:mysql://lhd-taklidi-mysql.mysql.database.azure.com/hack", "imen@lhd-taklidi-mysql", "Uzumaki11");
            Statement f=c.createStatement();
            ResultSet g =f.executeQuery("select  DISTINCT count(*) nbr from panier");
            //Récupération du panier dans la session ou création si premier appel et n’existe pas
                  
      %>
		<div class="py-1 bg-primary">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
	    		<div class="col-lg-12 d-block">
		    		<div class="row d-flex">
		    			<div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						    <span class="text">+213 21 24 58 69</span>
					    </div>
					    <div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right"></div>
						    <span class="text"></span>
					    </div>
					    <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
						    <span class="text">contact@taklidi.com</span>
					    </div>
				    </div>
			    </div>
		    </div>
		  </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.jsp">Taklidi</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="index.jsp" class="nav-link">Accueil</a></li>
	          <li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle" href="shop.jsp" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Produits</a>
                         <div class="dropdown-menu" aria-labelledby="dropdown04">
                        	<a class="dropdown-item" href="shop.jsp?&categorie='tapis'">Tapis</a>
                        	<a class="dropdown-item" href="shop.jsp?&categorie='vetement'">Vetements</a>
                                <a class="dropdown-item" href=shop.jsp?&categorie='gateau'>Gateaux</a>
                                <a class="dropdown-item" href=shop.jsp?&categorie='bijou'>Bijoux</a>
                                <a class="dropdown-item" href=shop.jsp?&categorie='poterie'>Poteries</a>
                                <a class="dropdown-item" href=shop.jsp?&categorie='vannerie'>Vanneries</a>
                                <a class="dropdown-item" href=shop.jsp?&categorie='broderie'>Broderies</a>
                                <a class="dropdown-item" href=shop.jsp?&categorie='dinanderie'>Dinanderies</a>
                        </div>
                  </li>
                  <li class="nav-item"><a href="#" class="nav-link">Personnaliser</a></li>
                  <li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Cours</a>
                         <div class="dropdown-menu" aria-labelledby="dropdown04">
                        	<a class="dropdown-item" href="#">Tapis</a>
                        	<a class="dropdown-item" href="#">Vetements</a>
                                <a class="dropdown-item" href="#">Gateaux</a>
                                <a class="dropdown-item" href="#">Bijoux</a>
                                <a class="dropdown-item" href="#">Poteries</a>
                                <a class="dropdown-item" href="#">Vanneries</a>
                                <a class="dropdown-item" href="#">Broderies</a>
                                <a class="dropdown-item" href="#">Dinanderies</a>
                        </div>
                  </li>
	          <li class="nav-item"><a href="about.html" class="nav-link">A propos</a></li>
	          <li class="nav-item"><a href="#" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
	          <li class="nav-item cta cta-colored">
                      <a href="cart.jsp" class="nav-link">
                          <span class="icon-shopping_cart"></span>
                          [
                          <% 
                              String panier="0";
                              if(session.getAttribute("username")!=null){
                                    if(g.next()){
                                        panier=g.getString("nbr") ;%>
                          <%= panier %>
                          <%}}%>
                          ]
                       </a>
                  </li>
                  <li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
					Espace membre
			</a>
			<div class="dropdown-menu">
			     <a class="dropdown-item" href="register.jsp">Inscription</a>
		             <a class="dropdown-item" href="login.jsp">Connexion</a>
                             <form action="deconnecter" methode="Get">
                                 <input type="submit" class="dropdown-item" value="Deconnecter">
                             </form>
			</div>
	          </li> 
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

    <section id="home-section" class="hero">
		  <div class="home-slider owl-carousel">
	      <div class="slider-item" style="background-image: url(images/2.png);">
	      	<div class="overlay"></div>
	        <div class="container">
	          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

	            <div class="col-md-12 ftco-animate text-center">
	              <h1 class="mb-2">100% Traditionnel</h1>
	              <p><a href="about.jsp" class="btn btn-primary">Voir les details</a></p>
	            </div>

	          </div>
	        </div>
	      </div>

	      <div class="slider-item" style="background-image: url(images/1.jpg);">
	      	<div class="overlay"></div>
	        <div class="container">
	          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

	            <div class="col-sm-12 ftco-animate text-center">
	              <h1 class="mb-2">100% Traditionnel</h1>
	              <!--<h2 class="subheading mb-4">We deliver organic vegetables &amp; fruits</h2>-->
	              <p><a href="#" class="btn btn-primary">Voir les details</a></p>
	            </div>

	          </div>
	        </div>
	      </div>
		   <div class="slider-item" style="background-image: url(images/3.jpg);">
	      	<div class="overlay"></div>
	        <div class="container">
	          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

	            <div class="col-sm-12 ftco-animate text-center">
	              <h1 class="mb-2">100% Traditionnel</h1>
	              <!--<h2 class="subheading mb-4">We deliver organic vegetables &amp; fruits</h2>-->
	              <p><a href="#" class="btn btn-primary">Voir les details</a></p>
	            </div>

	          </div>
	        </div>
	      </div>
	    </div>
    </section>

    <section class="ftco-section">
			<div class="container">
				<div class="row no-gutters ftco-services">
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-1 active d-flex justify-content-center align-items-center mb-2">
            		<span class="flaticon-shipped"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">LAIVRAISON GRATUITE</h3>
                
              </div>
            </div>      
          </div>
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-2 d-flex justify-content-center align-items-center mb-2">
            		<span class="flaticon-diet"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Toujours frais</h3>
                
              </div>
            </div>    
          </div>
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-3 d-flex justify-content-center align-items-center mb-2">
            		<span class="flaticon-award"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">QUALITÉ SUPÉRIEURE</h3>
                
              </div>
            </div>      
          </div>
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-4 d-flex justify-content-center align-items-center mb-2">
            		<span class="flaticon-customer-service"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Support 24/7</h3>
              </div>
            </div>      
          </div>
        </div>
			</div>
		</section>

		<section class="ftco-section ftco-category ftco-no-pt">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-6 order-md-last align-items-stretch ">
								<div class="category-wrap-2 ftco-animate img align-self-stretch align-items-end" style="background-image: url(images/.jpg);">

									<div class="text text-center">
										<h2>Categories</h2>
										<p>Differents produits a votre service...</p>
										<p><a href="shop.jsp?&categorie" class="btn btn-primary">Acheter maintenant</a></p>
									</div>
									
								</div>
								<br>
								<br>
								<br>
								<br>
								<br>
								<div class=" category-wrap ftco-animate img d-flex align-items-end" style="background-image: url(images/product-3.jpg);">
									<div class="text px-3 py-1">
										<h2 class="mb-0"><a href="#">Tapis</a></h2>
									</div>
									</div>
							<br>
								<div class=" category-wrap ftco-animate img d-flex align-items-end" style="background-image: url(images/product-1.jpg);">
									<div class="text px-3 py-1">
										<h2 class="mb-0"><a href="#">Poteries</a></h2>
									</div>
									</div>
							</div>
							
							<div class="col-md-6">
								<div class="category-wrap ftco-animate img mb-4 d-flex align-items-end" style="background-image: url(images/1.jpg);">
									<div class="text px-3 py-1">
										<h2 class="mb-0"><a href="#">Vetements</a></h2>
									</div>
								</div>
								<div class="category-wrap ftco-animate img d-flex align-items-end" style="background-image: url(images/2.png);">
									<div class="text px-3 py-1">
										<h2 class="mb-0"><a href="#">Bijoux</a></h2>
									</div>
								</div>
								<br>
								<div class=" category-wrap ftco-animate img d-flex align-items-end" style="background-image: url(images/product-2.jpg);">
									<div class="text px-3 py-1">
										<h2 class="mb-0"><a href="#">Broderies</a></h2>
									</div>
									</div>
							</div>
							</div>
						
					</div>

						<div class="col-md-4">
							<div class="category-wrap ftco-animate img mb-4 d-flex align-items-end" style="background-image: url(images/3.jpg);">
								<div class="text px-3 py-1">
									<h2 class="mb-0"><a href="#">Vanneries</a></h2>
								</div>		
							</div>
							<div class="category-wrap ftco-animate img d-flex align-items-end" style="background-image: url(images/4.jpg);">
								<div class="text px-3 py-1">
									<h2 class="mb-0"><a href="#">Gateaux</a></h2>
								</div>
							</div>
							<br>
							<div class=" category-wrap ftco-animate img d-flex align-items-end" style="background-image: url(images/product-11.jpg);">
										<div class="text px-3 py-1">
											<h2 class="mb-0"><a href="#">Didanderies</a></h2>
										</div>
										</div>
						</div>
					</div>
				</div>
			
		</section>

    <section class="ftco-section">
    	<div class="container">
				<div class="row justify-content-center mb-3 pb-3">
          <div class="col-md-12 heading-section text-center ftco-animate">
          	<span class="subheading">Produits recommendee</span>
            <h2 class="mb-4">Nos Produits</h2>
            <p></p>
          </div>
        </div>   		
    	</div>
    	<div class="container">
    		<div class="row">
                    <%
                        ResultSet r =f.executeQuery("select DISTINCT image_pr,nom_pr,prix_pr,id_produit,rating FROM produit ORDER BY rating DESC LIMIT 8");
                        while (r.next()){                                                
                           byte[] imgData = r.getBytes("image_pr"); 
                           request.setAttribute("rvi", "Ravinath");
                           r.getString("image_pr");
                           String encode = Base64.getEncoder().encodeToString(imgData);    
                          
                    %>
    			<div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="product">
    					<a href="product-single.jsp?&id=<%=r.getString("id_produit") %>" class="img-prod"><img Style="width:500px;height:300px" class="img-fluid" src="data:image/jpeg;base64,<%=encode %>" alt="Colorlib Template">
    						<div class="overlay"></div>
    					</a>
    					<div class="text py-3 pb-4 px-3 text-center">
    						<h3><a href="product-single.jsp?&id=<%=r.getString("id_produit") %>"><%=r.getString("nom_pr") %></a></h3>
    						<div class="d-flex">
    							<div class="pricing">
		    						<p class="price"><span><%=r.getString("prix_pr") %> Da</span></p>
		    					</div>
	    					</div>
    						<div class="bottom-area d-flex px-3">
	    						<div class="m-auto d-flex">
	    							<a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
	    								<span><i class="ion-ios-menu"></i></span>
	    							</a>
	    							<a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
	    								<span><i class="ion-ios-cart"></i></span>
	    							</a>
	    							<a href="#" class="heart d-flex justify-content-center align-items-center ">
	    								<span><i class="ion-ios-heart"></i></span>
	    							</a>
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>
                     <% }
                        f.close();
                        r.close();
                        c.close();
                     %>
    		</div>
    	</div>
    </section>
		
    </section>
		<section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
      <div class="container py-4">
        <div class="row d-flex justify-content-center py-5">
          <div class="col-md-6">
          	<h2 style="font-size: 22px;" class="mb-0">Inscription a notre journal</h2>
          	<span>Recevez des e-mail a propos de nos nouvelles offres</span>
          </div>
          <div class="col-md-6 d-flex align-items-center">
            <form action="#" class="subscribe-form">
              <div class="form-group d-flex">
                <input type="text" class="form-control" placeholder="Entrer l'email">
                <input type="submit" value="S'inscrire" class="submit px-3">
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
    <footer class="ftco-footer ftco-section">
      <div class="container">
      	<div class="row">
      		<div class="mouse">
						<a href="#" class="mouse-icon">
							<div class="mouse-wheel"><span class="ion-ios-arrow-up"></span></div>
						</a>
					</div>
      	</div>
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Taklidi</h2>
              <p>100% traditionnel</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Menu</h2>
              <ul class="list-unstyled">
                <li><a href="shop.jsp?&categorie" class="py-2 d-block">Produits</a></li>
                <li><a href="about.jsp" class="py-2 d-block">A propos</a></li>
                <li><a href="blog.jsp" class="py-2 d-block">Blog</a></li>
                <li><a href="contact.jsp" class="py-2 d-block">Nous contacter</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-4">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Aide</h2>
              <div class="d-flex">
	              <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
	                <li><a href="#" class="py-2 d-block">Informations sur la livraison</a></li>
	                <li><a href="#" class="py-2 d-block">Rembourement &amp; Echange</a></li>
	                <li><a href="#" class="py-2 d-block">Terms &amp; Conditions</a></li>
	                <li><a href="#" class="py-2 d-block">Politique de confidentialite</a></li>
	              </ul>
	              <ul class="list-unstyled">
	                <li><a href="#" class="py-2 d-block">FAQs</a></li>
	                <li><a href="#" class="py-2 d-block">Contact</a></li>
	              </ul>
	            </div>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Des Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">Val d`hydra, Alger, Algerie</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+213 21 24 58 69</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">contact@taklidi.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						  Copyright &copy;<script>document.write(new Date().getFullYear());</script> Tous les droits sont reservés<i class="icon-heart color-danger" aria-hidden="true"></i>
						  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>