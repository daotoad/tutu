# tutu

## Shell bookmarks and navigation

Tutu is a Z-shell bookmark manager.  By integrating with tab completion, tutu makes
it quick and easy to select any bookmarked directory and navigate to it.

Tutu provides three commands:

* tu - navigates to a bookmark using `cd`.
* tutu - navigates to a bookmark using `pushd`
* untu - wraps `popd`, sugar for returning after using `tutu`.


## Installation

1. Clone this repo
2. Run these commands:

```
  make install
  source load_tutu
  echo '[ -r "$HOME/.tutu/load_tutu" ] && source ~/.tutu/load_tutu' >> $HOME/.zshrc
```

## Managing the target list

Add targets by editing `~/.tutu/targets`.  Each line in the file is composed of a bookmark name and a path.

It is important to keep a blank line at the end of the targets file.

Example:

```
  my-bin ~/bin
  proj   ~/Documents/Projects
  tutu   ~/Documents/Projects/tutu

```

## Using the tutu commands

All tutu commands feature tab completion.  You can access a list of matching targets by using tab completion.

### Navigate to a directory using `cd`

To navigate to a directory, use the `tu` command: `tu <target name>`

For example, based on the targets file above, `tu my-bin` is equivalent to `cd ~/bin`.

### Navigate to a directory using `pushd`

To navigate to a directory using the directory stack, use the `tutu` command: `tutu <target name>`.

For example, based on the targets file above, `tu my-bin` is equivalent to `push ~/bin`.

### Return to the previous directory in the stack with `popd`

The `untu` command is an alias for `popd`.  It is purely syntactic sugar and does not add any additonal capabilities.


