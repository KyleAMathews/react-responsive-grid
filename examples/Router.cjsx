React = require 'react'
ReactDOM = require 'react-dom'
Router = require 'react-router'
{Container, Grid, Breakpoint, Span} = require '../src/index'
{Route, Navigation, DefaultRoute, RouteHandler, Link} = Router

Typography = require 'typography'
typography = Typography()
{injectStyles, rhythm} = typography
injectStyles()

Controls = require './Controls'
Intro = require './Intro'

App = React.createClass
  render: ->
    <div>
      <div style={{
        background: '#E3F2FD'
        height: "100vh"
        left: 0
        padding: 24
        paddingTop: 48
        position: "fixed"
        width: 280
      }}>
        <Controls/>
      </div>
      <Container style={{
        maxWidth: 1600
        padding: rhythm(1)
        paddingLeft: "calc(280px + #{rhythm(1.5)})"
      }}>
        <RouteHandler/>
      </Container>
    </div>

routes = (
  <Route handler={App}>
    <DefaultRoute name="intro" handler={Intro}/>
    <Route name="two-column" path="/examples/two-column" handler={require('./TwoColumn')}/>
    <Route name="three-column" path="/examples/three-column" handler={require('./ThreeColumn')}/>
    <Route name="child-spans" path="/examples/child-spans" handler={require('./ChildSpans')}/>
    <Route name="complex-responsive-layout" path="/examples/complex-responsive-layout" handler={require('./ComplexResponsiveLayout')}/>
    <Route name="pre-post-squish" path="/examples/pre-post-squish" handler={require('./PrePostSquish')}/>
  </Route>
)

Router.run(routes, (Handler, state) ->
  ReactDOM.render(<Handler {...state}/>, document.getElementById("mount-point"))
)
