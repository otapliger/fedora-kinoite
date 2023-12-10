FROM quay.io/fedora-ostree-desktops/kinoite:rawhide

LABEL org.opencontainers.image.title="Fedora Kinoite"
LABEL org.opencontainers.image.description="Customized image of Fedora Kinoite"
LABEL org.opencontainers.image.source="https://github.com/otapliger/fedora-kinoite"
LABEL org.opencontainers.image.licenses="MIT"

RUN rpm-ostree install \
  distrobox \
  neovim \
  fish \
  zsh \
  iwd \
  firefox \
  firefox-langpacks \
  && rm -rf /var/lib/unbound/root.key

RUN rpm-ostree override remove \
  fedora-workstation-backgrounds \
  plasma-workspace-wallpapers \
  kdeplasma-addons

COPY usr usr

RUN ostree container commit
