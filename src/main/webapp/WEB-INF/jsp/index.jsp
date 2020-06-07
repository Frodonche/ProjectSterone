<!DOCTYPE html>
<html lang="en">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Ariane Perrin - Psychologue</title>

  <!-- Font Awesome Icons -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet">
  <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>

  <!-- Plugin CSS -->
  <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

  <!-- Theme CSS - Includes Bootstrap -->
  <link href="css/custom.css" rel="stylesheet">
  <link href="css/creative.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://openlayers.org/en/v4.6.5/css/ol.css" type="text/css">
  <script src="https://openlayers.org/en/v4.6.5/build/ol.js" type="text/javascript"></script>

  <script>
    /* OSM & OL example code provided by https://mediarealm.com.au/ */
    var map;
    var mapLat = 49.1096304;
		var mapLng = 6.1642985;
    var mapDefaultZoom = 16;
    
    function initialize_map() {
      map = new ol.Map({
        target: "map",
        layers: [
            new ol.layer.Tile({
                source: new ol.source.OSM({
                      url: "https://a.tile.openstreetmap.org/{z}/{x}/{y}.png"
                })
            })
        ],
        view: new ol.View({
            center: ol.proj.fromLonLat([mapLng, mapLat]),
            zoom: mapDefaultZoom
        })
      });
    }

    function add_map_point(lat, lng) {
      var vectorLayer = new ol.layer.Vector({
        source:new ol.source.Vector({
          features: [new ol.Feature({
                geometry: new ol.geom.Point(ol.proj.transform([parseFloat(lng), parseFloat(lat)], 'EPSG:4326', 'EPSG:3857')),
            })]
        }),
        style: new ol.style.Style({
          image: new ol.style.Icon({
            anchor: [0.5, 0.5],
            anchorXUnits: "fraction",
            anchorYUnits: "fraction",
            src: "https://upload.wikimedia.org/wikipedia/commons/e/ec/RedDot.svg"
          })
        })
      });

      map.addLayer(vectorLayer); 
    }


  </script>
</head>

<body id="page-top" onload="initialize_map(); add_map_point(49.1096304, 6.1639985);">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">Accueil</a>
    
        <ul class="navbar-nav ml-auto my-2 my-lg-0">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#about">Qui suis-je ?</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#cadretravail">Cadre de travail</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#portfolio">Galerie</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#infospratiques">Infos pratiques</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#contact">Me contacter</a>
          </li>
        </ul>
 
    </div>
  </nav>

  <!-- Masthead -->
  <header class="masthead">
    <div class="container h-100">
      <div class="row h-100 align-items-center justify-content-center text-center">
        <div class="col-lg-10 align-self-end">
          <h1 class="text-white font-weight-bold">Ariane PERRIN</h1>
          <h2 class="text-white font-weight-bold">Psychologue</h2>
          <hr class="divider my-4">
        </div>
        <div class="col-lg-8 align-self-baseline">
          <p class="text-white-75 font-weight-light mb-5"><i>"A l’aube des lendemains heureux, je grandis au présent."</i> Jacques Salomé</p>
          <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Qui suis-je ?</a>
        </div>
      </div>
    </div>
  </header>

  <!-- About Section -->
  <section class="page-section" id="about">
    <div class="container">
      <h2 class="text-center mt-0">Qui suis-je ?</h2>
      <hr class="divider my-4">
      <div class="row">
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <i class="fas fa-4x fa-graduation-cap text-primary mb-4"></i>
            <h3 class="h4 mb-2">Ma formation</h3>
          </div>
        </div>
        <div class="col-lg-9 col-md-6">
          <div class="mt-5">
       		<h5 class="orange mb-0">Psychologue clinicienne, psychothérapeute</h5></br>
	        <p class="text-muted mb-0 custom-justify">Master 2 de psychologie clinique et psychopathologie, spécialité psychopathologie de la cognition et des interactions, Université de Lorraine, Nancy 2</p></br>
		    <p class="text-muted mb-0 custom-justify">Diplôme de Maître-praticien en programmation neuro-linguistique, Independance Way, Bar-le-Duc</p></br>
		    <p class="text-muted mb-0 custom-justify">Formation à la 	thérapie systémique - familiale, Le Creuset Familial, Metz (en cours)</p></br>
          </div>
        </div>
      </div>
      
      <div class="row">
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <i class="fas fa-4x fa-walking text-primary mb-4"></i>
            <h3 class="h4 mb-2">Mon parcours</h3>
          </div>
        </div>
        <div class="col-lg-9 col-md-6">
          <div class="mt-5">
          	<p class="text-muted mb-0 custom-justify">Formée à l'Université de Lorraine aux théories psychodynamiques et aux fondamentaux de la psychologie, je base aujourd'hui ma pratique sur des courants plus intégratifs, inspirés de l'école de Palo Alto.</p></br> 
			<p class="text-muted mb-0 custom-justify">Désireuse d'évoluer dans un environnement professionnel en mouvement, j'ai intégré différents services hospitaliers au sortir de l'université (consultations externes, hôpital de jour, oncologie, consultation mémoire, gériatrie, consultation douleur, soins de soutien, soins palliatifs...). Mobilisée tant auprès des équipes soignantes que des patients et de leur entourage, j'y ai multiplié les rencontres et me suis essayée à différentes techniques qui sont progressivement venues enrichir ma « boîte à outils » thérapeutique.</p></br>
			<p class="text-muted mb-0 custom-justify">En 2017, je rejoins l'école de PNL (programmation neuro-linguistique) humaniste Independance Way de Bar-le-Duc et me forme pendant trois ans aux techniques de communication positive, de développement personnel et de coaching auprès de thérapeutes expérimentés.</p></br>
			<p class="text-muted mb-0 custom-justify">Aujourd'hui installée à mon compte, je propose un suivi individuel et bienveillant, dans un espace chaleureux, pensé pour accueillir et accompagner un public adulte tout-venant en toute confidentialité. Véritable co-construction avec le patient, je base ma pratique sur sa collaboration active vers la transformation de comportements limitants en comportements ressources plus adaptés à ses besoins, dans le respect de ses valeurs et de son rythme propre.</p></br>
			<p class="text-muted mb-0 custom-justify">Je poursuis aujourd'hui mon cursus de formation auprès du Creuset Familial de Metz, école de thérapie systémique et familiale, avec l'envie, à terme, d'accueillir familles et couples au cabinet.</p>
          </div>
        </div>
      </div>	
    </div>
  </section>
  
  <div class="citation">
	<p class="text-white-75 font-weight-light mb-5"><i>"Impose ta chance, serre ton bonheur et va vers ton risque, à te regarder ils s’habitueront."</i> René Char</p>
  </div>
  
  <!-- Cadre de travail -->
  <section class="page-section bg2" id="cadretravail">
    <div class="container">
      <h2 class="text-center mt-0">Cadre de travail</h2>
      <hr class="divider my-4">
      
      	<div class="mt-5">
      		<h5 class="orange mb-0">Cadre légal</h5></br>
      	</div>
      	<div class="row text-center">
	        <div class="col-lg-6 col-md-6">
		        <p class="text-muted mb-0 custom-justify">La pratique du psychologue est soumise à réglementation ainsi qu’à des principes éthiques, fondés sur le respect et la reconnaissance de la personne dans sa dimension psychique comme droit inaliénable.</p></br>
			    <p class="text-muted mb-0 custom-justify">« L’usage professionnel du titre de psychologue est défini par l’article 44 de la loi n°85-772 du 25 juillet 1985 complété par l’article 57 de la loi n° 2002-303 du 4 mars 2002 qui fait obligation aux psychologues de s’inscrire sur les listes ADELI. »</p></br>
			    <p class="text-muted mb-0 custom-justify">Dans cette optique je m’engage à faire connaître, respecter et me référer au Code de déontologie des psychologues de la GIRéDéP (Groupe Inter organisationnel de Réglementation de la Déontologie des Psychologues) du 22 mars 1996, actualisé en février 2012.</p></br>
			    <p class="text-muted mb-0 custom-justify">Il est destiné à « servir de règle aux personnes titulaires du titre de psychologue, quels que soient leur mode et leur cadre d’exercice […]. Le respect de ces règles protège le public des mésusages de la psychologie et l’utilisation de méthodes et techniques se réclamant abusivement de la psychologie.»</p></br>
			    <p class="text-muted mb-0 custom-justify">Vous pouvez le retrouver dans son intégralité à <a href="http://www.codededeontologiedespsychologues.fr/LE-CODE.html">cette adresse</a>.</p></br>
	        </div>
	        <div class="col-lg-6 col-md-6">
		          <img class="img-fluid" src="img/presentation/3.jpg" alt="">
	        </div>
        </div>
        
        <div class="mt-5">
        	<h5 class="orange mb-0">Conditions relatives à la réorientation du patient</h5></br>
        </div>    
        
        <div class="row text-center">
	        <div class="col-lg-6 col-md-6">
		          <img class="img-fluid" src="img/portfolio/fullsize/cabinet1.jpg" alt="">
	        </div>
	        <div class="col-lg-6 col-md-6">
	          	<p class="text-muted mb-0 custom-justify">Dans le respect des bonnes pratiques abordées ci-dessus, de mes propres limites et de l’intégrité de ma patientèle, il est certaines situations spécifiques dans lesquelles je suis amenée à réorienter vers un autre professionnel :</p></br> 
				<ul>
					<li class="text-muted mb-0 custom-justify">Si mes fonctions et compétences ne sont pas compatibles avec la mission (articles 5 et 6).</p></li>
					<li class="text-muted mb-0 custom-justify">Si l’intervention ou le traitement implique une personne à laquelle je suis personnellement liée (article 7).</p></li>
				</ul>
	        </div>
        </div>
        
        <div class="mt-5">
        	<h5 class="orange mb-0">La cadre thérapeutique</h5></br>
        </div>
        <div class="row text-center">
	        <div class="col-lg-6 col-md-6">
	          	<p class="text-muted mb-0 custom-justify">Le cadre thérapeutique est un espace privilégié d’accueil et d’échange. Propice à la libre expression et à la mise en place d’une relation de confiance et d’aide sécure, il engage patient et thérapeute à respecter certains principes :</p></br> 
				<ul>
					<li class="text-muted mb-0 custom-justify">Le cadre requiert un engagement sérieux et mutuel du patient et de son praticien. Les rendez-vous fixés doivent être honorés autant que possible, avec ponctualité, le cas échéant, il convient de les déplacer ou de les annuler dans un délai raisonnable.</p></li>
					<li class="text-muted mb-0 custom-justify">Le suivi thérapeutique est un travail de co-construction qui implique un investissement actif des deux parties.</p></li>
					<li class="text-muted mb-0 custom-justify">Les entretiens sont individuels et ont lieu en présentiel au cabinet.</p></li>
					<li class="text-muted mb-0 custom-justify">La première rencontre dure 1h30, la durée des séances est ensuite fixée à 1h.</p></li>
					<li class="text-muted mb-0 custom-justify">La fréquence des séances est déterminée lors des premières entrevues.</p></li>
					<li class="text-muted mb-0 custom-justify">Le coût des séances est fixé à 50.00 Euros.</p></li>
					<li class="text-muted mb-0 custom-justify">Le praticien s’engage au respect du secret professionnel le plus strict.</p></li>
					<li class="text-muted mb-0 custom-justify">Le patient est libre d'interrompre ou de suspendre la thérapie à tout moment.</p></li>
				</ul>
	        </div>
	        <div class="col-lg-6 col-md-6">
		          <img class="img-fluid" src="img/presentation/1.jpg" alt="">
	        </div>
        </div>
        
        <div class="mt-5">
        	<h5 class="orange mb-0">La rencontre</h5></br>
        </div>
        <div class="row">
        	<div class="col-lg-6 col-md-6">
		          <img class="img-fluid" src="img/presentation/8.jpg" alt="">
	        </div>
	        <div class="col-lg-6 col-md-6">
	          	<p class="text-muted mb-0 custom-justify">La rencontre, plus longue qu’une séance classique, offre un espace d’accueil et de premier contact. Elle est propice à la présentation de chacun et pose les bases du cadre thérapeutique, vers l’établissement d’une relation de confiance. Faire appel à un psychologue peut être une démarche délicate, aussi est-il essentiel de se sentir à l’aise.</p></br> 
				<p class="text-muted mb-0 custom-justify">A l’issue de cette rencontre, le patient est libre de s’engager ou non dans un suivi. S’il le souhaite, un premier rendez-vous peut être fixé. La fréquence des entretiens sera conjointement déterminée en fonction de sa demande.</p></br>
	          
	        </div>
		</div>
        
         <div class="mt-5">
        	<h5 class="orange mb-0">Les séances</h5></br>
        </div>
        <div class="row text-center">
	        <div class="col-lg-6 col-md-6">
	          	<p class="text-muted mb-0 custom-justify">L’entretien thérapeutique est à la fois un espace de travail et un outil d’accès au changement. Véritable travail de co-construction, psychologue et patient coopèrent à l’élaboration et l’atteinte d’un objectif personnalisé et réaliste, permettant la (re)découverte et la mise en place de ses ressources personnelles vers un mieux-être psychique, émotionnel et relationnel, dans le respect de son rythme propre.</p></br> 
				<p class="text-muted mb-0 custom-justify">Les entretiens sont individuels et se déroulent au cabinet sur rendez-vous. Le prix d’une séance d’une heure est fixé à 50€. <b>De nombreuses mutuelles proposent aujourd’hui une prise en charge, les frais doivent cependant être avancés.</b> Une facture peut être fournie sur demande.</p></br>
	        </div>
	        <div class="col-lg-6 col-md-6">
		          <img class="img-fluid" src="img/presentation/7.jpg" alt="">
	        </div>
        </div>
    </div>
  </section>

 <div class="citation">
	<p class="text-white-75 font-weight-light mb-5"><i>"Tout ce que tu soulignes pousse."</i></p>
  </div>

  <!-- Portfolio Section -->
  <section class="page-section" id="portfolio">
  	 <div class="container text-center">
  	 	<h2 class="text-center mt-0">Galerie</h2>
      	<hr class="divider my-4">
  	 	 
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
		  <ol class="carousel-indicators">
		    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		    <li data-target="#myCarousel" data-slide-to="1"></li>
		    <li data-target="#myCarousel" data-slide-to="2"></li>
		    <li data-target="#myCarousel" data-slide-to="3"></li>
		    <li data-target="#myCarousel" data-slide-to="4"></li>
		  </ol>
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img class="d-block w-100" src="img/carousel/0.jpg" alt="">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="img/carousel/1.jpg" alt="">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="img/carousel/2.jpg" alt="">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="img/carousel/3.jpg" alt="">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="img/carousel/4.jpg" alt="">
		    </div>
		  </div>
		</div>

 	</div>
  </section>

  <!-- Call to Action Section -->
  <section class="page-section bg-dark text-white" id="infospratiques">
    <div class="container text-center">
      <h2 class="mb-4">Infos pratiques</h2>
      <hr class="divider my-4">
     

      <div id="map"></div>
	 	
	  <hr class="divider my-4">
     
	  <div class="text-center">
	  	<p class="mb-0">8 avenue du Président J.F. Kennedy, 57000 Metz</p>
	  	<p class="text-muted mb-0">Rez-de-chaussée (pas d'accès handicapé)</p>
	   	<p class="text-muted mb-0">Parking payant devant le cabinet</p>
	   	<p class="text-muted mb-0">Parking gratuit à proximité (patinoire)</p>
	  </div>
  	</div>	
  </section>

  <!-- Contact Section -->
  <section class="page-section" id="contact">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-8 text-center">
          <h2 class="mt-0">Me contacter</h2>
          <hr class="divider my-4">
        </div>
      </div>
      <div class="row">
        <div class="col-lg-4 ml-auto text-center mb-5 mb-lg-0">
          <i class="fas fa-phone fa-3x mb-3 text-primary"></i>
          <div>06 37 41 85 53</div>
        </div>
        <div class="col-lg-4 mr-auto text-center">
          <i class="fas fa-envelope fa-3x mb-3 text-primary"></i>
          <!-- Make sure to change the email address in anchor text AND the link below! -->
          <a class="d-block" href="mailto:a.perrin.psy@gmail.com">a.perrin.psy@gmail.com</a>
        </div>
        <a href="https://www.doctolib.fr/psychologue/metz/ariane-perrin" style="color:#fff" target="_blank" data-reactroot=""><div style="display:block;text-align:center;background-color:#ff9e68;color:#ffffff;font-size:14px;overflow:hidden;width:100%;height:44px;line-height:44px;padding:none;position:fixed;z-index:1010;bottom:0;right:0;left:0"><img style="height:23px;float:left;margin:10px 5px 0 5px;vertical-align:middle;width:auto" src="https://www.doctolib.fr/external_button/doctolib-white-transparent.png" alt="Doctolib"/><span style="display:block;float:left">Prendre rendez-vous en ligne</span><button type="button" style="display:block;width:176px;height:34px;border-radius:4px;background-color:#ffffff;line-height:32px;color:#ff9e68;margin:0 auto;text-transform:uppercase;float:right;margin-top:5px;margin-right:5px">Cliquez ici</button></div></a>

        
      </div>
    </div>
  </section>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/creative.min.js"></script>

</body>

</html>
