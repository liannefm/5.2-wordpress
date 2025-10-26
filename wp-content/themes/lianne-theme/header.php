<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php bloginfo('name'); ?></title>
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>">
    <link rel="icon" href="<?php echo esc_url( get_site_icon_url() ); ?>" sizes="32x32" />
</head>
<body>
<header>
    <img class="logo" src="<?php echo esc_url( get_site_icon_url() ); ?>">

    <div class="main">
        <h1><?php bloginfo('name'); ?></h1>

        <nav>
            <?php wp_nav_menu(array('theme_location' => 'hoofdmenu')); ?>
        </nav>
    </div>
</header>

