FROM quay.io/fedora-ostree-desktops/kinoite:rawhide

LABEL org.opencontainers.image.title="Fedora Kinoite"
LABEL org.opencontainers.image.description="Customized image of Fedora Kinoite"
LABEL org.opencontainers.image.source="https://github.com/otapliger/fedora-kinoite"
LABEL org.opencontainers.image.licenses="MIT"

RUN rpm-ostree install \
  neovim \
  fish \
  zsh \
  iwd \
  distrobox \
  && rm -rf /var/lib/unbound/root.key \
  /etc/yum.repos.d/rpmfusion-nonfree* \
  /etc/yum.repos.d/*PyCharm.repo \
  /etc/yum.repos.d/*chrome.repo

RUN rpm-ostree override remove \
  fedora-workstation-backgrounds \
  plasma-workspace-wallpapers \
  kdeplasma-addons \
  plasma-discover \
  plasma-discover-libs \
  plasma-discover-flatpak \
  plasma-discover-notifier \
  plasma-discover-rpm-ostree \
  firefox-langpacks \
  firefox

COPY usr usr

RUN ostree container commit
