Citizen.CreateThread(function()
    while true do
      Wait(0)
      SetVehicleDensityMultiplierThisFrame(0)
    end
  end)

Citizen.CreateThread(function()
    while true do
      Wait(0)
      SetVehicleDensityMultiplierThisFrame(0)
    end
  end)

Citizen.CreateThread(function()

    while true do
        local isTargetting, targetEntity = GetPlayerTargetEntity(PlayerId())
        if isTargetting and IsPedAPlayer(targetEntity) then
            if lastCow ~= targetEntity then

                local promptGroup = PromptGetGroupIdForTargetEntity(targetEntity)
                local horse = targetEntity -- GetMount(PlayerPedId())
                local group = Citizen.InvokeNative(0xB796970BD125FCE8, horse, Citizen.ResultAsLong()) -- PromptGetGroupIdForTargetEntity
                PromptSetGroup(prompt, group, 0)
                SetPedPromptName(horse, GetPlayerServerId(NetworkGetPlayerIndexFromPed(horse)))

            end
        end
        Citizen.Wait(0)
    end
end)