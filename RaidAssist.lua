--------------------------------------------------------------------------------
-- // RAID ASSIST
--------------------------------------------------------------------------------

BINDING_HEADER_KLAZRAIDASSIST = 'KlazRaidAssist'
_G['BINDING_NAME_CLICK KlazRaidAssist:LeftButton'] = 'Show raid tools (Hold)'

local f = CreateFrame('Frame', nil, UIParent)
f:SetSize(140, 100)
f:SetScale(1)
f:EnableMouse(true)
f:SetMovable(true)
f:SetClampedToScreen(true)
f:Hide()

local anchor = f:CreateTexture(nil, 'ARTWORK')
anchor:SetAllPoints(f)
anchor:SetTexture('Interface\\DialogFrame\\UI-DialogBox-Background')

-- layout
-- skull  triangle star    | ready check
-- cross  circle   diamond | pull 10
-- square moon     clear   | puul 5

--------------------------------------------------------------------------------
-- // SKULL
--------------------------------------------------------------------------------
-- 8 raid marker
-- 8 world marker

local skull = CreateFrame('BUTTON', 'RaidMarker8Skull', f, 'SecureActionButtonTemplate')
skull:SetNormalTexture('Interface\\TargetingFrame\\UI-RaidTargetingIcon_8.png')
skull:SetPoint('TOPLEFT')
skull:SetSize(32, 32)
skull:SetAlpha(.5)

skull:SetScript('OnEnter', function(self) self:SetAlpha(1) end)
skull:SetScript('OnLeave', function(self) self:SetAlpha(.5) end)

skull:RegisterForClicks('AnyUp')
skull:SetAttribute('type', 'macro')
skull:SetAttribute('macrotext', '/run PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON) if SecureCmdOptionParse("[btn:1]") then SetRaidTargetIcon("target", 8) end\n/wm [btn:2] 8\n/cwm [btn:2] 8')

--------------------------------------------------------------------------------
-- // CROSS
--------------------------------------------------------------------------------
-- 7 raid marker
-- 4 world marker

local cross = CreateFrame('BUTTON', 'WorldMarker4Cross', f, 'SecureActionButtonTemplate')
cross:SetNormalTexture('Interface\\TargetingFrame\\UI-RaidTargetingIcon_7.png')
cross:SetPoint('LEFT')
cross:SetSize(32, 32)
cross:SetAlpha(.5)

cross:SetScript('OnEnter', function(self) self:SetAlpha(1) end)
cross:SetScript('OnLeave', function(self) self:SetAlpha(.5) end)

cross:RegisterForClicks('AnyUp')
cross:SetAttribute('type', 'macro')
cross:SetAttribute('macrotext', '/run PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON) if SecureCmdOptionParse("[btn:1]") then SetRaidTargetIcon("target", 7) end\n/wm [btn:2] 4\n/cwm [btn:2] 4')

--------------------------------------------------------------------------------
-- // SQUARE
--------------------------------------------------------------------------------
-- 6 raid marker
-- 1 world marker

local square = CreateFrame('BUTTON', 'WorldMarker1Square', f, 'SecureActionButtonTemplate')
square:SetNormalTexture('Interface\\TargetingFrame\\UI-RaidTargetingIcon_6.png')
square:SetPoint('BOTTOMLEFT')
square:SetSize(32, 32)
square:SetAlpha(.5)

square:SetScript('OnEnter', function(self) self:SetAlpha(1) end)
square:SetScript('OnLeave', function(self) self:SetAlpha(.5) end)

square:RegisterForClicks('AnyUp')
square:SetAttribute('type', 'macro')
square:SetAttribute('macrotext', '/run PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON) if SecureCmdOptionParse("[btn:1]") then SetRaidTargetIcon("target", 6) end\n/wm [btn:2] 1\n/cwm [btn:2] 1')

--------------------------------------------------------------------------------
-- // TRIANGLE
--------------------------------------------------------------------------------
-- 4 raid marker
-- 2 world marker

local triangle = CreateFrame('BUTTON', 'WorldMarker2Triangle', f, 'SecureActionButtonTemplate')
triangle:SetNormalTexture('Interface\\TargetingFrame\\UI-RaidTargetingIcon_4.png')
triangle:SetPoint('TOPLEFT', 34, 0)
triangle:SetSize(32, 32)
triangle:SetAlpha(.5)

triangle:SetScript('OnEnter', function(self) self:SetAlpha(1) end)
triangle:SetScript('OnLeave', function(self) self:SetAlpha(.5) end)

triangle:RegisterForClicks('AnyUp')
triangle:SetAttribute('type', 'macro')
triangle:SetAttribute('macrotext', '/run PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON) if SecureCmdOptionParse("[btn:1]") then SetRaidTargetIcon("target", 4) end\n/wm [btn:2] 2\n/cwm [btn:2] 2')

--------------------------------------------------------------------------------
-- // CIRCLE
--------------------------------------------------------------------------------
-- 2 raid marker
-- 6 world marker

local circle = CreateFrame('BUTTON', 'RaidMarker2Circle', f, 'SecureActionButtonTemplate')
circle:SetNormalTexture('Interface\\TargetingFrame\\UI-RaidTargetingIcon_2.png')
circle:SetPoint('LEFT', 34, 0)
circle:SetSize(32, 32)
circle:SetAlpha(.5)

circle:SetScript('OnEnter', function(self) self:SetAlpha(1) end)
circle:SetScript('OnLeave', function(self) self:SetAlpha(.5) end)

circle:RegisterForClicks('AnyUp')
circle:SetAttribute('type', 'macro')
circle:SetAttribute('macrotext', '/run PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON) if SecureCmdOptionParse("[btn:1]") then SetRaidTargetIcon("target", 2) end\n/wm [btn:2] 6\n/cwm [btn:2] 6')

--------------------------------------------------------------------------------
-- // MOON
--------------------------------------------------------------------------------
-- 5 raid marker
-- 7 world marker

local moon = CreateFrame('BUTTON', 'RaidMarker5Moon', f, 'SecureActionButtonTemplate')
moon:SetNormalTexture('Interface\\TargetingFrame\\UI-RaidTargetingIcon_5.png')
moon:SetPoint('BOTTOMLEFT', 34, 0)
moon:SetSize(32, 32)
moon:SetAlpha(.5)

moon:SetScript('OnEnter', function(self) self:SetAlpha(1) end)
moon:SetScript('OnLeave', function(self) self:SetAlpha(.5) end)

moon:RegisterForClicks('AnyUp')
moon:SetAttribute('type', 'macro')
moon:SetAttribute('macrotext', '/run PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON) if SecureCmdOptionParse("[btn:1]") then SetRaidTargetIcon("target", 5) end\n/wm [btn:2] 7\n/cwm [mod:shift][btn:2] 7')

--------------------------------------------------------------------------------
-- // STAR
--------------------------------------------------------------------------------
-- 1 raid marker
-- 5 world marker

local star = CreateFrame('BUTTON', 'WorldMarker5Star', f, 'SecureActionButtonTemplate')
star:SetNormalTexture('Interface\\TargetingFrame\\UI-RaidTargetingIcon_1.png')
star:SetPoint('TOPLEFT', 66, 0)
star:SetSize(32, 32)
star:SetAlpha(.5)

star:SetScript('OnEnter', function(self) self:SetAlpha(1) end)
star:SetScript('OnLeave', function(self) self:SetAlpha(.5) end)

star:RegisterForClicks('AnyUp')
star:SetAttribute('type', 'macro')
star:SetAttribute('macrotext', '/run PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON) if SecureCmdOptionParse("[btn:1]") then SetRaidTargetIcon("target", 1) end\n/wm [btn:2] 5\n/cwm [btn:2] 5')

--------------------------------------------------------------------------------
-- // DIAMOND
--------------------------------------------------------------------------------
-- 3 raid marker
-- 3 world marker

local diamond = CreateFrame('BUTTON', 'WorldMarker3Diamond', f, 'SecureActionButtonTemplate')
diamond:SetNormalTexture('Interface\\TargetingFrame\\UI-RaidTargetingIcon_3.png')
diamond:SetPoint('LEFT', 66, 0)
diamond:SetSize(32, 32)
diamond:SetAlpha(.5)

diamond:SetScript('OnEnter', function(self) self:SetAlpha(1) end)
diamond:SetScript('OnLeave', function(self) self:SetAlpha(.5) end)

diamond:RegisterForClicks('AnyUp')
diamond:SetAttribute('type', 'macro')
diamond:SetAttribute('macrotext', '/run PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON) if SecureCmdOptionParse("[btn:1]") then SetRaidTargetIcon("target", 3) end\n/wm [btn:2] 3\n/cwm [btn:2] 3')

--------------------------------------------------------------------------------
-- // CLEAR
--------------------------------------------------------------------------------
-- 0 raid marker
-- 0 world marker

local clear = CreateFrame('BUTTON', 'WorldMarker6Clear', f, 'SecureActionButtonTemplate')
clear:SetNormalTexture('Interface\\BUTTONS\\UI-GroupLoot-Pass-Up')
clear:SetPoint('BOTTOMLEFT', 66, 0)
clear:SetSize(32, 32)
clear:SetAlpha(.5)

clear:SetScript('OnEnter', function(self) self:SetAlpha(1) end)
clear:SetScript('OnLeave', function(self) self:SetAlpha(.5) end)

clear:RegisterForClicks('AnyUp')
clear:SetAttribute('type', 'macro')

if SecureCmdOptionParse("[btn:1]") then
  clear:SetAttribute('macrotext', '/run for i = 1, 9 do SetRaidTarget("player", i) end\n/cwm [btn:2] all')
end

--------------------------------------------------------------------------------
-- // DIVIDER
--------------------------------------------------------------------------------

local divide = CreateFrame('Frame', nil, f)
divide:SetAllPoints(f)

local line = divide:CreateTexture(nil, 'BACKGROUND')
line:SetColorTexture(.098, .58, 1, 1)
line:SetPoint('TOPRIGHT', divide, 'TOPRIGHT', -34, 0)
line:SetPoint('BOTTOMRIGHT', divide, 'BOTTOMRIGHT', -34, 0)

--------------------------------------------------------------------------------
-- // READY CHECK
--------------------------------------------------------------------------------

local readycheck = CreateFrame('BUTTON', 'Readycheck', f, 'SecureActionButtonTemplate')
readycheck:SetNormalTexture('Interface\\RaidFrame\\ReadyCheck-Ready')
readycheck:SetPoint('TOPRIGHT')
readycheck:SetSize(32, 32)
readycheck:SetAlpha(.5)

readycheck:SetScript('OnEnter', function(self) self:SetAlpha(1) end)
readycheck:SetScript('OnLeave', function(self) self:SetAlpha(.5) end)

readycheck:RegisterForClicks('AnyUp')
readycheck:SetAttribute('type', 'macro')
readycheck:SetAttribute('macrotext', '/readycheck')

--------------------------------------------------------------------------------
-- // PULL 10
--------------------------------------------------------------------------------

local pull10 = CreateFrame('BUTTON', 'Pull10', f, 'SecureActionButtonTemplate')
pull10:SetPoint('RIGHT')
pull10:SetSize(32, 32)
pull10:SetAlpha(.5)

local pull10text = pull10:CreateFontString(nil, "OVERLAY")
pull10text:SetPoint('CENTER')
pull10text:SetJustifyH('CENTER')
pull10text:SetFont(STANDARD_TEXT_FONT, 20, 'THINOUTLINE')
pull10text:SetText('10')

pull10:SetScript('OnEnter', function(self) self:SetAlpha(1) end)
pull10:SetScript('OnLeave', function(self) self:SetAlpha(.5) end)

pull10:RegisterForClicks('AnyUp')
pull10:SetAttribute('type', 'macro')
pull10:SetAttribute('macrotext', '/run local c="/pull [btn:3][btn:2] 0; [btn:1] 10" local s,a=c:match("(/%w+) (.+)") if s then hash_SlashCmdList[s:upper()]((SecureCmdOptionParse(a))) end')

--------------------------------------------------------------------------------
-- // PULL 5
--------------------------------------------------------------------------------

local pull5 = CreateFrame('BUTTON', 'Pull5', f, 'SecureActionButtonTemplate')
pull5:SetPoint('BOTTOMRIGHT')
pull5:SetSize(32, 32)
pull5:SetAlpha(.5)

local pull5text = pull5:CreateFontString(nil, "OVERLAY")
pull5text:SetPoint('CENTER')
pull5text:SetJustifyH('CENTER')
pull5text:SetFont(STANDARD_TEXT_FONT, 24, 'THINOUTLINE')
pull5text:SetText('5')

pull5:SetScript('OnEnter', function(self) self:SetAlpha(1) end)
pull5:SetScript('OnLeave', function(self) self:SetAlpha(.5) end)

pull5:RegisterForClicks('AnyUp')
pull5:SetAttribute('type', 'macro')
pull5:SetAttribute('macrotext', '/run local c="/pull [btn:3][btn:2] 0; [btn:1] 5" local s,a=c:match("(/%w+) (.+)") if s then hash_SlashCmdList[s:upper()]((SecureCmdOptionParse(a))) end')

--------------------------------------------------------------------------------
-- // TOGGLE
--------------------------------------------------------------------------------

local toggle = CreateFrame('Button', 'KlazRaidAssist', UIParent, 'SecureHandlerClickTemplate')
toggle:RegisterEvent("PLAYER_TARGET_CHANGED")
toggle:RegisterForClicks('AnyUp', 'AnyDown')
toggle:SetFrameRef('ParentFrame', f)
toggle:SetAttribute('_OnClick',[[
  ParentFrame = self:GetFrameRef('ParentFrame')

  if down then
    ParentFrame:SetPoint('TOPLEFT', '$cursor', -18, 18)
    ParentFrame:Show()
  else
    ParentFrame:Hide()
  end
]])
