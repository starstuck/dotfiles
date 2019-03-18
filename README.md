# Dotfiles

My dotfiles for MacOS / Linux / MSys2

## Usage

It is best to use with stow. There is one budled in.

```
cd ~/.dotfiles
.bin/stow -Sv <package-name>
```

## Notes on runnign it on WIndows

Stow depends havilly on symlinks. You can ask msys to use windows native links.
Just add to your profile.

```
export MSYS=winsymlinks:nativestrict
```

This may require some extra permissions on Windows 7

## TODO

 - Re-arrange stow packages to more coarse 'layers'
 - Try to find a way in emacs to discover if Anonymous Pro font can be found and fallback to Consolas on windows
 - Yascroll does not seem to work any more. Need to find alternate solution.
 - Add windows customization layer that:
   * Adds CRLF <-> LV conversion in git
     ```
     [core]
         sutocrlf = true
     ```
