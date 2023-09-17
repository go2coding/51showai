<?php echo $forum['headerHtml']; ?>


<div id="app" class="App">

    <div id="app-navigation" class="App-navigation"></div>

    <div id="drawer" class="App-drawer">

        <header id="header" class="App-header">
            <div id="header-navigation" class="Header-navigation"></div>
            <div class="container">
                <div class="Header-title">
                    <a href="<?php echo e($forum['baseUrl']); ?>" id="home-link">
                        <?php if($forum['logoUrl']): ?>
                            <img src="<?php echo e($forum['logoUrl']); ?>" alt="<?php echo e($forum['title']); ?>" class="Header-logo">
                        <?php else: ?>
                            <?php echo e($forum['title']); ?>

                        <?php endif; ?>
                    </a>
                </div>
                <div id="header-primary" class="Header-primary"></div>
                <div id="header-secondary" class="Header-secondary"></div>
            </div>
        </header>

    </div>

    <main class="App-content">
        <div id="content"></div>

        <?php echo $content; ?>


        <div class="App-composer">
            <div class="container">
                <div id="composer"></div>
            </div>
        </div>
    </main>

</div>

<?php echo $forum['footerHtml']; ?>

<?php /**PATH /var/www/bbs/vendor/flarum/core/src/Frontend/../../views/frontend/forum.blade.php ENDPATH**/ ?>