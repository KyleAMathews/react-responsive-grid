React = require 'react'
{Container, Grid, Breakpoint, Span} = require '../src/index'

module.exports = React.createClass
  render: ->
    <div>
      <h2>Child spans</h2>
      <p>
        <a href="https://github.com/KyleAMathews/react-responsive-grid/blob/master/examples/ChildSpans.cjsx">Code</a>
      </p>
      <Grid columns=12>
        <Span columns=3>
          <div style={{height: '20rem', background: 'yellow'}}>Hi</div>
        </Span>
        <Span columns=4>
          <Span columns=1>
            <div style={{height: '6rem', background: 'wheat', marginBottom: '1rem'}}>
              I'm a child span with 1 column
            </div>
          </Span>
          <Span columns=3 last>
            <div style={{height: '6rem', background: 'lightgray'}}>
              I'm a child span with 3 columns
            </div>
          </Span>
          <Span columns=4>
            <div style={{height: '6rem', background: 'pink', marginBottom: '1rem'}}>
              I'm a child span with 4 columns
            </div>
          </Span>
          <Span columns=3>
            <div style={{height: '6rem', background: 'lightgray'}}>
              I'm a child span with 3 columns
            </div>
          </Span>
          <Span columns=1 last>
            <div style={{height: '6rem', background: 'wheat'}}>
              I'm a child span with 1 column
            </div>
          </Span>
        </Span>
        <Span columns=2>
          <div style={{height: '20rem', color: 'white', background: 'green'}}>Hi</div>
        </Span>
        <Span columns=3 last>
          <div style={{height: '20rem', color: 'white', background: 'purple'}}>Hi</div>
        </Span>
      </Grid>
    </div>
