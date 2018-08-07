local mash = {"ctrl", "alt"}

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
    hs.reload()
end)

function launchOrFocus(key, app)
    return hs.hotkey.bind(mash, key, function()
        hs.alert.show(app)
        hs.application.launchOrFocus(app)
    end)
end

local apps = {
    {key = "1", name = "iTerm"},
    {key = "2", name = "MacVim"},
    {key = "3", name = "Dash"},

    {key = "q", name = "Google Chrome"},
    {key = "w", name = "网易有道词典"},
    {key = "e", name = "NeteaseMusic"},
    {key = "r", name = "Spark"},

    {key = "a", name = "企业微信"},
    {key = "s", name = "Wechat"},
    {key = "d", name = "QQ"},
    -- {key = "f", name = "钉钉"},

    {key = "x", name = "TickTick"},
}

for key, app in pairs(apps) do
    launchOrFocus(app.key, app.name)
end

