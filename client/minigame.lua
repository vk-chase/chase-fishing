local miniGame = {
    active = false
}

local successFunc, failFunc, halfFunc

local function displayMinigame(data)
    miniGame.active = not miniGame.active
    SetNuiFocus(miniGame.active, miniGame.active)
    
    local message = {
        type = miniGame.active and "start" or "stop",
        data = data
    }
    SendNUIMessage(message)
end

function miniGame.start(data, successCallback, failCallback, halfSuccessCallback)
    if not miniGame.active then
        displayMinigame(data)
        successFunc = successCallback
        failFunc = failCallback
        halfFunc = halfSuccessCallback
    else
        print('Already engaged in an activity')
    end
end

function miniGame.stop()
    displayMinigame()
end

RegisterNUICallback('endGame', function(endType)
    miniGame.stop()
    
    local callbackMap = {
        success = successFunc,
        halfSuccess = halfFunc,
        fail = failFunc
    }
    
    local callback = callbackMap[endType] or failFunc
    
    local success, result = pcall(callback)
    if not success then
        print("Error executing callback:", result)
    end
end)

function GetMiniGame()
    return miniGame
end

exports("GetMiniGame", GetMiniGame)