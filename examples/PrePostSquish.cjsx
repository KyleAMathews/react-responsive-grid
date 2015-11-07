React = require 'react'
{Container, Grid, Breakpoint, Span} = require '../src/index'

purpleStyle =
  border: '2px solid purple'
  color: 'purple'
  height: '10rem'
  fontSize: '1rem'
  lineHeight: '10rem'
  marginBottom: '1rem'
  textAlign: 'center'

module.exports = React.createClass
  render: ->
    <div>
      <h2>Demo squish, post, pre</h2>
      <p>
        <a href="https://github.com/KyleAMathews/react-responsive-grid/blob/master/examples/PrePostSquish.cjsx">Code</a>
      </p>
      <h3>Squish</h3>
      <Grid columns=12>
        <Span style={purpleStyle} columns=12>{"<Span columns=12>"}</Span>
        <Span style={purpleStyle} columns=10 squish=1>{"<Span columns=10 squish=1>"}</Span>
        <Span style={purpleStyle} columns=8 squish=2>{"<Span columns=8 squish=2>"}</Span>
        <Span style={purpleStyle} columns=6 squish=3>{"<Span columns=6 squish=3>"}</Span>
        <Span style={purpleStyle} columns=4 squish=4>{"<Span columns=4 squish=4>"}</Span>
      </Grid>
      <h3>Pre</h3>
      <Grid columns=12>
        <Span style={purpleStyle} columns=12>{"<Span columns=12>"}</Span>
        <Span style={purpleStyle} columns=11 pre=1>{"<Span columns=11 pre=1>"}</Span>
        <Span style={purpleStyle} columns=10 pre=2>{"<Span columns=10 pre=2>"}</Span>
        <Span style={purpleStyle} columns=9 pre=3>{"<Span columns=9 pre=3>"}</Span>
        <Span style={purpleStyle} columns=8 pre=4>{"<Span columns=8 pre=4>"}</Span>
      </Grid>
      <h3>Post</h3>
      <Grid columns=12>
        <Span style={purpleStyle} columns=12>{"<Span columns=12>"}</Span>
        <Span style={purpleStyle} columns=11 post=1>{"<Span columns=11 post=1>"}</Span>
        <Span style={purpleStyle} columns=10 post=2>{"<Span columns=10 post=2>"}</Span>
        <Span style={purpleStyle} columns=9 post=3>{"<Span columns=9 post=3>"}</Span>
        <Span style={purpleStyle} columns=8 post=4>{"<Span columns=8 post=4>"}</Span>
      </Grid>
      <h3>Using them together</h3>
      <Grid columns=12>
        <Span style={purpleStyle} columns=4>{"<Span columns=4>"}</Span>
        <Span style={purpleStyle} columns=7 pre=1 last>{"<Span columns=7 pre=1 last>"}</Span>
        <Span style={purpleStyle} columns=4 post=1>{"<Span columns=4 post=1>"}</Span>
        <Span style={purpleStyle} columns=5 squish=1 last>{"<Span columns=5 squish=1"}</Span>
        <Span style={purpleStyle} columns=6 pre=4>{"<Span columns=6 pre=4"}</Span>
        <Span style={purpleStyle} columns=3 pre=1>{"<Span columns=3 pre=1"}</Span>
        <Span style={purpleStyle} columns=4 pre=1>{"<Span columns=4 pre=1"}</Span>
        <Span style={purpleStyle} columns=3 post=1>{"<Span columns=3 post=1>"}</Span>
        <Span style={purpleStyle} columns=3 post=1>{"<Span columns=3 post=1>"}</Span>
        <Span style={purpleStyle} columns=4 last>{"<Span columns=4>"}</Span>
      </Grid>
    </div>

