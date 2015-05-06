import XMonad
import XMonad.Config.Gnome

myTerminal = "urxvt"

main = xmonad gnomeConfig 
  {
    terminal = myTerminal
  }
