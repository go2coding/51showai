import app from '../../forum/app';
import Component from '../../common/Component';
import humanTime from '../../common/helpers/humanTime';
import icon from '../../common/helpers/icon';
import avatar from '../../common/helpers/avatar';

/**
 * Displays information about a the first or last post in a discussion.
 *
 * ### Attrs
 *
 * - `discussion`
 * - `lastPost`
 */
export default class TerminalPost extends Component {
  view() {
    const discussion = this.attrs.discussion;
    const lastPost = this.attrs.lastPost && discussion.replyCount();
    const user = discussion[lastPost ? 'lastPostedUser' : 'user']();
    const time = discussion[lastPost ? 'lastPostedAt' : 'createdAt']();
    const ar = avatar(user || null, { class: 'Avatar' });
    return (
      <span>
        {!!lastPost && icon('fas fa-reply')}{' '}
	{ar}
        {app.translator.trans('core.forum.discussion_list.' + (lastPost ? 'replied' : 'started') + '_text', {
          user,
          ago: humanTime(time),
        })}
      </span>
    );
  }
}
