<?php
add_filter('gform_pre_render_1', 'populate_choices');
add_filter('gform_pre_validation_1', 'populate_choices');
//add_filter( 'gform_admin_pre_render', 'populate_choices' );
add_filter('gform_pre_submission_filter_1', 'populate_choices');
function populate_choices($form)
{

    $array_fields = array('sss_embroidery' => 'embroidery', 'sss_border_style' => "border_style", 'sss_backing_type' => 'backing_type');
    $type_feilds = array('select', 'radio');
    foreach ($form['fields'] as $key => &$field) {


        if (!in_array($field->type, $type_feilds) || empty(trim($field->inputName) || $field->inputName == null)) {
            continue;
        }

        if (in_array(trim($field->inputName), $array_fields)) {
            $args = array(
                'post_type' => 'product',
                'order' => 'asc',
                'posts_per_page' => -1,
                'tax_query' => array(
                    array(
                        'taxonomy' => 'product_cat',
                        'field' => 'term_id', //This is optional, as it defaults to 'term_id'
                        'terms' => 20,
                        'operator' => 'IN' // Possible values are 'IN', 'NOT IN', 'AND'.
                    ),
                    array(
                        'taxonomy' => 'product_visibility',
                        'field' => 'slug',
                        'terms' => 'exclude-from-catalog', // Possibly 'exclude-from-search' too
                        'operator' => 'NOT IN'
                    )
                )
            );
            $posts = get_posts($args);

            $choices = array();

            foreach ($posts as $post) {
                $choices[] = array('text' => $post->post_title, 'value' => $post->post_title);
            }
            $field->placeholder = 'Select a Embroidery';
            $field->choices = $choices;
        }

    }

    return $form;
}