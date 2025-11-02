<?php
/*
Plugin Name: Lianne Plugin
Plugin URI: http://voorbeeld.com/
Description: Dit is mijn eerste zelfgemaakte WordPress-plugin.
Version: 1.0
Author: Lianne
Author URI: http://voorbeeld.com/
License: GPLv2 or later
*/

function lianne_plugin_menu() {
    add_options_page(
        'Hero Instellingen',
        'Hero Instellingen',                    
        'manage_options',                 
        'lianne_plugin',             
        'lianne_plugin_instellingen_pagina'
    );
}
add_action('admin_menu', 'lianne_plugin_menu');

function lianne_plugin_clear_cache($old_value, $value, $option_name) {
    wp_cache_clear_cache();
}
add_action('update_option', 'lianne_plugin_clear_cache', 10, 3);

function lianne_plugin_instellingen_pagina() {
    ?>
    <div class="wrap">
        <h2>Hero Instellingen</h2>
        <form method="post" action="options.php">
            <?php
            settings_fields('lianne_plugin_options_group');
            ?>
            <label for="lianne_plugin_hero_title">Hero Titel:</label>
            <input type="text" id="lianne_plugin_hero_title" name="lianne_plugin_hero_title" value="<?php echo get_option('lianne_plugin_hero_title'); ?>">
            <br>
            <label for="lianne_plugin_hero_description">Hero Beschrijving:</label>
            <input type="text" id="lianne_plugin_hero_description" name="lianne_plugin_hero_description" value="<?php echo get_option('lianne_plugin_hero_description'); ?>">
            <?php
            submit_button();
            ?>
        </form>
    </div>
    <?php
}

function lianne_plugin_register_settings() {
    register_setting('lianne_plugin_options_group', 'lianne_plugin_hero_title');
    register_setting('lianne_plugin_options_group', 'lianne_plugin_hero_description');
}
add_action('admin_init', 'lianne_plugin_register_settings');