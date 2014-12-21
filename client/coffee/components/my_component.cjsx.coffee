module.exports = React.createClass

  displayName: "My Custom Component"

  # Specify which properties we want to get.
  propTypes:
    text: React.PropTypes.string

  render: ->
    # Let's render whatever we were given in the "text" property.
    <div>{@props.text}</div>