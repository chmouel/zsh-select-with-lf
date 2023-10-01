# Select files or directories with lf

A simple plugin to let you select some files or a directory using [lf](https://github.com/gokcehan/lf)

## Install

Using [zplug](https://github.com/zplug/zplug)

```sh
zplug 'chmouel/zsh-select-with-lf'
```

Or any ZSH plugin manager (I use my own simple one [vtplug](https://blog.chmouel.com/2022/03/18/vtplug-a-very-dumb-and-tiny-zsh-plugin-manager/))

You can as well simply git clone this repository and source the
`zsh-select-with-lf.plugin.zsh` file if you want to do this just manually.

## Requirements

You just need to have [lf](https://github.com/gokcehan/lf)

## Usage

Just do `C-x C-l` to select a directory and `C-x l` (C-x mean control and x) it
will start lf and put the result file or directory on your command line.

For files you need to select the files and press enter, for the directories you
need to navigate to the directory and press q to quit lf.

This plugin will try to do the right thing if you have a file or a directory on
the current word to have lf initially started on the right directory.

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

