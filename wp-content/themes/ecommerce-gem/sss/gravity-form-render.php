<?php



function sss_add_leads($form_id, $qty, $start = 1)
{
    global $wpdb;
    $table = $wpdb->prefix . 'rg_lead';
    $tableDetail = $wpdb->prefix . 'rg_lead_detail';
    $form = GFFormsModel::get_form_meta($form_id);
    $lead = GFFormsModel::create_lead($form);
    $itt = $start;
    for ($j = 0; $j < $qty; $j++) {
        foreach ($form['fields'] as $field) {
            if ($field['type'] == 'email') {
                $lead[$field['id']] = md5($itt) . '@md5.gen';
            } elseif ($field['type'] == 'text') {
                $lead[$field['id']] = md5($itt);
            }
        }
        // var_dump($lead);
        unset($lead['id']);
        unset($lead['post_id']);
        $lead['date_created'] = date("Y-m-d H:i:s");
        $leadMeta = array();
        $leadDetail = array();
        $leadDetails = array();
        foreach ($lead as $key => $value) {
            if (gettype($key) == 'integer') {
                $leadDetail['field_number'] = $key;
                $leadDetail['value'] = $value;
                $leadDetail['form_id'] = $form_id;
                $leadDetails[] = $leadDetail;
            } else {
                $leadMeta[$key] = $value;
            }
        }
        $wpdb->insert($table, $leadMeta, array('%s', '%d', '%s', '%s', '%s', '%s', '%d',));
        $lead_id = $wpdb->insert_id;
        for ($i = 0; $i < count($leadDetails); $i++) {
            $leadDetails[$i]['lead_id'] = $lead_id;
        }
        // var_dump($leadDetails);
        foreach ($leadDetails as $leadDetail) {
            $wpdb->insert($tableDetail, $leadDetail, array('%d', '%s', '%d', '%d',));
        }
        $itt++;
    }
}

//add_action('init', 'create_entry');
function create_entry()
{

    $input_values['3.3'] = 'Single line text';
    $input_values['3.6'] = 'First name';
    $input_values['4'] = 'kinextest@yopmail.com';
    $input_values['5'] = 'A paragraph of text.';
    $input_values['6'] = 'A paragraph of text.';
    $input_values['23'] = 'A paragraph of text.';
    $input_values['9'] = 'A paragraph of text.';
    $input_values['7'] = 'A paragraph of text.';
    $input_values['10'] = 'A paragraph of text.';
    $input_values['12'] = 'A paragraph of text.';

    $input_values['form_id'] = 1;
    $entry_meta = GFAPI::add_entry($input_values);
    $form = GFFormsModel::get_form_meta(1);
    GFAPI::send_notifications($form, $input_values);

}

add_action('init', 'sss_free_quote_submit');

function sss_free_quote_submit()
{

    if (isset($_POST['quote-form-submit']) && wp_verify_nonce($_POST['_wpnonce'], 'quote-form')) {
        $form_id = (isset($_POST['form_if']) ? $_POST['form_if'] : 1);

        $form = GFFormsModel::get_form_meta($form_id);
        $filter_fields = array();
        foreach ($form['fields'] as $field) {
            /* @var GF_Field $field */
            if (in_array($field->type, array('html', 'page', 'section'))) {
                continue;
            }
            $inputs = $field->get_entry_inputs();

            if (is_array($inputs)) {
                foreach ($inputs as $input) {
                    $input_id = (string)$input['id'];
                    $filter_fields[$input_id] = $input['name'];
                }
            } else {
                $field_id = $field->id;
                $filter_fields[$field_id] = $field->inputName;
            }
        }
        $entry_data = array();
        $filter_fields = array_filter($filter_fields);

        foreach ($_POST['productData'] as $key => $value) {
            if (in_array($key, $filter_fields)) ;
            {
                $fkey = array_search($key, $filter_fields);
                $entry_data[$fkey] = $value;
            }
        }
        $entry_data['form_id'] = $form_id;
        $entry_meta = GFAPI::add_entry($entry_data);
        GFAPI::send_notifications($form, $entry_data);
    }


}


add_shortcode('free_quote', 'sss_free_quote');

function sss_free_quote()
{
    ob_start();
    get_template_part('sss/templates/free', 'quote');
    $results = ob_get_contents();
    ob_clean();
    return $results;
}

function sss_backing_type()
{
    $choices = array();
    if (have_rows('backing_price', 'option')):
        while (have_rows('backing_price', 'option')) : the_row();

            if (have_rows('repeat_fields')):
                while (have_rows('repeat_fields')) : the_row();
                    $type = get_sub_field('price_in');
                    $main_price = get_sub_field('price');
                    $title = get_sub_field('title');
                    $price = '';
                    if ($type == 'flat') {
                        $price = " (" . wc_price($main_price) . "/patch)";
                    } else {
                        $price = " (" . $main_price . "% /patch)";
                    }
                    $choices[] = array('text' => $title . $price, 'value' => $title);

                endwhile; endif;
        endwhile; endif;

    return $choices;
}


function sss_border_style()
{
    $choices = array();
    if (have_rows('border_price', 'option')):
        while (have_rows('border_price', 'option')) : the_row();

            if (have_rows('repeat_fields')):
                while (have_rows('repeat_fields')) : the_row();
                    $type = get_sub_field('price_in');
                    $main_price = get_sub_field('price');
                    $title = get_sub_field('title');
                    $price = '';
                    if ($type == 'flat') {
                        $price = " (" . wc_price($main_price) . "/patch)";
                    } else {
                        $price = " (" . $main_price . "% /patch)";
                    }
                    $choices[] = array('text' => $title . $price, 'value' => $title);
                endwhile;
            endif;
        endwhile;
    endif;
    return $choices;
}

function sss_embroidery()
{
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
    return $choices;
}