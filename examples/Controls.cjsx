React = require 'react'
{Link} = require 'react-router'

module.exports = React.createClass
  render: ->
    <ul>
      <li><Link to="intro">Introduction</Link></li>
      <li><Link to="two-column">Two-column layout</Link></li>
      <li><Link to="three-column">Three-column layout</Link></li>
      <li><Link to="child-spans">Child spans</Link></li>
      <li><Link to="complex-responsive-layout">Complex responsive layout</Link></li>
      <li><Link to="pre-post-squish">pre, post, squish</Link></li>
    </ul>
