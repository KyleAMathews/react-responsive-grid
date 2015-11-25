React = require 'react'
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
      <h2>More complex layout taken from http://www.zell-weekeat.com/smarter-layouts-with-susy/</h2>
      <p>Shrink screen to see simplified layout for small devices</p>
      <p>
        <a href="https://github.com/KyleAMathews/react-responsive-grid/blob/master/examples/ComplexResponsiveLayout.cjsx">Code</a>
      </p>
      <Grid columns=12>
        <Breakpoint minWidth=700 widthMethod="componentWidth">
          <Span columns=8>
            <div style={purpleStyle}>1</div>
          </Span>
          <Span columns=4 last>
            <div style={purpleStyle}>2</div>
          </Span>

          <Span columns=4>
            <div style={purpleStyle}>3</div>
          </Span>
          <Span columns=4>
            <div style={purpleStyle}>4</div>
          </Span>
          <Span columns=4 last>
            <div style={purpleStyle}>5</div>
          </Span>

          <Span columns=4>
            <div style={purpleStyle}>6</div>
          </Span>
          <Span columns=8 last>
            <div style={purpleStyle}>7</div>
          </Span>

          <Span columns=4>
            <div style={purpleStyle}>8</div>
          </Span>
          <Span columns=4>
            <div style={purpleStyle}>9</div>
          </Span>
          <Span columns=4 last>
            <div style={purpleStyle}>10</div>
          </Span>
        </Breakpoint>

        <Breakpoint maxWidth=700 widthMethod="componentWidth">
          <Span columns=12 last>
            <div style={purpleStyle}>1</div>
          </Span>

          <Span columns=6>
            <div style={purpleStyle}>2</div>
          </Span>
          <Span columns=6 last>
            <div style={purpleStyle}>3</div>
          </Span>

          <Span columns=6>
            <div style={purpleStyle}>4</div>
          </Span>
          <Span columns=6 last>
            <div style={purpleStyle}>5</div>
          </Span>

        </Breakpoint>
      </Grid>
    </div>
