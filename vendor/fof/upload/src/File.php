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

namespace FoF\Upload;

use Carbon\Carbon;
use Flarum\Database\AbstractModel;
use Flarum\Post\Post;
use Flarum\User\User;
use FoF\Upload\Contracts\Template;
use FoF\Upload\Contracts\UploadAdapter;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Support\Str;

/**
 * @property int                   $id
 * @property string                $base_name
 * @property string                $path
 * @property string                $url
 * @property string                $type
 * @property int                   $size
 * @property string                $uuid
 * @property string                $humanSize
 * @property string                $upload_method
 * @property string                $remote_id
 * @property string                $tag
 * @property Collection|Post[]     $posts
 * @property int                   $actor_id
 * @property User                  $actor
 * @property Collection|Download[] $downloads
 * @property Carbon                $created_at
 * @property bool                  $hide_from_media_manager
 */
class File extends AbstractModel
{
    protected $table = 'fof_upload_files';
    protected $appends = ['humanSize'];
    protected $casts = [
        'hide_from_media_manager' => 'boolean',
    ];

    public function actor()
    {
        return $this->belongsTo(User::class, 'actor_id');
    }

    public function posts()
    {
        return $this->belongsToMany(Post::class, 'fof_upload_file_posts');
    }

    public function downloads()
    {
        return $this->hasMany(Download::class);
    }

    public function setUploadMethodAttribute(string|UploadAdapter $value)
    {
        if (is_object($value) && in_array(UploadAdapter::class, class_implements($value))) {
            $value = Str::snake(last(explode('\\', get_class($value))));
        }

        $this->attributes['upload_method'] = $value;
    }

    public function setTagAttribute(Template $template)
    {
        $this->attributes['tag'] = $template->tag();
    }

    public function getHumanSizeAttribute(): string
    {
        return $this->human_filesize($this->size);
    }

    public function human_filesize(string $bytes, int $decimals = 0): string
    {
        $size = ['B', 'kB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];
        $factor = floor((strlen($bytes) - 1) / 3);

        return sprintf("%.{$decimals}f", $bytes / pow(1024, $factor)).@$size[$factor];
    }
}
