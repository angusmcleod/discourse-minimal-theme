import Component from '@glimmer/component';
import { htmlSafe } from '@ember/template';
import i18n from 'discourse-common/helpers/i18n';

export default class Video extends Component {
  <template>
    <div class='block-banner video'>
      <div class='block-banner__container video'>
        <div class="block-banner-video-container">
          {{dIcon "play"}}
          <iframe
            width="640"
            height="360"
            src="https://www.loom.com/embed/4ae4ea226a4d43469d329aca3b79395d?sid=b40f4fe7-ed8c-48bc-9527-4571ab734d75"
            frameborder="0"
            webkitallowfullscreen
            mozallowfullscreen
            allowfullscreen>
          </iframe>
        </div>
      </div>
    </div>
  </template>
}
