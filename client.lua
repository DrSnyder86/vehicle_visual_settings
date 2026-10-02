local vehicleVisualSettings = {
    ['car.headlight.day.emissive.on'] = 380.0,
    ['car.headlight.night.emissive.on'] = 250.0,
    ['car.headlight.day.emissive.off'] = 0.0,
    ['car.headlight.night.emissive.off'] = 0.0,

    ['car.taillight.day.emissive.on'] = 150.0,
    ['car.taillight.night.emissive.on'] = 100.0,
    ['car.taillight.day.emissive.off'] = 0.0,
    ['car.taillight.night.emissive.off'] = 0.0,

    ['car.indicator.day.emissive.on'] = 525.0,
    ['car.indicator.night.emissive.on'] = 355.0,
    ['car.indicator.day.emissive.off'] = 0.0,
    ['car.indicator.night.emissive.off'] = 0.0,

    ['car.reversinglight.day.emissive.on'] = 155.0,
    ['car.reversinglight.night.emissive.on'] = 135.0,
    ['car.reversinglight.day.emissive.off'] = 0.0,
    ['car.reversinglight.night.emissive.off'] = 0.0,

    ['car.defaultlight.day.emissive.on'] = 1600.0,
    ['car.defaultlight.night.emissive.on'] = 1000.0,
    ['car.defaultlight.day.emissive.off'] = 0.0,
    ['car.defaultlight.night.emissive.off'] = 0.0,

    ['car.brakelight.day.emissive.on'] = 240.0,
    ['car.brakelight.night.emissive.on'] = 200.0,
    ['car.brakelight.day.emissive.off'] = 0.0,
    ['car.brakelight.night.emissive.off'] = 0.0,

    ['car.middlebrakelight.day.emissive.on'] = 250.0,
    ['car.middlebrakelight.night.emissive.on'] = 200.0,
    ['car.middlebrakelight.day.emissive.off'] = 0.0,
    ['car.middlebrakelight.night.emissive.off'] = 0.0,

    ['car.extralight.day.emissive.on'] = 1600.0,
    ['car.extralight.night.emissive.on'] = 1000.0,
    ['car.extralight.day.emissive.off'] = 0.0,
    ['car.extralight.night.emissive.off'] = 0.0,

    ['car.emissiveMultiplier'] = 2.0,
}

CreateThread(function()
    for settingName, value in pairs(vehicleVisualSettings) do
        SetVisualSettingFloat(settingName, value)
    end
end)
