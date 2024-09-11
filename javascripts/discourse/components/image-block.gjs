import Component from '@glimmer/component';
import { htmlSafe } from '@ember/template';
import i18n from 'discourse-common/helpers/i18n';

export default class Card extends Component {
  <template>
    <div class='block-banner image'>
      <div class='block-banner__container image'>
        <h2 class='block-banner__message image'>{{htmlSafe
            (i18n (themePrefix 'minimal.image'))
          }}</h2>
        <!--<a class="image-link" href="https://meta.discourse.org/u/angus" target="_blank">
          <img src="https://support.angus.blog/uploads/default/original/1X/99ba86a8ffc795fc2c5c30be75965c131fc41a6d.jpeg" />
        </a>-->
      </div>
    </div>
  </template>
}
