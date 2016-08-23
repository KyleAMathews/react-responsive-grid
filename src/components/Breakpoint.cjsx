React = require 'react'
componentWidthMixin = require 'react-component-width-mixin'
PageWidthMixin = require 'react-page-width'
objectAssign = require 'object-assign'

ComponentWidthComponent = React.createClass
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
      if child?.type?.displayName is "Span"
        React.cloneElement(child, {
          context: @props.context
        })
      else
        child
    )

  render: ->
    props = objectAssign {}, @props
    delete props.maxWidth
    delete props.minWidth
    delete props.widthMethod

    if @state.componentWidth
      if @props.minWidth <= @state.componentWidth < @props.maxWidth
        <div {...props}>{@renderChildren()}</div>
      else
        return <div />
    else
      return <div />

PageWidthComponent = React.createClass
  displayName: "Breakpoint"

  mixins: [PageWidthMixin]

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
        React.cloneElement(child, {
          context: @props.context
        })
      else
        child
    )

  render: ->
    props = objectAssign {}, @props
    delete props.maxWidth
    delete props.minWidth
    delete props.widthMethod

    if @state.pageWidth
      if @props.minWidth <= @state.pageWidth < @props.maxWidth
        <div {...props}>{@renderChildren()}</div>
      else
        return <div />
    else
      return <div />

module.exports = React.createClass
  displayName: 'Breakpoint'

  propTypes:
    widthMethod: React.PropTypes.string.isRequired
    minWidth: React.PropTypes.number
    maxWidth: React.PropTypes.number

  getDefaultProps: ->
    widthMethod: 'pageWidth'

  render: ->
    if @props.widthMethod is "pageWidth"
      <PageWidthComponent {...@props}/>
    else if @props.widthMethod is "componentWidth"
      <ComponentWidthComponent {...@props}/>
