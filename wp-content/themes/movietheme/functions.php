<?php

/**
 * Movie theme Functions
 *
 * @package Movietheme
 * @since Movietheme 1.0
 */

// Register nav menu
function register_my_menu() {
  register_nav_menu('primary',__( 'Header Menu' ));
}
add_action( 'init', 'register_my_menu' );

/**
 * Register Custom Navigation Walker Bootstrap
 */
function register_navwalker(){
    require_once get_template_directory() . '/navwalker/class-wp-bootstrap-navwalker.php';
}
add_action( 'after_setup_theme', 'register_navwalker' );

// Register post thumbnails
add_theme_support( 'post-thumbnails' );
set_post_thumbnail_size( 150, 150 );

// Add custom post type Films
function custom_movie_type() {
    // Labels for Custom Post Type
    $labels = array(
        'name'                => _x( 'Films', 'Post Type General Name', 'movietheme' ),
        'singular_name'       => _x( 'Film', 'Post Type Singular Name', 'movietheme' ),
        'menu_name'           => __( 'Films', 'movietheme' ),
        'parent_item_colon'   => __( 'Parent Film', 'movietheme' ),
        'all_items'           => __( 'All Films', 'movietheme' ),
        'view_item'           => __( 'View Film', 'movietheme' ),
        'add_new_item'        => __( 'Add New Film', 'movietheme' ),
        'add_new'             => __( 'Add Film', 'movietheme' ),
        'edit_item'           => __( 'Edit Film', 'movietheme' ),
        'update_item'         => __( 'Update Film', 'movietheme' ),
        'search_items'        => __( 'Search Film', 'movietheme' ),
        'not_found'           => __( 'Not Found', 'movietheme' ),
        'not_found_in_trash'  => __( 'Not found in Trash', 'movietheme' ),
    );
     
    // Customize options for Custom Post Type  
    $args = array(
        'label'               => __( 'Films', 'movietheme' ),
        'description'         => __( 'Film overzicht', 'movietheme' ),
        'labels'              => $labels,
        'supports'            => array( 'title', 'editor', 'excerpt', 'author', 'thumbnail', 'revisions', 'custom-fields', ),
        'taxonomies'          => array( 'genre', ),
        'hierarchical'        => true,
        'public'              => true,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => true,
        'show_in_admin_bar'   => true,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
   		'menu_icon'           => 'dashicons-format-video',
        'capability_type'     => 'page',
    );
    // Registering Custom Post Type
    register_post_type( 'Films', $args );
}
 
add_action( 'init', 'custom_movie_type', 0 );


// Register taxonomy genre
function movietheme_custom_taxonomy() {
    register_taxonomy(
        'genre',  
        'films',           
        array(
            'hierarchical' => true,
            'label' => 'Genre', 
            'query_var' => true,
            'rewrite' => array(
                'slug' => 'genre',    
                'with_front' => false 
            )
        )
    );
}
add_action( 'init', 'movietheme_custom_taxonomy');

// Register taxonomy Year
function movietheme_custom_taxonomy_year() {
    register_taxonomy(
        'jaar',  
        'films',           
        array(
            'hierarchical' => true,
            'label' => 'Jaar', 
            'query_var' => true,
            'rewrite' => array(
                'slug' => 'jaar',    
                'with_front' => false 
            )
        )
    );
}
add_action( 'init', 'movietheme_custom_taxonomy_year');


// Backend filtering custom post type


add_action( 'restrict_manage_posts', 'filter_backend_by_taxonomies' , 99, 2);
// Filter CPT via Custom Taxonomy 

function filter_backend_by_taxonomies( $post_type, $which ) {

// Apply this to a specific CPT
if ( 'films' !== $post_type )
    return;

// A list of custom taxonomy slugs to filter by
$taxonomies = array( 
        'jaar',
        'genre',

 );

foreach ( $taxonomies as $taxonomy_slug ) {

    // Retrieve taxonomy data
    $taxonomy_obj = get_taxonomy( $taxonomy_slug );
    $taxonomy_name = $taxonomy_obj->labels->name;

    // Retrieve taxonomy terms
    $terms = get_terms( $taxonomy_slug );

    // Display filter HTML
    echo "<select name='{$taxonomy_slug}' id='{$taxonomy_slug}' class='postform'>";
    echo '<option value="">' . sprintf( esc_html__( 'Filter op %s', 'movietheme' ), $taxonomy_name ) . '</option>';
    foreach ( $terms as $term ) {
        printf(
            '<option value="%1$s" %2$s>%3$s (%4$s)</option>',
            $term->slug,
            ( ( isset( $_GET[$taxonomy_slug] ) && ( $_GET[$taxonomy_slug] == $term->slug ) ) ? ' selected="selected"' : '' ),
            $term->name,
            $term->count
        );
    }
    echo '</select>';
}

}

