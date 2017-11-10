-- Set trackpad scrolling to natural or unnatural
usbWatcher = hs.usb.watcher.new(function(data)
    mouse = "Corsair M45 Gaming Mouse"
    prodID = 6927
    vendorID = 6940
    if data['productName'] == mouse and data['productID'] == prodID and data['vendorID'] == vendorID then
        if data['eventType'] == "added" then
            useNaturalScrolling(false)
            -- print("Adding mouse event: \n" .. hs.inspect(data))
        else
            useNaturalScrolling(true)
            -- print("Removing mouse event: \n" .. hs.inspect(data))
        end
    end
end)
usbWatcher:start()

function useNaturalScrolling(be_natural)
    if be_natural then
        click_when = "false"
    else
        click_when = "true"
    end

    hs.applescript([[
        tell application "System Preferences"
            activate
            set current pane to pane "com.apple.preference.trackpad"
            delay 0.3
        end tell
        tell application "System Events"
            tell application process "System Preferences"
                tell window "Trackpad"
                    click radio button "Scroll & Zoom" of tab group 1
                    set scrollCheckbox to checkbox 1 of tab group 1
                    if value of scrollCheckbox as boolean is ]]
                    .. click_when ..
                    [[ then
                        click scrollCheckbox
                    end if
                end tell
            end tell
        end tell
        tell application "System Preferences" to quit
    ]])
end

-- Reload config if changed
function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()