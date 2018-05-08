
ABINDINGS_DEBUG = false

local function debug(msg, ...)
  if not ABINDINGS_DEBUG then return end
  DEFAULT_CHAT_FRAME:AddMessage(date('%X aBindings: ') .. string.format(msg, unpack(arg)))
end

local ebox = CreateFrame('EditBox', 'aBindingsEditBox')
ebox:SetAutoFocus(false)
ebox:ClearFocus()
ebox.chatFrame = DEFAULT_CHAT_FRAME
ebox:Hide()

local function OnClick()
  debug('Button %s clicked', this:GetName())
  for line in string.gfind(this.macrotext, '[^\n]+') do
    debug('Parsing line: %s', line)
    line = string.gsub(line, '^%s*', '', 1)
    ebox:SetText(line)
    ChatEdit_ParseText(ebox, 1)
  end
end

ebox:SetScript('OnEvent', function()
  local btnidx = 0
  for key, macrotext in next, (aBindings or {}) do
    debug('Setting up macrotext binding for key %s:\n%s', key, macrotext)
    btnidx = btnidx + 1
    local bname = 'aBindings' .. btnidx
    local btn = CreateFrame('Button', bname)
    btn:SetScript('OnClick', OnClick)
    btn.macrotext = macrotext
    SetBinding(key, string.upper(btn:GetName()))
  end
  debug('aBindings loaded. Bindings found: %d', btnidx)
  this:SetScript('OnEvent', nil)
  this:UnregisterEvent('PLAYER_ENTERING_WORLD')
end)
ebox:RegisterEvent('PLAYER_ENTERING_WORLD')

