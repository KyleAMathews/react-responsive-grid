React = require 'react'
objectAssign = require('object-assign')
createReactClass = require 'create-react-class'
PropTypes = require 'prop-types'

spanCalculate = require '../utils/SpanCalculate'

module.exports = createReactClass
  displayName: "Span"

  propTypes:
    context: PropTypes.object
    columns: PropTypes.number
    at: PropTypes.number
    pre: PropTypes.number
    post: PropTypes.number
    squish: PropTypes.number
    last: PropTypes.bool
    break: PropTypes.bool

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

    props = objectAssign {}, @props, {"style": style}
    delete props.at
    delete props.break
    delete props.columns
    delete props.context
    delete props.first
    delete props.last
    delete props.post
    delete props.pre
    delete props.squish
    delete props.style

    <div {...props} style={style}>
      {@renderChildren()}
      <span style={{display: 'block', clear: 'both'}}>{' '}</span>
    </div>
