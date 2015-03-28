React = require 'react'
faker = require 'faker'
{Container, Grid, Breakpoint, Span} = require '../src/index'

module.exports = React.createClass
  render: ->
    <div>
      <h2>Simple three column layout</h2>
      <p>
        <a href="https://github.com/KyleAMathews/react-responsive-grid/blob/master/examples/ThreeColumn.cjsx">Code</a>
      </p>
      <Grid columns=12>
        <Span columns=2>
          <div style={{
            background: 'pink'
            height: '25vh'
            padding: '1rem'
          }}>Left column</div>
        </Span>
        <Span columns=8>
          <div style={{
            background: 'lightgray'
            padding: '1rem'
            whiteSpace: 'pre-wrap'
          }}>{faker.lorem.paragraphs(6)}</div>
        </Span>
        <Span columns=2 last>
          <div style={{
            background: 'pink'
            height: '25vh'
            padding: '1rem'
          }}>Right column</div>
        </Span>
      </Grid>
    </div>
