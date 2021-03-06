# Dotfiles # 

These are my dotfiles for ricing/configuring my dev env. Use at your own risk. 


## Notes ## 
- I usually have to manually setup my graphics card to fix screen tearing 
- You might want to do a manual install of the vim plugins, and not depend on
  the repos that I have 
- My `.zshrc` references a `secrets` file - this is the thing that contains
  stuff I don't want in git. It also contains file paths that will need to be
  updated for each individual computer.

- If you want to use my zsh theme, then you need to link `noah.zsh-theme` into
  our oh-my-zsh folder in your home directory.
- I had to use iTerm to remap some keybindings in vim to toggle between open
  tabs - look at the bottom of `.vimrc` for more information.

- To speed up the autohide and the open of the OS X dock, use 

`defaults write com.apple.dock autohide-time-modifier -int 0`
and 
`killall Dock` 

to change the autohide modifier.

## Vim 
- I am not tracking my `bundle/` folder, as that contains all the modules except
  Vundle that are downloaded using Vundle. You might need to manually create a
  `.vim/bundle` folder before downloading stuff with Vundle. 
- Use `ctags` in conjunction with vim to index projects

## Fonts
- I have taken to using `Fira Code` as my default font for OSX. In iTerm with
  ligatures enabled, it renders `->` as a connected arrow and `!=` as `=/=`
  (connected, of course), along with other neat symbols. Not sure how to package
  this for any setup so you'll have to go find it and download it manually.
- Please note that Fira Code is NOT supported on most of the Linux Terminals
  except Hyper.js. This is because there is a bug with `libvte` which is the
  GNOME terminal utility?

## Color Schemes
Vim: 
- Gruvbox

iTerm2:
- Nord
- Ayu
- Tomorrow Night

## Random Scripts
- stag
- tldr

