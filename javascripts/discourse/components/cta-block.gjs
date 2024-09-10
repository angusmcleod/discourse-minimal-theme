import Component from '@glimmer/component';
import { htmlSafe } from '@ember/template';
import { iconHTML } from "discourse-common/lib/icon-library";
import { dasherize } from "@ember/string";
import I18n from "I18n";

export default class Hero extends Component {
  get ctaBlocks() {
    console.log(iconHTML(settings[`cta_1_icon`]))
    return ['cta_1', 'cta_2', 'cta_3'].map(key => {
      return `<a class="cta-block ${dasherize(key)}" href=${settings[`${key}_url`]}>${
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
