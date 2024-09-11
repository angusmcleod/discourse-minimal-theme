import Component from '@glimmer/component';
import { htmlSafe } from '@ember/template';
import i18n from 'discourse-common/helpers/i18n';
import avatar from "discourse/helpers/avatar";
import bodyClass from "discourse/helpers/body-class";

export default class Hero extends Component {
  get user() {
    return {
      name: "Angus McLeod",
      username: "angus",
      avatar_template: "/user_avatar/support.angus.blog/angus/{size}/4_2.png"
    }
  }

  <template>
    {{bodyClass "home-blocks-hero"}}
    <div class='block-banner hero'>
      <div class='block-banner__container hero'>
        <h2 class='block-banner__message hero'><span class="hero-avatar">{{
          avatar this.user imageSize="extra_large"
        }}</span>{{htmlSafe
            (i18n (themePrefix 'minimal.hero'))
          }}</h2>
      </div>
    </div>
  </template>
}
