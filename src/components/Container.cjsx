React = require 'react'
objectAssign = require('object-assign')

module.exports = React.createClass
  displayName: "Container"

  render: ->
    defaultStyles =
      maxWidth: '960px'
      marginLeft: 'auto'
      marginRight: 'auto'

    styles = objectAssign defaultStyles, @props.style
    children = @props.children

    props = objectAssign {}, @props
    delete props.children
    delete props.style

    <div {...props} style={styles}>
      {children}
      <span style={{display: 'block', clear: 'both'}}>{' '}</span>
    </div>
