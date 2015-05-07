import XMonad
import XMonad.Config.Gnome
import XMonad.Layout.NoBorders


myTerminal = "urxvt"
myLayout = tiled ||| Full
  where 
    tiled = Tall nmaster delta ratio
    nmaster = 1 -- default number of windows in the master pane
    ratio = 1/2 -- default proportion of screen occupied by master pane
    delta = 3/100 -- increment when resizing panes

main = xmonad gnomeConfig 
  { terminal = myTerminal
  , layoutHook = smartBorders $ myLayout
  }

