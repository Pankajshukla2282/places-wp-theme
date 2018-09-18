<!DOCTYPE html>
<html class="no-js">
<head>
	<title><?php wp_title('•', true, 'right'); bloginfo('name'); ?></title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div class="container-fluid" ng-app="pdapp"> <!-- Closed in footer.php -->
 
	<div class="container site_header">

		<nav class="navbar navbar-expand-md navbar-light bg-light nav_header">
		
		  <a class="navbar-brand my-auto" href="<?php echo esc_url( home_url('/') ); ?>">
		    <img src="<?php echo get_theme_file_uri( 'theme/images/taj.svg.png' );?>" width="30" height="30" class="d-inline-block align-top" alt="">
			<?php bloginfo('name'); ?>
	      </a>	      
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#pdNavbarNav" aria-controls="pdNavbarNav" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		
		  <div class="collapse navbar-collapse" id="pdNavbarNav">
		    <?php
		      wp_nav_menu( array(
		        'theme_location'	=> 'navbar',
		        'container'       => false,
		        'menu_class'		  => '',
		        'fallback_cb'		  => '__return_false',
		      	'items_wrap'		  => '<ul id="%1$s" class="navbar-nav mr-auto mt-2 mt-lg-0 small %2$s">%3$s</ul>',
		        'depth'			      => 2,
			      'walker'  	      => new pd_walker_nav_menu()
		      ) );
		    ?>
		    <ul class="navbar-nav mr-auto small">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Dropdown
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ url('/login') }}">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ url('/register') }}">Register</a>
                </li>
            </ul>
		  </div>
		</nav>
	    
	    <div class="jumbotron search_box">
          <div class="col-sm-8 mx-auto">
              <?php get_search_form( );?>
          </div>
        </div>
	</div>

