import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO
 
myManageHook = composeAll
    [ className =? "Gimp"      --> doFloat
    , className =? "Vncviewer" --> doFloat
    ]


-- ruby :=))
-- myFocusedBorderColor = "#E0115F"
myFocusedBorderColor = "red"
myNormalBorderColor = "black"
myBorderWidth = 2
 
main = do
    xmonad $ defaultConfig
        { terminal = "/usr/bin/urxvt"
        , manageHook = manageDocks <+> myManageHook -- make sure to include myManageHook definition from above
                        <+> manageHook defaultConfig
        , layoutHook =  avoidStruts $ layoutHook defaultConfig
        , modMask = mod1Mask     -- Rebind Mod to the Windows key
        , focusedBorderColor = myFocusedBorderColor
        , normalBorderColor = myNormalBorderColor
        , borderWidth = myBorderWidth
        } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
        , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
        , ((0, xK_Print), spawn "scrot")
        ]
