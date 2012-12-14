import XMonad
import XMonad.Config.Gnome
import XMonad.Actions.CycleWS
import XMonad.Util.EZConfig
import XMonad.Util.Paste

main = xmonad $ gnomeConfig
       { terminal = "gnome-terminal"
       , normalBorderColor  = "#111111"
       , focusedBorderColor = "#000066"
       , modMask = mod4Mask -- set the mod key to the windows key
       , workspaces = ["todo", "work", "inet", "misc"]
       } `additionalKeysP` [ ("M-<Right>", nextWS)
                           , ("M-S-<Right>", shiftToNext)
                           , ("M-<Left>", prevWS)
                           , ("M-S-<Left>", shiftToPrev)
                           , ("M-<F4>", kill)
                           , ("M-w", sendKey controlMask xK_c)
                           , ("M-y", sendKey controlMask xK_v)
                           , ("M-s h", spawn "xmessage 'hello, xmonad!'")]

