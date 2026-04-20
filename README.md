# Avery's Setup

This repo contains my preferred new computer environment setup and shell configuration. It exists so that I can easily replicate my preferences onto a new system in minutes and keep my computers in sync.

## Dependencies

This repo depends on the following tools being installed on your system

- git
- zsh
- oh-my-zsh
- ghostty

## To sync your config with this repo

Run the following commands

```bash
./sync.sh
```

## Worth it

Here is an image of the terminal after the configurations have been applied

![terminal](./terminal.webp)

# Getting started on a new Mac

## My Apps

1. Download [Spotify](https://www.spotify.com/us/download/mac/) and queue up some tunes. This might take a while.

2. Download [Dia Browser](https://www.diabrowser.com/).

3. Download and install [VSCode](https://code.visualstudio.com/download). Log In and make sure Settings Sync is on.

4. Get 1Password set up. [Desktop app](https://1password.com/downloads/mac/) and [browser extension](https://1password.com/downloads/browser-extension/).

5. Install [Claude Code](https://docs.claude.com/en/docs/claude-code/overview).

```bash
npm install -g @anthropic-ai/claude-code
```

## Coding Setup

1. Generate a new SSH key for this computer and add it to GitHub. [Follow the guide here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account?tool=webui).

2. Install Xcode Command Line Tools

```bash
xcode-select --install
```

3. Configure git

```bash
# Tell git who you are
git config --global user.email "you@email.com"
git config --global user.name "Your Name"

# other useful git configs
git config --global --add --bool push.autoSetupRemote true
```

4. Clone this repo

```bash
git clone git@github.com:averypelle/config.git
```

5. [Install Homebrew](https://brew.sh/)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

6. Install [Ghostty terminal](https://ghostty.org/).

```bash
brew install --cask ghostty
```

7. Install [oh-my-zsh](https://ohmyz.sh/)

8. Install the [MonoLisa](https://www.monolisa.dev/) font

9. Sync the configs

```bash
./sync.sh
```

# Programming Languages and CLI tools that I use

## Python Setup

I use [uv](https://github.com/astral-sh/uv?tab=readme-ov-file#installation) to install and manage python. It's really convenient and fast. Follow the linked instructions to install it. Note that `uv` has a dependency on `rust`, so you will need to install that as well.

Install the latest version of Python with `uv`

```bash
uv python install 3.12 # latest version as of writing
```

## JavaScript / TypeScript

I use [Bun](https://bun.com/) as my JavaScript runtime and package manager.

```bash
curl -fsSL https://bun.sh/install | bash
```

## Peripherals

- [Logi Options](https://www.logitech.com/en-us/software/logi-options-plus.html) for [my mouse](https://www.logitech.com/en-us/products/mice/mx-master-3s.910-006558.html).

## Work Apps

- Notion, Figma, Zoom, Slack.
