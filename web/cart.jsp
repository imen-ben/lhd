<%-- 
    Document   : cart
    Created on : 13 déc. 2019, 21:14:19
    Author     : Lenovo ideapad 320
--%>
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
            ResultSet gg =f.executeQuery("select  DISTINCT count(*) nbr from panier");
            //Récupération du panier dans la session ou création si premier appel et n’existe pas
                  
      %>
		<div class="py-1 bg-primary">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
	    		<div class="col-lg-12 d-block">
		    		<div class="row d-flex">
		    			<div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						    <span class="text">+ 1235 2355 98</span>
					    </div>
					    <div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
						    <span class="text">youremail@email.com</span>
					    </div>
					    <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
						    <span class="text">3-5 Business days delivery &amp; Free Returns</span>
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
                                    if(gg.next()){
                                        panier=gg.getString("nbr") ;%>
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

    <div class="hero-wrap hero-bread" style="background-image: url('images/3.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Accueil</a></span> <span>Panier</span></p>
            <h1 class="mb-0 bread">Mon Panier</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section ftco-cart">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="cart-list">
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
						        <th>&nbsp;</th>
						        <th>&nbsp;</th>
						        <th>Nom </th>
						        <th>Prix</th>
						        <th>Quantité</th>
						        
						      </tr>
						    </thead>
						    <tbody>
						     <%
                                                         f.clearBatch();
                                                         ResultSet g =f.executeQuery("Select panier.id_produit, produit.nom_pr,produit.prix_pr,produit.image_pr,panier.quantite_pr from panier ,produit,client WHERE client.user_cl=panier.user_cl and produit.id_produit=panier.id_produit group BY (panier.id_produit)");
                                                         while (g.next()){
                                                         byte[] imgData = g.getBytes("image_pr"); // blob field 
                                                         request.setAttribute("rvi", "Ravinath");
                                                         g.getString("image_pr"); 
                                                         String encode = Base64.getEncoder().encodeToString(imgData);
                                                      %>

						      <tr class="text-center">
						        <td class="product-remove"><a href="#"><span class="ion-ios-close"></span></a></td>
						        
						        <td class="image-prod"><a name="id" href="product-single.jsp?&id=<%=g.getString("id_produit") %>" class="img-prod"><img Style="width:100px;height:100px"class="img-fluid" src="data:image/jpeg;base64,<%=encode %>" alt="Colorlib Template" id="img" name="img"></td>
						        
						        <td class="product-name">
						        	<h3><%=g.getString("nom_pr") %></h3>
						        </td>
						        
						        <td class="price"><%=g.getString("prix_pr") %></td>
						        
						        <td class="quantity">
						        	<div class="input-group mb-3">
					             	<input type="text" name="quantity" class="quantity form-control input-number" value="<%=g.getString("quantite_pr") %>" min="1" max="100">
					          	</div>
					          </td>
						        
						        
						      </tr><!-- END TR-->
                                                      <%  
                    }
                    f.close();
                    g.close();
                    c.close();
                %>
						    </tbody>
						  </table>
					  </div>
    			</div>
    		</div>
    		<div class="row justify-content-end">
    			<div class="col-lg-4 mt-5 cart-wrap ftco-animate">
    				<div class="cart-total mb-3">
    					<h3>Coupon Code</h3>
    					<p>Enter your coupon code if you have one</p>
  						<form action="#" class="info">
	              <div class="form-group">
	              	<label for="">Coupon code</label>
	                <input type="text" class="form-control text-left px-3" placeholder="">
	              </div>
	            </form>
    				</div>
    				<p><a href="checkout.html" class="btn btn-primary py-3 px-4">Apply Coupon</a></p>
    			</div>
    			<div class="col-lg-4 mt-5 cart-wrap ftco-animate">
    				<div class="cart-total mb-3">
    					<h3>Estimate shipping and tax</h3>
    					<p>Enter your destination to get a shipping estimate</p>
  						<form action="#" class="info">
	              <div class="form-group">
	              	<label for="">Country</label>
	                <input type="text" class="form-control text-left px-3" placeholder="">
	              </div>
	              <div class="form-group">
	              	<label for="country">State/Province</label>
	                <input type="text" class="form-control text-left px-3" placeholder="">
	              </div>
	              <div class="form-group">
	              	<label for="country">Zip/Postal Code</label>
	                <input type="text" class="form-control text-left px-3" placeholder="">
	              </div>
	            </form>
    				</div>
    				<p><a href="checkout.html" class="btn btn-primary py-3 px-4">Estimate</a></p>
    			</div>
    			<div class="col-lg-4 mt-5 cart-wrap ftco-animate">
    				<div class="cart-total mb-3">
    					<h3>Cart Totals</h3>
    					<p class="d-flex">
    						<span>Subtotal</span>
    						<span>$20.60</span>
    					</p>
    					<p class="d-flex">
    						<span>Delivery</span>
    						<span>$0.00</span>
    					</p>
    					<p class="d-flex">
    						<span>Discount</span>
    						<span>$3.00</span>
    					</p>
    					<hr>
    					<p class="d-flex total-price">
    						<span>Total</span>
    						<span>$17.60</span>
    					</p>
    				</div>
    				<p><a href="checkout.html" class="btn btn-primary py-3 px-4">Proceed to Checkout</a></p>
    			</div>
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

  <script>
		$(document).ready(function(){

		var quantitiy=0;
		   $('.quantity-right-plus').click(function(e){
		        
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		            
		            $('#quantity').val(quantity + 1);

		          
		            // Increment
		        
		    });

		     $('.quantity-left-minus').click(function(e){
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		      
		            // Increment
		            if(quantity>0){
		            $('#quantity').val(quantity - 1);
		            }
		    });
		    
		});
	</script>
    
  </body>
</html>