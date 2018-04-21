/* global ga */

import 'autotrack/lib/plugins/outbound-link-tracker'

ga('require', 'outboundLinkTracker', {
  events: ['click', 'auxclick', 'contextmenu']
})

ga('send', 'pageview')
