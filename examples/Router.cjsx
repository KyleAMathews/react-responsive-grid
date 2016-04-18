React = require 'react'
{render} = require 'react-dom'
{browserHistory, Router, Route, IndexRoute}  = require 'react-router'
{Container, Grid, Breakpoint, Span} = require '../src/index'

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
        {@props.children}
      </Container>
    </div>

routes = (
  <Route path="/" component={App}>
    <IndexRoute component={Intro} />
    <Route path="/examples/two-column/" component={require('./TwoColumn')}/>
    <Route path="/examples/three-column/" component={require('./ThreeColumn')}/>
    <Route path="/examples/child-spans/" component={require('./ChildSpans')}/>
    <Route path="/examples/complex-responsive-layout/" component={require('./ComplexResponsiveLayout')}/>
    <Route path="/examples/pre-post-squish/" component={require('./PrePostSquish')}/>
  </Route>
)

render(<Router history={browserHistory} routes={routes}/>, document.getElementById("mount-point"))
