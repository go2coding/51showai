import app from 'flarum/forum/app';
import { extend } from 'flarum/common/extend';
import Discussion from 'flarum/common/models/Discussion';
import Badge from 'flarum/common/components/Badge';

export default function addSubscriptionBadge() {
  extend(Discussion.prototype, 'badges', function (badges) {
    let badge;

    switch (this.subscription()) {
      case 'follow':
        badge = <Badge label={app.translator.trans('flarum-subscriptions.forum.badge.following_tooltip')} icon="fas fa-star" type="following" />;
        break;

      case 'ignore':
        badge = <Badge label={app.translator.trans('flarum-subscriptions.forum.badge.ignoring_tooltip')} icon="far fa-eye-slash" type="ignoring" />;
        break;
    }

    if (badge) {
      badges.add('subscription', badge);
    }
  });
}
