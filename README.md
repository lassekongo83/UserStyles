# UserStyles
Various user styles for a couple of websites.

While the original intention of uBlock Origin is to block stuff it can also be used unofficially to restyle websites. It's great if you want to reduce the amount of extensions you use. It's not compatible with styles found on userstyles.org. Styles will have to be written in adblocking filter syntax and uBlock Origin's procedural cosmetic [*style:()*](https://github.com/gorhill/uBlock/wiki/Static-filter-syntax#style) syntax.

For example `github.com##*:style(background: black !important; color: white !important)` will make all backgrounds on github black and all text white. This has some limitations though. You can't use `url(...)` for example. So if you wish to replace background images with your own it's better to use a UserStyle manager like [Osprey](https://github.com/JackCDK/osprey) or StyleRRR. Also keep in mind that things may change with uBO, so it's not 100% reliable.

To add one of my styles to uBO go to: *uBlock Origin settings > 3rd-party filters > Custom filter lists* and paste the Raw data __link__ from one of the .txt files and click apply. For example: https://raw.githubusercontent.com/lassekongo83/UserStyles/master/imgur/imgur.txt
