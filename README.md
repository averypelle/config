# Avery's Setup

This repo contains my preferred new computer environment setup and shell configuration. It exists so that I can easily replicate my preferences onto a new system in minutes and keep my computers in sync.

## Dependencies

This repo depends on the following tools being installed on your system

* git
* zsh
* oh-my-zsh
* ghostty

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

* Music: [Spotify](https://www.spotify.com/us/download/mac/). Download and queue up some tunes. This might take a while.

* Browser: [Dia Browser](https://www.diabrowser.com/)

* Editor: [Sublime Text](https://www.sublimetext.com/)

* Passwords: 1Password [Desktop app](https://1password.com/downloads/mac/) and [browser extension](https://1password.com/downloads/browser-extension/).

* Terminal: [Ghostty](https://ghostty.org/)

* Peripherals: [Logi Options](https://www.logitech.com/en-us/software/logi-options-plus) *sigh*.


## Development Environment Setup

1. . Install Xcode Command Line Tools

```bash
xcode-select --install
```

2. Generate a new SSH key for this computer and add it to the ssh-agent. [Follow the GitHub guide here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

3. Add the new SSH key to your GitHub account. [Follow the GitHub guide here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account?tool=webui).

4. Configure git

```bash
# Tell git who you are
git config --global user.email "you@email.com"
git config --global user.name "Your Name"

# other useful git configs
git config --global --add --bool push.autoSetupRemote true
```

5. Clone this repo

```bash
git clone git@github.com:averypelle/config.git
```

6. Install [oh-my-zsh](https://ohmyz.sh/)

7. Install the [MonoLisa](https://www.monolisa.dev/) font

8. Sync the configs

```bash
./sync.sh
```

## Programming Language Setup

* Python: [uv](https://docs.astral.sh/uv/) `curl -LsSf https://astral.sh/uv/install.sh | sh`

* TypeScript: [bun](https://bun.com/) `curl -fsSL https://bun.sh/install | bash`

## Work Apps

* Notion, Figma, Slack.
