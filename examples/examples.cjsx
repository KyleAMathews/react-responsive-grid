React = require('react')
HelloWorld = require '../src/index'

module.exports = React.createClass
  render: ->
    <div style={width:'500px', margin:'0 auto'}>
      <h1>React-Component-Starter</h1>
      <a href="https://github.com/KyleAMathews/react-component-starter">Code on Github</a>
      <br />
      <br />
      <h2>Default look</h2>
      <pre><code>
      {"""
      <HelloWorld />
        """}
      </code></pre>
      <HelloWorld />

    </div>
