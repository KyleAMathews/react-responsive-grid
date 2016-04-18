React = require 'react'
{Link} = require 'react-router'

module.exports = React.createClass
  render: ->
    <ul>
      <li><Link to="/">Introduction</Link></li>
      <li><Link to="/examples/two-column/">Two-column layout</Link></li>
      <li><Link to="/examples/three-column/">Three-column layout</Link></li>
      <li><Link to="/examples/child-spans/">Child spans</Link></li>
      <li><Link to="/examples/complex-responsive-layout/">Complex responsive layout</Link></li>
      <li><Link to="/examples/pre-post-squish/">pre, post, squish</Link></li>
    </ul>
