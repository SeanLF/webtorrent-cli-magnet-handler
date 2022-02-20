# webtorrent-cli-magnet-handler

To be used with [webtorrent-cli](https://github.com/webtorrent/webtorrent-cli) to handle magnet links with the webtorrent CLI

## Getting started:

1. Open the `Script Editor` app
2. Paste code
3. Save as `application` and check `stay open after run handler`
4. Open Finder, navigate to your new app, and click the app to `Show package contents`, then open `./Contents/Info.plist`
5. Add the following after the `CFBundleSignature` key/string pair

```xml
<key>CFBundleURLTypes</key>
<array>
  <dict>
    <key>CFBundleURLName</key>
    <string>Local File</string>
    <key>CFBundleURLSchemes</key>
    <array>
      <string>magnet</string>
    </array>
  </dict>
</array>
```
