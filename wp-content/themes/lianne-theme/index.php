<?php 
$recent_posts = new WP_Query([
    'post_type'      => 'konijnen-informatie',
    'orderby'        => 'date',
    'order'          => 'DESC'
]);

$recent_post = new WP_Query([
    'post_type'      => 'konijnen-informatie',
    'posts_per_page' => 1,
    'orderby'        => 'date',
    'order'          => 'DESC'
]);

get_header(); 
?>
<main>
    <div class="hero" style="background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('<?php echo get_template_directory_uri(); ?>/assets/images/konijnenplat.jpg');">
        <div class="text">
            <h1><?php echo get_option('lianne_plugin_hero_title'); ?></h1>
            <p><?php echo get_option('lianne_plugin_hero_description'); ?></p>
        </div>
    </div>

    <div class="recent-blog">
        <h2>Laatste blog</h2>

        <?php 
        if ($recent_post->have_posts()) :
            while ($recent_post->have_posts()) :
                $recent_post->the_post();
                ?>
                <a href="<?php the_permalink(); ?>" class="blog">
                    <img src="<?php echo get_field('afbeelding')['url'] ?>">

                    <div class="info">
                        <p class="title"><?php the_title(); ?></p>
                        <?php the_content(); ?>
                    </div>
                </a>
                <?php
            endwhile;
        endif;
        ?>
    </div>

    <div class="recent-blogs">
        <h2>Alle blogs</h2>

        <div class="blogs">
            <?php 
            if ($recent_posts->have_posts()) :
                while ($recent_posts->have_posts()) :
                    $recent_posts->the_post();
                    ?>

                    <a href="<?php the_permalink(); ?>" class="blog">
                        <img src="<?php echo get_field('afbeelding')['url'] ?>">
                        <div class="info">
                            <p class="title"><?php the_title(); ?></p>
                            <p class="timestamp"><?php echo get_the_date('F j, Y') ?></p>
                        </div>
                    </a>

                    <?php
                endwhile;
            endif;
            ?>
        </div>
    </div>
</main>
<?php get_footer(); ?>

