local wezterm = require 'wezterm';

local mykeys = {
  { key = "C", mods = "CTRL", action = wezterm.action.CopyTo("ClipboardAndPrimarySelection")},
  -- search ignorecase
  { key="Tab", mods="ALT", action=wezterm.action{Search={CaseInSensitiveString="hash"}}},
  -- split pane
  { key = 'h', mods = 'LEADER|CTRL',
    action = wezterm.action{ SplitPane = {direction = "Left",size = { Percent = 50 }}}},
  { key = 'j', mods = 'LEADER|CTRL',
    action = wezterm.action{ SplitPane = {direction = "Down",size = { Percent = 50 }}}},
  { key = 'k', mods = 'LEADER|CTRL',
    action = wezterm.action{ SplitPane = {direction = "Up",size = { Percent = 50 }}}},
  { key = 'l', mods = 'LEADER|CTRL',
    action = wezterm.action{ SplitPane = {direction = "Right",size = { Percent = 50 }}}},
  -- adjust pane
  { key = "h", mods = "ALT", action=wezterm.action{AdjustPaneSize={"Left", 5}}},
  { key = "j", mods = "ALT", action=wezterm.action{AdjustPaneSize={"Down", 5}}},
  { key = "k", mods = "ALT", action=wezterm.action{AdjustPaneSize={"Up", 5}}},
  { key = "l", mods = "ALT", action=wezterm.action{AdjustPaneSize={"Right", 5}}},
  -- close current pane
  { key = "q", mods = "LEADER|CTRL", 
    action = wezterm.action{CloseCurrentPane={confirm=true}}},
  -- activate pane with directions
  { key = "h", mods = "CTRL",
    action=wezterm.action{ActivatePaneDirection = "Left"}},
  { key = "l", mods = "CTRL",
    action = wezterm.action{ActivatePaneDirection = "Right"}},
  { key = "k", mods = "CTRL",
    action = wezterm.action{ActivatePaneDirection = "Up"}},
  { key = "j", mods = "CTRL",
    action = wezterm.action{ActivatePaneDirection = "Down"}},
  -- move tab relative
  { key="[", mods="ALT", action=wezterm.action{MoveTabRelative=-1}},
  { key="]", mods="ALT", action=wezterm.action{MoveTabRelative=1}},
  { key="[", mods="CTRL", action=wezterm.action{ActivateTabRelative=-1}},
  { key="]", mods="CTRL", action=wezterm.action{ActivateTabRelative=1}},
  -- spawn new tab  
  { key = "Enter", mods = 'CTRL',action=wezterm.action{SpawnTab="CurrentPaneDomain"}},
  -- tab navigator
  { key = "t", mods = 'SHIFT|ALT',action = "ShowTabNavigator"},
  -- close current tab
  { key = "q", mods = "CTRL", action = wezterm.action{CloseCurrentTab = {confirm = true}}},
  -- scroll
  { key = "d", mods = 'CTRL', action = wezterm.action{ScrollByLine = -1}},
  { key = "u", mods = 'CTRL', action = wezterm.action{ScrollByLine = 1}},
  { key = "u", mods = "SHIFT|CTRL", action=wezterm.action{ScrollByPage=-1}},
  { key = "d", mods = "SHIFT|CTRL", action=wezterm.action{ScrollByPage=1}},
  { key = "u", mods = "SHIFT|ALT", action=wezterm.action{ScrollByPage=-0.5}},
  { key = "d", mods = "SHIFT|ALT", action=wezterm.action{ScrollByPage=0.5}},
  -- zoom toggle
  { key = "f", mods = "CTRL",action = "TogglePaneZoomState"},
  }

-- move tab
for i = 1, 8 do
  table.insert(mykeys, {
    key=tostring(i),
    mods="ALT",
    action=wezterm.action{MoveTab=i-1},
  })
end
-- activate tab
for i = 1, 8 do
  table.insert(mykeys, {
    key=tostring(i),
    mods="CTRL",
    action=wezterm.action{ActivateTab=i-1},
  })
end

return {
  -- color scheme
  color_scheme = "nord",
  -- scroll bar on
  enable_scroll_bar = true,
  -- fonts
  font_size = 15,
  font = wezterm.font_with_fallback({
  "FiraCode Nerd Font",
  "FuraCode Nerd Font", 
  "DejavuSansMono Nerd Font",
  "FontAwesome",
  "wqy-zenhei"
}),
  -- opacity
  text_background_opacity = 0.9,
  -- leader
  leader = { key = "s", mods = "CTRL", timeout_milliseconds = 1000 },
  keys = mykeys,
  -- no warning of glyphs
  warn_about_missing_glyphs = false,
  -- no default key bindings
  disable_default_key_bindings = true,
}
