module.exports = React.createClass

  # This is the name of our react component.
  displayName: "Main"

  # Sets the initial state of this component.
  getInitialState: ->
    someValue: "Some text for our custom component"
    numberOfClicks: 0

  handleClick: ->
    newNumber = @state.numberOfClicks + 1
    @setState numberOfClicks: newNumber


  # What we actually want to render to the screen.
  render: ->
    <div className="main">
      <div className="centerInPage" onClick={@handleClick}>Example Text</div>
      <div>Hello Text</div>
      <div className="clickItem">Number of Clicks: <span className="count">{@state.numberOfClicks}</span></div>
    </div>