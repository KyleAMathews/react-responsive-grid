React = require 'react'
objectAssign = require('react/lib/Object.assign')

spanCalculate = require '../utils/SpanCalculate'

module.exports = React.createClass
  displayName: "Span"

  propTypes:
    context: React.PropTypes.object
    columns: React.PropTypes.number
    at: React.PropTypes.number
    pre: React.PropTypes.number
    post: React.PropTypes.number
    squish: React.PropTypes.number
    last: React.PropTypes.bool
    break: React.PropTypes.bool

  getDefaultProps: ->
    at: 0
    pre: 0
    post: 0
    squish: 0
    last: false
    first: false
    break: false

  renderChildren: ->
    React.Children.map(@props.children, (child) =>
      if child?.type?.displayName is "Span"
        React.cloneElement(child, {
          # Sub-spans need to know # of columns of parent.
          context:
            columns: @props.columns
            gutterRatio: @props.context.gutterRatio
        })
      else
        child
    )

  render: ->
    style = spanCalculate({
      contextColumns: @props.context.columns
      gutterRatio: @props.context.gutterRatio
      columns: @props.columns
      at: @props.at
      pre: @props.pre
      post: @props.post
      squish: @props.squish
      last: @props.last
      break: @props.break
    })

    style = objectAssign style, @props.style

    <div {...@props} style={style}>
      {@renderChildren()}
      <span style={{display: 'block', clear: 'both'}}>{' '}</span>
    </div>
