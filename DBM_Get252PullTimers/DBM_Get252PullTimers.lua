local function HandleIncomingMessage(_, event, prefix, msg)
	if prefix ~= "PT" then return end
    local timer = strsplit("\t", msg)
	DBM.Announce_Pull(tonumber(timer))
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("CHAT_MSG_ADDON")
frame:SetScript("OnEvent", HandleIncomingMessage)
