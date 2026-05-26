local function fetch(url)
    local ok, res = pcall(game.HttpGet, game, url)
    return ok and res or nil
end

local scripts = {
    "https://raw.githubusercontent.com/VanilllaHub/VanillaHub.Jailbreak/main/Vanilla1.lua",
    "https://raw.githubusercontent.com/VanilllaHub/VanillaHub.Jailbreak/main/Vanilla2.lua",
    "https://raw.githubusercontent.com/VanilllaHub/VanillaHub.Jailbreak/main/Vanilla3.lua",
    "https://raw.githubusercontent.com/VanilllaHub/VanillaHub.Jailbreak/main/Vanilla4.lua",
    "https://raw.githubusercontent.com/VanilllaHub/VanillaHub.Jailbreak/main/Vanilla5.lua",
    "https://raw.githubusercontent.com/VanilllaHub/VanillaHub.Jailbreak/main/Vanilla6.lua",
    "https://raw.githubusercontent.com/VanilllaHub/VanillaHub.Jailbreak/main/Vanilla7.lua",
    "https://raw.githubusercontent.com/VanilllaHub/VanillaHub.Jailbreak/main/Vanilla8.lua",
    "https://raw.githubusercontent.com/VanilllaHub/VanillaHub.Jailbreak/main/Vanilla9.lua",
    "https://raw.githubusercontent.com/VanilllaHub/VanillaHub.Jailbreak/main/Vanilla10.lua",
    "https://raw.githubusercontent.com/VanilllaHub/VanillaHub.Jailbreak/main/Vanilla11.lua",
    "https://raw.githubusercontent.com/VanilllaHub/VanillaHub.Jailbreak/main/Vanilla12.lua",
    "https://raw.githubusercontent.com/VanilllaHub/VanillaHub.Jailbreak/main/Vanilla13.lua",
    "https://raw.githubusercontent.com/VanilllaHub/VanillaHub.Jailbreak/main/Vanilla14.lua",
    "https://raw.githubusercontent.com/VanilllaHub/VanillaHub.Jailbreak/main/Vanilla15.lua",
}

for _, url in ipairs(scripts) do
    local content = fetch(url)
    if content then
        local func = loadstring(content)
        if func then 
            task.spawn(func) 
        end
    end
    task.wait(0.2)
end
