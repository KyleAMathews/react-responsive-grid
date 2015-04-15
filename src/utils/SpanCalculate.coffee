objectAssign = require('react/lib/Object.assign')

module.exports = (options) ->
  defaults =
    columns: 3
    at: 0
    pre: 0
    post: 0
    squish: 0
    contextColumns: 12
    gutterRatio: 1/4
    first: false
    last: false

  ops = objectAssign defaults, options

  # Calculate the width of one column.
  n = 100/(ops.contextColumns + ((ops.contextColumns-1) * ops.gutterRatio))

  # Calculate the width of a gutter.
  gutterWidth = ops.gutterRatio * n

  # Function to calculate width of a span.
  calcSpanWidth = (numColumns) ->
    n*numColumns + gutterWidth*(numColumns-1)

  calcSpacing = (numColumns) ->
    if numColumns is 0
      return 0
    else
      calcSpanWidth(numColumns) + gutterWidth

  # width
  width = calcSpanWidth(ops.columns)

  # marginLeft
  if ops.at is 0 and ops.pre is 0 and ops.squish is 0
    marginLeft = 0
  else
    marginLeft =
      calcSpacing(ops.at) +
      calcSpacing(ops.pre) +
      calcSpacing(ops.squish)

  # marginRight
  if ops.last and ops.post is 0 and ops.squish is 0
    marginRight = 0
  else if ops.post isnt 0 or ops.squish isnt 0
    marginRight =
      calcSpacing(ops.post) +
      calcSpacing(ops.squish)

    unless ops.last
      marginRight = marginRight + gutterWidth

  else
    marginRight = gutterWidth

  # float
  if ops.last
    float = "right"
  else
    float = "left"

  # Add %
  width = width + "%"
  marginLeft = marginLeft + "%"
  marginRight = marginRight + "%"

  return {
    float: float
    marginLeft: marginLeft
    marginRight: marginRight
    width: width
    clear: if ops.break then 'both' else 'none'
  }
