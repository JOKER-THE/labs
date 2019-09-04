const { app, BrowserWindow } = require('electron')

// Окно приложения
let win

function createWindow () {
  // Создаем объект окна браузера
  win = new BrowserWindow({
    width: 800,
    height: 600,
    webPreferences: {
      nodeIntegration: true
    }
  })

  // Загружаем index.html
  win.loadFile('index.html')

  // Закрытие окна браузера
  win.on('closed', () => {
    win = null
  })
}

app.on('ready', createWindow)

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit()
  }
})

app.on('activate', () => {
  if (win === null) {
    createWindow()
  }
})
