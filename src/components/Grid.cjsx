React = require 'react'
objectAssign = require('object-assign')

module.exports = React.createClass
  displayName: "Grid"

  propTypes:
    columns: React.PropTypes.number
    gutterRatio: React.PropTypes.number

  getDefaultProps: ->
    {
      columns: 12
      gutterRatio: 1/4
    }

  renderChildren: ->
    React.Children.map(@props.children, (child) =>
      if child.type?.displayName in ["Breakpoint", "Span"]
        React.cloneElement(child, {
          context:
            columns: @props.columns
            gutterRatio: @props.gutterRatio
        })
      else
        child
    )

  render: ->
    props = objectAssign {}, @props
    delete props.gutterRatio
    delete props.columns

    <div {...props}>
      {@renderChildren()}
      <span style={{display: 'block', clear: 'both'}}>{' '}</span>
    </div>
