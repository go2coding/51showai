<div class="container">
    <h1><?php echo e($apiDocument->data->attributes->title); ?></h1>

    <div>
        <?php $__currentLoopData = $posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <article>
                <?php $user = ! empty($post->relationships->user->data) ? $getResource($post->relationships->user->data) : null; ?>
                <div class="PostUser"><h3 class="PostUser-name"><?php echo e($user ? $user->attributes->displayName : $translator->trans('core.lib.username.deleted_text')); ?></h3></div>
                <div class="Post-body">
                    <?php echo $post->attributes->contentHtml; ?>

                </div>
            </article>

            <hr>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>

    <?php if($hasPrevPage): ?>
        <a href="<?php echo e($url(['page' => $page - 1])); ?>">&laquo; <?php echo e($translator->trans('core.views.discussion.previous_page_button')); ?></a>
    <?php endif; ?>

    <?php if($hasNextPage): ?>
        <a href="<?php echo e($url(['page' => $page + 1])); ?>"><?php echo e($translator->trans('core.views.discussion.next_page_button')); ?> &raquo;</a>
    <?php endif; ?>
</div>
<?php /**PATH /var/www/bbs/vendor/flarum/core/src/Forum/../../views/frontend/content/discussion.blade.php ENDPATH**/ ?>