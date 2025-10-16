<?php get_header(); ?>
<div id="content">
    <?php
    if ( have_posts() ) :
        while ( have_posts() ) : the_post();
            ?>
            <h2><?php the_title(); ?></h2>
            <div><?php the_content(); ?></div>

            <div class="onderwerpen">
            <?php 
            if ( have_rows('onderwerpen') ) :
                while( have_rows('onderwerpen') ) :  the_row(); 
            ?>
                    <p><?php echo get_sub_field('naam'); ?> </p>
                    <p><?php echo get_sub_field('beschrijving'); ?> </p>
                    <img src="<?php echo get_sub_field('afbeelding')['url']; ?>">
            <?php 
                endwhile;
            else: 
            ?>
                <p>Geen onderwerpen</p>
            <?php 
            endif; 
            ?>
            </div>

            <?php
        endwhile;
    else :
        echo '<p>Geen berichten gevonden.</p>';
    endif;
    ?>

</div>
<?php get_footer(); ?>

