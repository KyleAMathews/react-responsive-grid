React = require 'react'

module.exports = React.createClass
  displayName: "Breakpoint"

  renderChildren: ->
    React.Children.map(@props.children, (child) =>
      if child.type?.displayName is "Span"
        React.addons.cloneWithProps(child, {
          context: @props.context
        })
      else
        child
    )

  render: ->
    <div>{@renderChildren()}</div>
