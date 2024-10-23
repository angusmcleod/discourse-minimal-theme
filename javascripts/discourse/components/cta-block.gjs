import Component from '@glimmer/component';
import { htmlSafe } from '@ember/template';
import { iconHTML } from "discourse-common/lib/icon-library";
import { dasherize } from "@ember/string";
import { service } from "@ember/service";
import I18n from "I18n";
import i18n from 'discourse-common/helpers/i18n';
import { on } from "@ember/modifier";
import dIcon from "discourse-common/helpers/d-icon";
import DiscourseURL from "discourse/lib/url";
import { action } from "@ember/object";

export default class Hero extends Component {
  @service currentUser;

  get ctaBlocks() {
    return ['cta_1', 'cta_2'].map(key => {
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

  @action
  openChat() {
    if (this.currentUser) {
      document.querySelector(".sidebar-section-link[data-link-name=angus]").click();
    } else {
      DiscourseURL.routeTo("/login");
    }
  }

  <template>
    <div class='block-banner cta'>
      <div class='block-banner__container cta'>
        {{htmlSafe this.ctaBlocks}}
        <a class="cta-block cta-3-block" {{on "click" this.openChat}}>
           {{dIcon "d-chat"}}
          <span class="cta-block-text">{{htmlSafe (i18n (themePrefix "minimal.cta_3"))}}</span>
        </a>
      </div>
    </div>
  </template>
}
