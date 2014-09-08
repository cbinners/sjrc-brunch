MyComponent = require 'coffee/components/my_component'

module.exports = React.createClass

  # This is the name of our react component.
  displayName: "Main"

  # Sets the initial state of this component.
  getInitialState: ->
    someValue: "Some text for our custom component"

  # What we actually want to render to the screen.
  render: ->
    # This is backticks JS which is raw javascript.
    # Here we create a few DOM elements, and a custom component with a text property set.
    `<div className="main">
      <div>Example Text</div>
      <MyComponent text={this.state.someValue}/>
    </div>`