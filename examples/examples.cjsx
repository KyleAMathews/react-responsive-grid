React = require('react')
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

      <h2>Simple two column layout</h2>
      <Grid columns=12>
        <Breakpoint minWidth=700>
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
        <Breakpoint maxWidth=700>
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

      <h2>More complex layout taken from http://www.zell-weekeat.com/smarter-layouts-with-susy/</h2>
      <p>Shrink screen to see simplified layout for small devices</p>
      <Grid columns=12>
        <Breakpoint minWidth=700>
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

        <Breakpoint maxWidth=700>
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

    </Container>
