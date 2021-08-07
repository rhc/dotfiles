--
--
--
-- Focus follows the mouse pointer
--
-- https://github.com/LutzCle/xmonad-config/blob/master/xmonad.hs
-- https://xiangji.me/2018/11/19/my-xmonad-configuration/

import XMonad
-- import XMonad.Hooks.DynamicLog(dynamicLogWithPP, xmobarPP, ppOutput, ppLayout, ppTitle)
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.SetWMName
import XMonad.Config.Desktop
import XMonad.Layout.ResizableTile
import XMonad.Layout.NoBorders
import XMonad.Layout.Spiral
import XMonad.Layout.Tabbed
import XMonad.Layout.IndependentScreens(countScreens)
import Data.Monoid
import System.Exit
import XMonad.Config.Gnome
import XMonad.Util.Scratchpad
import XMonad.Util.Ungrab
import XMonad.Util.Run(spawnPipe, hPutStrLn)

-- import XMonad.Util.Brightness
import XMonad.Actions.Volume
import XMonad.Actions.WindowBringer
import Graphics.X11.ExtraTypes.XF86
import qualified XMonad.StackSet as W
import qualified Data.Map        as M

myTerminal      = "/home/ckyony/.local/kitty.app/bin/kitty"
-- myTerminal      = "alacritty"
-- myTerminal      = "tilix"
-- myTerminal      = "terminal"
quakeTerminal      = "xterm"
myScreensaver = "xscreensaver-command -lock"
mySelectScreenshot = "select-screenshot"
myScreenshot = "screenshot"

myFocusFollowsMouse :: Bool
myFocusFollowsMouse = True

myClickJustFocuses :: Bool
myClickJustFocuses = False

myBorderWidth   = 1

myModMask       = mod1Mask

myWorkspaces    = ["1","2","3","4","5","6","7","8","9"]

myNormalBorderColor  = "#000000"
myFocusedBorderColor = "#f00000"

-- Key bindings. Add, modify or remove key bindings here.
myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $

    -- launch a terminal
    [ ((modm .|. shiftMask, xK_Return), spawn $ XMonad.terminal conf)

    -- launch dmenu
    , ((modm,               xK_p     ), spawn "dmenu_run")

    -- take a full screenshot
    , ((modm , xK_F11     ), unGrab >> spawn "scrot %Y-%m-%d-%H-%M-%s.png --select --exec 'mv $f /home/ckyony/screenshots' ")
    , ((0 , xK_Print     ), unGrab >> spawn "scrot %Y-%m-%d-%H-%M-%s.png --select --exec 'mv $f /home/ckyony/screenshots'")

    -- launch quake
    , ((modm , xK_o     ), scratchpad)

    -- close focused window
    , ((modm , xK_c     ), kill)

     -- Rotate through the available layout algorithms
    , ((modm,               xK_space ), sendMessage NextLayout)

    --  Reset the layouts on the current workspace to default
    , ((modm .|. shiftMask, xK_space ), setLayout $ XMonad.layoutHook conf)

    -- Resize viewed windows to the correct size
    , ((modm,               xK_n     ), refresh)

    -- Move focus to the next window
    , ((modm,               xK_Tab   ), windows W.focusDown)

    -- Move focus to the next window
    , ((modm,               xK_j     ), windows W.focusDown)

    -- Move focus to the previous window
    , ((modm,               xK_k     ), windows W.focusUp  )

    -- Move focus to the master window
    , ((modm,               xK_m     ), windows W.focusMaster  )

    -- Swap the focused window and the master window
    , ((modm,               xK_Return), windows W.swapMaster)

    -- Swap the focused window with the next window
    , ((modm .|. shiftMask, xK_j     ), windows W.swapDown  )

    -- Swap the focused window with the previous window
    , ((modm .|. shiftMask, xK_k     ), windows W.swapUp    )

    -- Shrink the master area
    , ((modm,               xK_h     ), sendMessage Shrink)

    -- Expand the master area
    , ((modm,               xK_l     ), sendMessage Expand)

    -- Shrink the focused area
    , ((modm,               xK_a     ), sendMessage MirrorShrink)

    -- Expand the focused area
    , ((modm .|. shiftMask,               xK_a     ), sendMessage MirrorExpand)

    , ((modm .|. shiftMask, xK_g     ), gotoMenu)
    , ((modm .|. shiftMask, xK_b     ), bringMenu)

    -- Launch my favorite browser
    , ((modm, xK_g), spawn "google-chrome-stable")

    -- Screensaver
    , ((modm, xK_z     ), spawn "gnome-screensaver-command --lock"    )

    -- Shutdown
    , ((modm .|. shiftMask, xK_z     ), spawn "shutdown now"    )


    -- lower volume
    , ((0 , xK_F2), lowerVolume 10 >> return ())
    -- raise volume
    , ((0 , xK_F3), raiseVolume 10 >> return ())
    -- toggle mute XF86AudioMute
    , ((modm, xK_F1), toggleMute >> return ())
    , ((0, xF86XK_AudioMute), toggleMute >> return ())


    -- settings for laptop
    , ((0                 , xF86XK_MonBrightnessUp ), spawn "lux -a 10%")
    , ((0                 , xF86XK_MonBrightnessDown ), spawn "lux -s 10%")



    -- Push window back into tiling
    , ((modm,               xK_t     ), withFocused $ windows . W.sink)

    -- Increment the number of windows in the master area
    , ((modm              , xK_comma ), sendMessage (IncMasterN 1))

    -- Deincrement the number of windows in the master area
    , ((modm              , xK_period), sendMessage (IncMasterN (-1)))

    -- Toggle the status bar gap
    -- Use this binding with avoidStruts from Hooks.ManageDocks.
    -- See also the statusBar function from Hooks.DynamicLog.
    --
    -- , ((modm              , xK_b     ), sendMessage ToggleStruts)

    -- Quit xmonad
    , ((modm .|. shiftMask, xK_q     ), io (exitWith ExitSuccess))

    -- Restart xmonad
    , ((modm              , xK_q     ), spawn "xmonad --recompile; xmonad --restart")

    -- Run xmessage with a summary of the default keybindings (useful for beginners)
    -- , ((modm           , xK_F1 ), spawn "xmessage -file -")
    ]
    ++

    --
    -- mod-[1..9], Switch to workspace N
    -- mod-shift-[1..9], Move client to workspace N
    --
    [((m .|. modm, k), windows $ f i)
        | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]
        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]
    ++

    --
    -- mod-{w,e,r}, Switch to physical/Xinerama screens 1, 2, or 3
    -- mod-shift-{w,e,r}, Move client to screen 1, 2, or 3
    --
    [((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))
        | (key, sc) <- zip [xK_w, xK_e, xK_r] [1,0,2] -- was [0..], changed to match my screen order
        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]

  where scratchpad = scratchpadSpawnActionTerminal quakeTerminal
------------------------------------------------------------------------
-- Mouse bindings: default actions bound to mouse events
--
myMouseBindings (XConfig {XMonad.modMask = modm}) = M.fromList $

    -- mod-button1, Set the window to floating mode and move by dragging
    [ ((modm, button1), (\w -> focus w >> mouseMoveWindow w
                                       >> windows W.shiftMaster))

    -- mod-button2, Raise the window to the top of the stack
    , ((modm, button2), (\w -> focus w >> windows W.shiftMaster))

    -- mod-button3, Set the window to floating mode and resize by dragging
    , ((modm, button3), (\w -> focus w >> mouseResizeWindow w
                                       >> windows W.shiftMaster))

    -- you may also bind events to the mouse scroll wheel (button4 and button5)
    ]

------------------------------------------------------------------------
-- Layouts:

-- You can specify and transform your layouts by modifying these values.
-- If you change layout bindings be sure to use 'mod-shift-space' after
-- restarting (with 'mod-q') to reset your layout state to the new
-- defaults, as xmonad preserves your old layout settings by default.
--
-- The available layouts.  Note that each layout is separated by |||,
-- which denotes layout choice.
--
-- myLayoutHook = smartBorders tiled ||| noBorders Full ||| spiral (2/1)
myLayoutHook = avoidStruts $ smartBorders tiled ||| noBorders Full ||| spiral (6/7)
-- myLayoutHook = avoidStruts $ spiral (6/7)  ||| noBorders Full
  where
     -- default tiling algorithm partitions the screen into two panes
     tiled   = ResizableTall nmaster delta ratio []

     -- The default number of windows in the master pane
     nmaster = 1

     -- Default proportion of screen occupied by master pane
     ratio   = 1/2

     -- Percent of screen to increment by when resizing panes
     delta   = 3/100


------------------------------------------------------------------------
-- Window rules:

-- Execute arbitrary actions and WindowSet manipulations when managing
-- a new window. You can use this to, for example, always float a
-- particular program, or have a client always appear on a particular
-- workspace.
--
-- To find the property name associated with a program, use
-- > xprop | grep WM_CLASS
-- and click on the client you're interested in.
--
-- To match on the WM_NAME, you can use 'title' in the same way that
-- 'className' and 'resource' are used below.
--
myManageHook = manageScratchPad <+> composeAll
    [ className =? "MPlayer"        --> doFloat
    -- , className =? "Gimp"           --> doFloat
    -- , stringProperty "Android Emulator - Pixel_2_API_29:5554" =? "Emulator" --> doFloat
    , resource  =? "desktop_window" --> doFloat
    , resource  =? "kdesktop"       --> doIgnore ]

manageScratchPad :: ManageHook
manageScratchPad = scratchpadManageHook (W.RationalRect l t w h)
  where
    h = 0.1 -- terminal height 10%
    w = 1   -- width 100%
    t = 1 - h -- distance from top edge
    l = 1 - w -- distance from left eddge

------------------------------------------------------------------------
-- Event handling

-- * EwmhDesktops users should change this to ewmhDesktopsEventHook
--
-- Defines a custom handler function for X Events. The function should
-- return (All True) if the default handler is to be run afterwards. To
-- combine event hooks use mappend or mconcat from Data.Monoid.
--
myEventHook = mempty

------------------------------------------------------------------------
-- Status bars and logging

-- -- Perform an arbitrary action on each internal state change or X event.
-- -- See the 'XMonad.Hooks.DynamicLog' extension for examples.
-- --
-- myLogHook = dynamicLogWithPP myPP {
--   ppOutput = \s -> sequence_ [hPutStrLn h s | h <- xmprocs]
-- }

myLogHook = return ()
------------------------------------------------------------------------
-- Startup hook

-- Perform an arbitrary action each time xmonad starts or is restarted
-- with mod-q.  Used by, e.g., XMonad.Layout.PerWorkspace to initialize
-- per-workspace layout choices.
--
myStartupHook = do
  spawn "~/.xmonad/startup-hook.sh"
  setWMName "LG3D"
------------------------------------------------------------------------
-- Now run xmonad with all the defaults we set up.

-- Run xmonad with the settings you specify. No need to modify this.
--
main = xmonad =<< xmobar defaults
-- main = do
--   screens <- countScreens
--   xmprocs <- mapM(\dis -> spawnPipe("xmobar -x " ++ show dis))[0..screens - 1]
--   xmonad $ defaults

-- A structure containing your configuration settings, overriding
-- fields in the default config. Any you don't override, will
-- use the defaults defined in xmonad/XMonad/Config.hs
--
-- No need to modify this.
--
defaults = gnomeConfig {
      -- simple stuff
        terminal           = myTerminal,
        focusFollowsMouse  = myFocusFollowsMouse,
        clickJustFocuses   = myClickJustFocuses,
        borderWidth        = myBorderWidth,
        modMask            = myModMask,
        workspaces         = myWorkspaces,
        normalBorderColor  = myNormalBorderColor,
        focusedBorderColor = myFocusedBorderColor,

      -- key bindings
        keys               = myKeys,
        mouseBindings      = myMouseBindings,

      -- hooks, layouts
        layoutHook         = myLayoutHook,
        manageHook         = myManageHook,
        handleEventHook    = myEventHook,
        logHook = myLogHook,
        -- logHook            = dynamicLogWithPP myPP {
        --   ppOutput = \s -> sequence_ [hPutStrLn h s | h <- xmprocs]
        -- },
        startupHook        = myStartupHook
    }
