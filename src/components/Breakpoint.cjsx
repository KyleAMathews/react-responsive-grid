React = require 'react'
componentWidthMixin = require 'react-component-width-mixin'

module.exports = React.createClass
  displayName: "Breakpoint"

  mixins: [componentWidthMixin]

  propTypes:
    minWidth: React.PropTypes.number
    maxWidth: React.PropTypes.number

  getDefaultProps: ->
    {
      minWidth: 0
      maxWidth: 1000000000000000000000
    }

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
    if @state.componentWidth
      if @props.minWidth <= @state.componentWidth < @props.maxWidth
        <div>{@renderChildren()}</div>
      else
        return <div />
    else
      return <div />
