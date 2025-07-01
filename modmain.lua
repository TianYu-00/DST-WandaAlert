local G = GLOBAL

local isTextEnabled = GetModConfigData("Text_Enabled")
local textDuration = GetModConfigData("Text_Duration")
local isSoundEnabled = GetModConfigData("Sound_Enabled")
local soundVolume = GetModConfigData("Sound_Volume")
local alertAtHealthValue  = GetModConfigData("Alert_At_Health_Value")
local healthComparisonOperator = GetModConfigData("Health_Comparison_Operator")
local isRepeatEnabled = GetModConfigData("Repeat_Enabled")
local alertCooldown = GetModConfigData("Alert_Cooldown")


Assets = {
    Asset("SOUNDPACKAGE", "sound/alert.fev"),
    Asset("SOUND", "sound/alert.fsb"),
}

function WandaAlert(wanda)
    if wanda.prefab ~= "wanda" then return end

    local hasAlerted = false
    local lastAlertTime = -math.huge

    local function healthCompare(currentHealth, alertValue)
        if healthComparisonOperator == ">" then
            return currentHealth > alertValue
        elseif healthComparisonOperator == ">=" then
            return currentHealth >= alertValue
        elseif healthComparisonOperator == "==" then
            return currentHealth == alertValue
        elseif healthComparisonOperator == "<" then
            return currentHealth < alertValue
        elseif healthComparisonOperator == "<=" then
            return currentHealth <= alertValue
        else
            return currentHealth == alertValue
        end
    end
    
    local function OnHealthDelta(_, data)
        if not (wanda.player_classified and wanda.player_classified.currenthealth) then
            print("[Wanda Alert] player_classified or health data not ready yet! abort!!")
            return
        end

        local currentTime = G.GetTime() or 0
        local currentHealth = wanda.player_classified.currenthealth:value()
        local maxHealth = wanda.player_classified.maxhealth:value()
        
        if healthCompare(currentHealth, alertAtHealthValue) then
            if isRepeatEnabled or (not hasAlerted) then
                if currentTime - lastAlertTime >= alertCooldown then
                    local msg = string.format("[Wanda Alert] %d / %d", currentHealth, maxHealth)

                    if isTextEnabled and wanda.components.talker then
                        local noanim = nil
                        local force = nil
                        local nobroadcast = nil
                        local color = {1,0,0,1}
                        wanda.components.talker:Say(msg, textDuration, noanim, force, nobroadcast, color)
                    end

                    if isSoundEnabled and wanda.SoundEmitter then
                        -- wanda.SoundEmitter:PlaySound("wanda2/characters/wanda/older_transition")
                        local soundHandle = "wandaAlertHandle"
                        wanda.SoundEmitter:KillSound(soundHandle)
                        wanda.SoundEmitter:PlaySound("alert/sound/wanda_alert", soundHandle)
                        wanda.SoundEmitter:SetVolume(soundHandle, soundVolume)
                    end

                    hasAlerted = true
                    lastAlertTime = currentTime
                end
            end
        else
            hasAlerted = false
        end
    end

    wanda:DoTaskInTime(0.5, function()
        wanda:ListenForEvent("healthdelta", OnHealthDelta)
    end)
end

AddPlayerPostInit(WandaAlert)

