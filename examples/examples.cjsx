React = require('react')
faker = require 'faker'

{Container, Grid, Breakpoint, Span} = require '../src/index'

module.exports = React.createClass
  render: ->
    <Container style={{
      paddingLeft: '1.625rem'
      paddingRight: '1.625rem'
      maxWidth: '1200px'
    }}>
      <h1>React Responsive Grid</h1>
      <a href="https://github.com/KyleAMathews/react-responsive-grid">Code on Github</a>
      <br />
      <br />

      <Grid columns=12>
        <Breakpoint minWidth="768px">
          <Span columns=3>
            <div style={{height: '6rem', background: 'yellow'}}>Hi</div>
          </Span>
          <Span columns=4>
            <Span columns=1>
              <div style={{height: '3rem', background: 'wheat'}}>
                I'm a child span with 1 column
              </div>
            </Span>
            <Span columns=3 last>
              <div style={{height: '3rem', background: 'lightgray'}}>
                I'm a child span with 3 columns
              </div>
            </Span>
            <Span columns=4>
              <div style={{height: '6rem', background: 'pink'}}>
                I'm a child span with 4 columns
              </div>
            </Span>
          </Span>
          <Span columns=2>
            <div style={{height: '6rem', color: 'white', background: 'green'}}>Hi</div>
          </Span>
          <Span columns=3 last>
            <div style={{height: '6rem', color: 'white', background: 'purple'}}>Hi</div>
          </Span>
        </Breakpoint>
      </Grid>

      <h2>Simple two column layout</h2>
      <Grid columns=12>
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
      </Grid>

      <h2>Simple three column layout</h2>
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

    </Container>
