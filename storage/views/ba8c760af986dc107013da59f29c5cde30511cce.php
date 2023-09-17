<!doctype html>
<html <?php if($direction): ?> dir="<?php echo e($direction); ?>" <?php endif; ?>
      <?php if($language): ?> lang="<?php echo e($language); ?>" <?php endif; ?>>
    <head>
        <meta charset="utf-8">
        <title><?php echo e($title); ?></title>

        <?php echo $head; ?>

    </head>

    <body>
        <?php echo $layout; ?>


        <div id="modal"></div>
        <div id="alerts"></div>

        <script>
            document.getElementById('flarum-loading').style.display = 'block';
            var flarum = {extensions: {}};
        </script>

        <?php echo $js; ?>


        <script id="flarum-json-payload" type="application/json"><?php echo json_encode($payload, 15, 512) ?></script>

        <script>
            const data = JSON.parse(document.getElementById('flarum-json-payload').textContent);
            document.getElementById('flarum-loading').style.display = 'none';

            try {
                flarum.core.app.load(data);
                flarum.core.app.bootExtensions(flarum.extensions);
                flarum.core.app.boot();
            } catch (e) {
                var error = document.getElementById('flarum-loading-error');
                error.innerHTML += document.getElementById('flarum-content').textContent;
                error.style.display = 'block';
                throw e;
            }
        </script>

        <?php echo $foot; ?>

    </body>
</html>
<?php /**PATH /var/www/bbs/vendor/flarum/core/src/Frontend/../../views/frontend/app.blade.php ENDPATH**/ ?>