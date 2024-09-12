import Component from '@glimmer/component';
import { htmlSafe } from '@ember/template';
import i18n from 'discourse-common/helpers/i18n';
import avatar from "discourse/helpers/avatar";
import bodyClass from "discourse/helpers/body-class";
import getURL from "discourse-common/lib/get-url";
import themeSetting from "discourse/helpers/theme-setting";
import { service } from "@ember/service";

export default class Hero extends Component {
  @service session;

  get url() {
    return "https://meta.discourse.org/u/angus";
  }

  get imgUrl() {
    if (this.session.defaultColorSchemeIsDark) {
      return this.darkImgUrl;
    } else {
      return settings.theme_uploads.logo;
    }
  }

  get darkImgUrl() {
    return settings.theme_uploads.logo_white;
  }

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
          }}<a href={{this.url}} target="_blank">
            <picture class="discourse-logo">
              <source srcset={{getURL this.darkImgUrl}} media="(prefers-color-scheme: dark)" />
              <img src={{getURL this.imgUrl}} />
            </picture>
          </a>.
        </h2>
      </div>
    </div>
  </template>
}
