<?php

/*
 * This file is part of Flarum.
 *
 * For detailed copyright and license information, please view the
 * LICENSE file that was distributed with this source code.
 */

namespace Flarum\Filter;

interface FilterInterface
{
    /**
     * This filter will only be run when a query contains a filter param with this key.
     */
    public function getFilterKey(): string;

    /**
     * Filters a query.
     *
     * @todo: 2.0 change the $filterValue type to mixed, as it can be an array.
     */
    public function filter(FilterState $filterState, string $filterValue, bool $negate);
}
