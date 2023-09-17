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

namespace FoF\Upload\Templates;

class FileTemplate extends AbstractTextFormatterTemplate
{
    /**
     * @var string
     */
    protected $tag = 'file';

    /**
     * {@inheritdoc}
     */
    public function name(): string
    {
        return $this->trans('fof-upload.admin.templates.file');
    }

    /**
     * {@inheritdoc}
     */
    public function description(): string
    {
        return $this->trans('fof-upload.admin.templates.file_description');
    }

    /**
     * {@inheritdoc}
     */
    public function template(): string
    {
        return $this->getView('fof-upload.templates::file');
    }

    /**
     * {@inheritdoc}
     */
    public function bbcode(): string
    {
        return '[upl-file uuid={IDENTIFIER} size={SIMPLETEXT2}]{SIMPLETEXT1}[/upl-file]';
    }
}
