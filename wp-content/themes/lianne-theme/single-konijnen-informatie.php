<?php get_header(); ?>
<div id="KonijnenInfo">
    <?php
    if ( have_posts() ) :
        while ( have_posts() ) : the_post();
            ?>
                <h2><?php the_title(); ?></h2>
            <div id=tekstveldKonijnInfo>
                <div><?php the_content(); ?></div>
            </div>

            <!-- <div class="onderwerpen"> -->
            <div id=blogvak>
                <?php 
                if ( have_rows('onderwerpen') ) :
                    while( have_rows('onderwerpen') ) :  the_row(); 
                ?>
                <div class=bloginfopagina>
                        <p><?php echo get_sub_field('naam'); ?> </p>
                        <p><?php echo get_sub_field('beschrijving'); ?> </p>
                        <img src="<?php echo get_sub_field('afbeelding')['url']; ?>">
                </div>
                <?php 
                    endwhile;
                ?>
            </div>
            <?php
            else: 
                ?>
                <p>Geen onderwerpen</p>
                <?php 
            endif; 
            ?>
            <!-- </div> -->

            <?php
        endwhile;
    else :
        echo '<p>Geen berichten gevonden.</p>';
    endif;
    ?>

</div>
<?php get_footer(); 
?>