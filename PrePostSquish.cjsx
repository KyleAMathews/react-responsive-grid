React = require 'react'
faker = require 'faker'
{Container, Grid, Breakpoint, Span} = require '../src/index'

purpleStyle =
  border: '2px solid purple'
  color: 'purple'
  height: '10rem'
  fontSize: '2rem'
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
      <code>{"<Span columns=12 squish=x>where x is number of columns to 'squish' the span
      from both sides.</Span>"}</code>
      <br />
      <br />
      <Grid columns=12>
        <Span style={purpleStyle} columns=12>12 column span with no squish</Span>
        <Span style={purpleStyle} columns=12 squish=1>Squish one</Span>
        <Span style={purpleStyle} columns=12 squish=2>Squish two</Span>
        <Span style={purpleStyle} columns=12 squish=3>Squish three</Span>
        <Span style={purpleStyle} columns=12 squish=4>Squish four</Span>
      </Grid>
      <h3>Pre</h3>
      <code>{"<Span columns=12 pre=x>where x is number of columns of white space to
        add to the beginning of the span.</Span>"}</code>
      <br />
      <br />
      <Grid columns=12>
        <Span style={purpleStyle} columns=12>12 column span with no pre</Span>
        <Span style={purpleStyle} columns=12 pre=1>Pre one</Span>
        <Span style={purpleStyle} columns=12 pre=2>Pre two</Span>
        <Span style={purpleStyle} columns=12 pre=3>Pre three</Span>
        <Span style={purpleStyle} columns=12 pre=4>Pre four</Span>
      </Grid>
      <h3>Post</h3>
      <code>{"<Span columns=12 post=x>where x is number of columns of white space to
        add at the end of the span.</Span>"}</code>
      <br />
      <br />
      <Grid columns=12>
        <Span style={purpleStyle} columns=12>12 column span with no post</Span>
        <Span style={purpleStyle} columns=12 post=1>post one</Span>
        <Span style={purpleStyle} columns=12 post=2>post two</Span>
        <Span style={purpleStyle} columns=12 post=3>post three</Span>
        <Span style={purpleStyle} columns=12 post=4>post four</Span>
      </Grid>
    </div>

