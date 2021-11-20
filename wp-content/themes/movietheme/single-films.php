<?php get_header(); ?>

<div class = "container-fluid">

    <div class="jumbotron">
      <h1 class="display-4"><?php the_title(); ?></h1>
      <hr class="my-4">
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
             <div class = "col-md-2">
                <?php the_post_thumbnail( 'medium' ); ?>
             </div>
            <div class = "col-md-8">              
                <h2><?php the_title(); ?> | 
                    <?php
                        $terms = get_the_terms( $post->ID , 'genre' );
                        foreach( $terms as $term ) {

                            echo $term->name;

                        }
                    ?></h2>

                <p><?php the_content();?></p>

            </div>
        </div>
     </div>
    </div>

</div>

<?php get_footer(); ?>