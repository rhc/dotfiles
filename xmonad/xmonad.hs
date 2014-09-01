import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Layout.Accordion
import System.IO

myTerminal = "/usr/bin/terminator -b"
myModMask = mod1Mask
myWorkspaces = ["1:dev","2","3","4:vm","5:media","6","7","8","9:server"]
myNormalBorderColor = "grey"
myFocusedBorderColor = "red"
myBorderWidth = 2

main = do
    xmproc <- spawnPipe "/usr/bin/xmobar"
    xmonad $ defaultConfig
        { manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , logHook = dynamicLogWithPP xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "green" "" . shorten 150
                        }
        , borderWidth = myBorderWidth
        , terminal = myTerminal
        , modMask = myModMask
        , normalBorderColor = myNormalBorderColor
        , focusedBorderColor = myFocusedBorderColor
        , workspaces = myWorkspaces
        } `additionalKeys`
        [ ((mod1Mask .|. shiftMask, xK_z), spawn "/usr/bin/xscreensaver-command -lock")
        , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
        , ((0, xK_Print), spawn "/usr/bin/scrot")
        ]
