<?php get_header(); ?>

<div class = "container-fluid">

 	<div class="jumbotron">
	  <h1 class="display-4">Dit zijn de beste films aller tijden!</h1>
	  <p class="lead">Deze film database laat je de beste films allertijden zien.</p>
	  <hr class="my-4">
	  <p class="lead">
	    <a class="btn btn-primary btn-lg" href="http://localhost/de-beste-films/films/" role="button">Bekijk hier het complete overzicht!</a>
	  </p>
 	</div>

		<div class = "panel panel-default panel-body">
		<div class = "row">
			<div class = "col-md-2">
				<h2>Filter op genre</h2>

				<?php
				// Get the taxonomy's terms
					$terms = get_terms(
					    array(
					        'taxonomy'   => 'genre',
					        'hide_empty' => false,
					    )
					);


					// Check if any term exists
					if ( ! empty( $terms ) && is_array( $terms ) ) {
					    // Run a loop and print them all
					    foreach ( $terms as $term ) { ?>
					    	<ul>
					      <li><a href="<?php echo esc_url( get_term_link( $term ) ) ?>">
					            <?php echo $term->name; ?>
					        </a></li></ul> <?php
					    }
					} 
					?>


			</div>
			<div class = "col-md-10">
				<h2>Onlangs toegevoegd</h2>
		 
				<?php // Begin WP Query Post Loop 
				$args = array(
				    'post_type' => 'films',
				    'order' => 'DESC',
				    'posts_per_page' => 5,

				);
				$the_query = new WP_Query( $args ); ?>

				<?php // Start counter for multiple columns in loop
					$i = 0; 
				?>  

				<?php if ( $the_query->have_posts() ) : ?>

				    <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>

				    	 
				    	<?php // If counter is 0 add new row
							if($i == 0) {
								echo '<div class="row">';
								}
						?>

				    	 <div class = "col-md-5">
				    	 	 <a href="<?php the_permalink() ?>">
				    	 	 <?php the_post_thumbnail( 'medium' ); ?>
				         	 <h2 class="loop-post-title"><?php the_title(); ?></h2><div class="meta"><?php echo get_the_date() ?> | <?php echo get_the_time() ?></div></a>
				         </div>

				         
				         <?php // If counter is 2 then reset to 0
							$i++;
							if($i == 2) {
								$i = 0;
								echo '</div>';
							}
						?>

				   	  
				    <?php endwhile; ?>

				    
				    <?php // Close row when i > 0 
						if($i > 0) {
							echo '</div>';
						}
						?>

				    <?php wp_reset_postdata(); ?>

				<?php endif; ?>

			</div>
		</div>
	</div>

</div>


<?php get_footer(); ?>