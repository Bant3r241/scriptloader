-- Wraith Hub Loader

local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/main/source.lua"))()

-------------------------------------------------
-- KEY SETTINGS
-------------------------------------------------

local Key = "WRAITH-ACCESS-2026"
local KeyLink = "https://linkvertise.com/YOUR-LINK"

local function CheckKey(EnteredKey)
    return EnteredKey == Key
end

-------------------------------------------------
-- KEY SYSTEM
-------------------------------------------------

local KeySystem = Fluent:CreateKeySystem({
    Title = "Wraith Hub",
    Description = "Get the key from Linkvertise",
    KeyLink = KeyLink,
    KeyLength = 20,

    Callback = function(EnteredKey)
        if CheckKey(EnteredKey) then
            KeySystem:Destroy()

            -------------------------------------------------
            -- GAME LOADER
            -------------------------------------------------

            local gameId = game.PlaceId

            local scripts = {
                [114640202062357] = "https://raw.githubusercontent.com/Bant3r241/scriptloader/main/games/Swing To Brainrots.lua",
            }

            local universal = "https://raw.githubusercontent.com/Bant3r241/scriptloader/main/games/universal.lua"

            local url = scripts[gameId] or universal

            loadstring(game:HttpGet(url))()

            return true
        else
            Fluent:Notify({
                Title = "Key System",
                Content = "Invalid key!",
                Duration = 5
            })
            return false
        end
    end
})

KeySystem:Load()
