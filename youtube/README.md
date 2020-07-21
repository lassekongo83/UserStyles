## YouTube oldish layout

This UserStyle was converted from my extension [YouTube Classic Polymer](https://github.com/lassekongo83/yt-classic-polymer).
(Media queries are not supported in uBlock Origin, so this UserStyle is only made for 1920x1080 screen sizes. Use the extension or the CSS from the extension in a UserStyle manager if you use a different screen size.)

A UserStyle and filter that redesigns the YouTube polymer design to look like the old design from around 2015. This UserStyle is meant to be used in uBlock Origin on a modern browser. It's just not a UserStyle, it's also a filter that blocks some network requests etc. It filters out and disables some of the newer features on the site that wasn't available in the old design + a couple of other annoyances - like:

* ~~Miniplayer script is blocked, and the button to enable it is filtered out.~~ (Update: Actually requires you to use [my extension](https://github.com/lassekongo83/yt-classic-polymer) / or simply install [this userscript](https://pastebin.com/9SSvndJt).)
* End screen (thumbnails at the end of the video) is blocked.
* Animated thumbnails are blocked.
* Buyable movies from search results are being filtered out.
* The "skeleton" stylesheets that you can see for a brief moment when loading the website are blocked. This will give the illusion that the website loads faster (if you're on a fast connection).
* Casting script is blocked.

Unfortunately not much can be done about the polymer design's bad performance. Some of the network requests that are blocked may add a miniscule performance boost to the site. (I haven't done any benchmarks.)

### How to subscribe
1. Go to uBlock Origin's settings and click on the `Filter lists` pane.
2. Scroll to the bottom and check the `import` checkbox.
3. Copy and paste [this link](https://raw.githubusercontent.com/lassekongo83/UserStyles/master/youtube/yt-oldish-layout.txt) in the text area and then save the changes.
4. Reload YouTube.
