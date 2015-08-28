import XMonad
import XMonad.Config.Desktop

baseConfig = desktopConfig
 
main = xmonad  baseConfig
     { terminal    = "urxvt"
     , modMask     = mod4Mask
     , borderWidth = 3
     }

