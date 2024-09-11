import Component from '@glimmer/component';
import { htmlSafe } from '@ember/template';
import i18n from 'discourse-common/helpers/i18n';

export default class Text extends Component {
  <template>
    <div class='block-banner text'>
      <div class='block-banner__container text'>
        <h2 class='block-banner__message text'>{{htmlSafe
            (i18n (themePrefix 'minimal.text'))
          }}</h2>
      </div>
    </div>
  </template>
}
