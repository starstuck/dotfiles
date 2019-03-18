# Dotfiles

My dotfiles for MacOS / Linux / MSys2

## Usage

It is best to use with stow. There is one budled in.

```
cd ~/.dotfiles
.bin/stow -Sv <package-name>
```

## Notes on running it on WIndows

Stow depends havilly on symlinks. You can ask msys to use windows native links.
Just add to your profile.

```
export MSYS=winsymlinks:nativestrict
```

This may require some extra permissions on Windows 7

## Fonts on Mac

Copy fonts to ~/Library/Fonts. Symlinks don't seem to work, fonts need to be copied.

## Fonts on Windows

There is no special folder, where windows would look up fonts. The only workaround that I have found is running a little powershell script in the .fonts folder.

```
Add-Type -Name Session -Namespace "" -Member @"
[DllImport("gdi32.dll")]
public static extern int AddFontResource(string filePath);
"@

$null = foreach($font in Get-ChildItem -Recurse -Include *.ttf, *.otf) {
    [Session]::AddFontResource($font.FullName)
}
```

This script will need to be run at each user session start, so you can consider adding a link to in Autostart folder.

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
