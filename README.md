# Select files or directories with lf

A simple plugin to let you select some files or a directory using [lf](https://github.com/gokcehan/lf)

## 🛠️ Installation

### Using [Antigen](https://github.com/zsh-users/antigen)

Bundle `zsh-vi-mode` in your `.zshrc`

```shell
antigen bundle chmouel/zsh-select-with-lf
```

### Using [zplug](https://github.com/b4b4r07/zplug)

Load `zsh-vi-mode` as a plugin in your `.zshrc`

```shell
zplug "chmouel/zsh-select-with-lf"
```

### Using [zgen](https://github.com/tarjoilija/zgen)

Include the load command in your `.zshrc`

```shell
zgen load chmouel/zsh-select-with-lf
```

### Using [zinit](https://github.com/zdharma-continuum/zinit)

Include the load command in your `.zshrc`

```shell
zinit ice depth=1
zinit light chmouel/zsh-select-with-lf
```

Note: the use of `depth=1` ice is optional, other types of ice are neither
recommended nor officially supported by this plugin.

### As an [Oh My Zsh!](https://github.com/robbyrussell/oh-my-zsh) custom plugin

Clone `zsh-vi-mode` into your custom plugins repo

```shell
git clone https://github.com/chmouel/zsh-select-with-lf \
  $ZSH_CUSTOM/plugins/zsh-vi-mode
```

Then load as a plugin in your `.zshrc`

```shell
plugins+=(zsh-vi-mode)
```

Keep in mind that plugins need to be added before `oh-my-zsh.sh` is sourced.

### Using [Antibody](https://getantibody.github.io/)

Add `zsh-vi-mode` to your plugins file (e.g. `~/.zsh_plugins.txt`)

```shell
chmouel/zsh-select-with-lf
```

### Using [Zap](https://github.com/zap-zsh/zap)

Load `zsh-vi-mode` as a plugin in your `.zshrc`

```shell
plug "chmouel/zsh-select-with-lf"
```

### Manual

Or any ZSH plugin manager (I use my own simple one [vtplug](https://blog.chmouel.com/2022/03/18/vtplug-a-very-dumb-and-tiny-zsh-plugin-manager/))

You can as well simply git clone this repository and source the
`zsh-select-with-lf.plugin.zsh` file if you want to do this just manually.

## Requirements

Only [lf](https://github.com/gokcehan/lf) is needed.

## Usage

Just do `C-x C-l` to select a directory and `C-x l` (C-x mean control and x) it
will start `lf` and put the result file or directory on your command line.

For files you need to select the files and press enter, for the directories you
need to navigate to the directory and press q to quit `lf`.

This plugin will try to do the right thing if you have a file or a directory on
the current word to have `lf` initially started on the right directory.

## Configuration

You can customize some variables

- `ZSH_SELECT_WITH_LF_FILE_BIND`: The keybinding to use to select files default to "^x^f"
- `ZSH_SELECT_WITH_LF_DIR_BIND`: The keybinding to use to select directories default to "^x^f"

## Copyright

[Apache-2.0](./LICENSE)

## Authors

Chmouel Boudjnah

- Fediverse - <[@chmouel@fosstodon.org](https://fosstodon.org/@chmouel)>
- Twitter - <[@chmouel](https://twitter.com/chmouel)>
- Blog - <[https://blog.chmouel.com](https://blog.chmouel.com)>

## Alternative

The wiki list another method on how to do this: <https://github.com/gokcehan/lf/wiki/Integrations#zsh-file-picker--directory-changer>
