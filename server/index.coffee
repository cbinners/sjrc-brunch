express = require 'express'
Router = express.Router

server = null

PORT = 3000

start = (path, done) ->
  cb = (err) ->
    if err
      console.log "Error booting server: #{err}"
      process.exit(1)
    else
      done?()
  app = express()
  router = new Router()
  app.use express.static(require('path').resolve(__dirname + "/../public"))
  app.get "*", (res, req) -> req.redirect '/'
  app.listen PORT, (err) ->
    return cb(err) if err
    console.log "Started server on port #{PORT}"
    cb()
  close: -> reload(path, callback)

reload = (path, callback) ->
  server?.close()
  start(path, callback)

start()
