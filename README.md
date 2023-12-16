# Customized image of Fedora Kinoite

This is an image of Fedora Kinoite with the following changes:

**Third-party repositories:**

- _Added_
  - 1Password
  - Tailscale

- _Removed_
  - RPM Fusion
  - Google Chrome
  - PyCharm

**Packages:**

- _Overlayed_
  - iwd
  - fish
  - neovim
  - distrobox

- _Removed_
  - fedora-workstation-backgrounds
  - plasma-workspace-wallpapers
  - kdeplasma-addons
  - discover
  - firefox

## Usage

Install [Fedora Kinoite](https://fedoraproject.org/kinoite/), update to the latest version and reboot.

After reboot, rebase with the following command:

```
rpm-ostree rebase ostree-unverified-image:registry:ghcr.io/otapliger/fedora-kinoite:latest
```

## License

Heavily inspired by [Timothée Ravier's fedora-kinoite](https://github.com/travier/fedora-kinoite/), it follows the same license: [MIT](https://github.com/otapliger/fedora-kinoite/blob/main/LICENSE).
