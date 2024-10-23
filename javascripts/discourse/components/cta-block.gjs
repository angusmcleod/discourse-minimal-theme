import Component from '@glimmer/component';
import { htmlSafe } from '@ember/template';
import { iconHTML } from "discourse-common/lib/icon-library";
import { dasherize } from "@ember/string";
import { service } from "@ember/service";
import I18n from "I18n";

export default class Hero extends Component {
  @service currentUser;

  get ctaBlocks() {
    return ['cta_1', 'cta_2', 'cta_3'].map(key => {
      let url = settings[`${key}_url`];
      if (!this.currentUser && key !== "cta_1") {
        url = "/login";
      }
      return `<a class="cta-block ${dasherize(key)}" href=${url}>${
        iconHTML(settings[`${key}_icon`])
      }<span class="cta-block-text">${
        I18n.t(themePrefix(`minimal.${key}`))
      }</span></a>`;
    }).join('');
  }

  <template>
    <div class='block-banner cta'>
      <div class='block-banner__container cta'>
        {{htmlSafe this.ctaBlocks}}
      </div>
    </div>
  </template>
}
