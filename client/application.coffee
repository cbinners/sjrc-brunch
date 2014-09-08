Main = require 'coffee/components/main'

class Application
  # This is called from index.html
  @init: ->
    # This renders our react into the main page and attaches it to the div with id #app (see index.html)
    React.renderComponent Main(), $('#app').get(0)

module.exports = Application