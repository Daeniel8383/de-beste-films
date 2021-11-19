<?php

/**
 * Movie theme Functions
 *
 * @package Movietheme
 * @since Movietheme 1.0
 */


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
        'hierarchical'        => false,
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