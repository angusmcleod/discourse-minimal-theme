import Component from '@glimmer/component';
import { htmlSafe } from '@ember/template';
import i18n from 'discourse-common/helpers/i18n';

export default class Hero extends Component {
  <template>
    <div class='block-banner hero'>
      <div class='block-banner__container hero'>
        <h2 class='block-banner__message hero'>{{htmlSafe
            (i18n (themePrefix 'minimal.hero'))
          }}</h2>
      </div>
    </div>
  </template>
}
