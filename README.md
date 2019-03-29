# Dotfiles

My dotfiles for MacOS / Linux / MSys2

## Usage

My dotfiles repo is designed to be used with `stow`. I have bundled one in for convenience.

```
cd ~/.dotfiles
.bin/stow -Sv <package-name>
```

## Notes on running it on WIndows

Stow depends relative symlinks, which are disabled in MSYS by default. You can ask msys to use windows native links by setting environment variable:

```
export MSYS=winsymlinks:nativestrict
```

Anfortuantely this will require some additional permissions on Windows 7. If you can't extend your user policy to allow for symlinks, you can use MYS workaround, that uses `.lnk` files instead. Unfortunatelly this will only work with Cygwrin, Msys and Mingw programms.

```
export MSYS=winsymlinks:lnk
```

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
