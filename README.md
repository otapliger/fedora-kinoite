# Customized image of Fedora Kinoite

This is an image of Fedora Kinoite with the following packages overlayed:

- iwd
- zsh
- fish
- neovim
- distrobox

and the following removed:

- fedora-workstation-backgrounds
- plasma-workspace-wallpapers
- kdeplasma-addons
- firefox

## Usage

Install [Fedora Kinoite](https://fedoraproject.org/kinoite/), update to the latest version and reboot.

After reboot, rebase with the following command:

```
rpm-ostree rebase ostree-unverified-image:registry:ghcr.io/otapliger/fedora-kinoite:latest
```

## License

Heavily inspired by [Timothée Ravier's fedora-kinoite](https://github.com/travier/fedora-kinoite/), it follows the same license: [MIT](https://github.com/otapliger/fedora-kinoite/blob/main/LICENSE).
