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

  # width
  numColumns = ops.columns - ops.pre - ops.post - ops.squish*2
  width = calcSpanWidth(numColumns) + "%"

  # marginLeft
  if ops.at is 0 and ops.pre is 0 and ops.squish is 0
    marginLeft = 0
  else
    marginLeft = (
      calcSpanWidth(
        ops.at + ops.pre + ops.squish
      ) + gutterWidth
    ) + "%"

  # marginRight
  if ops.last and ops.post is 0 and ops.squish is 0
    marginRight = 0
  else if ops.post isnt 0 or ops.squish isnt 0
    marginRight = (
      calcSpanWidth(
        ops.at + ops.post + ops.squish
      ) + gutterWidth
    ) + "%"
  else
    marginRight = gutterWidth + "%"

  # float
  if ops.last
    float = "right"
  else
    float = "left"

  return {
    float: float
    marginLeft: marginLeft
    marginRight: marginRight
    width: width
    clear: if ops.break then 'both' else 'none'
  }
