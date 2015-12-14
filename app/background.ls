chrome.app.runtime.onLaunched.addListener !->
    chrome.app.window.create "views/window.html", {
        \outerBounds: {
            \width: 400
            \height: 500
        }
    }
