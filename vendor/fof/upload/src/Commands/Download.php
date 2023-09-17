<?php

/*
 * This file is part of fof/upload.
 *
 * Copyright (c) FriendsOfFlarum.
 * Copyright (c) Flagrow.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace FoF\Upload\Commands;

use Flarum\User\User;

class Download
{
    /**
     * @var string
     */
    public $uuid;
    /**
     * @var User
     */
    public $actor;
    /**
     * @var null|int
     */
    public $discussionId;
    /**
     * @var null|int
     */
    public $postId;

    public function __construct($uuid, User $actor, $discussionId = null, $postId = null)
    {
        $this->uuid = $uuid;
        $this->actor = $actor;
        $this->discussionId = $discussionId;
        $this->postId = $postId;
    }
}
