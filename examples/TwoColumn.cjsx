React = require 'react'
faker = require 'faker'
{Container, Grid, Breakpoint, Span} = require '../src/index'

module.exports = React.createClass
  render: ->
    <div>
      <h2>Responsive two column layout</h2>
      <p>
        <a href="https://github.com/KyleAMathews/react-responsive-grid/blob/master/examples/TwoColumn.cjsx">Code</a>
      </p>
      <Grid columns=12>
        <Breakpoint minWidth=700 widthMethod="componentWidth">
          <Span columns=9>
            <div style={{
              background: 'lightgray'
              padding: '1rem'
              whiteSpace: 'pre-wrap'
            }}>{faker.lorem.paragraphs(6)}</div>
          </Span>
          <Span columns=3 last>
            <div style={{
              background: 'pink'
              height: '25vh'
              padding: '1rem'
            }}>Right column</div>
          </Span>
        </Breakpoint>
        <Breakpoint maxWidth=700 widthMethod="componentWidth">
          <div style={{
            background: 'pink'
            height: '25vh'
            padding: '1rem'
          }}>Right column</div>
          <div style={{
            background: 'lightgray'
            padding: '1rem'
            whiteSpace: 'pre-wrap'
          }}>{faker.lorem.paragraphs(6)}</div>
        </Breakpoint>
      </Grid>
    </div>
