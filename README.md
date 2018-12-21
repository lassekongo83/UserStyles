# UserStyles
Various user styles for a couple of websites.

uBlock Origin and Nano Adblocker can be used to restyle websites, just like a UserStyle manager like Stylus for example. Styles need to be written with the `:style()` syntax. For example `github.com##*:style(background: black !important; color: white !important;)` will make all backgrounds on github black and all text white. `url(...)` is not supported.

### How to subscribe to a style
- Open uBlock Origin's or Nano Adblocker's settings page
- Go to the `Filter lists` pane
- Copy the raw link of the style you want to subscribe to. (The `Raw` button here on GitHub.)
- Scroll to the bottom and click `Import`
- Paste the raw link in the text field and click on the `Apply` button
- Refresh the webpage you applied the style to
