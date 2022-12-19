# Setup AppImage app for GitHub Actions
Setup [AppImage](https://appimage.org) app on GitHub Actions.

This action installs your AppImage app for use in actions by installing it on tool cache using [AnimMouse/tool-cache](https://github.com/AnimMouse/tool-cache).

This action is implemented as a [composite](https://docs.github.com/en/actions/creating-actions/creating-a-composite-action) action.

## Usage
To use your AppImage app, run this action before running your app.

Specify the name of the binary and the URL of the AppImage file.

```yaml
steps:
  - name: Setup Hello World AppImage
    uses: AnimMouse/setup-appimage@v1
    with:
      name: helloworld
      url: https://github.com/AnimMouse/hello-world-appimage/releases/download/v1/helloworld-appimage-x86_64.AppImage
      
  - run: helloworld
```