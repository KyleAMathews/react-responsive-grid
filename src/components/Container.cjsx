React = require 'react'
objectAssign = require('react/lib/Object.assign')

module.exports = React.createClass
  displayName: "Container"

  render: ->
    defaultStyles =
      maxWidth: '960px'
      marginLeft: 'auto'
      marginRight: 'auto'

    styles = objectAssign defaultStyles, @props.style

    <div {...@props} style={styles}>
      {@props.children}
      <span style={{display: 'block', clear: 'both'}}>{' '}</span>
    </div>
