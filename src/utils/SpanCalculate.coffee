objectAssign = require('react/lib/Object.assign')

module.exports = (options) ->
  defaults =
    columns: 3
    at: 0
    contextColumns: 12
    gutterRatio: 1/4
    first: false
    last: false

  ops = objectAssign defaults, options

  n = 100/(ops.contextColumns + ((ops.contextColumns-1) * ops.gutterRatio))
  gutterWidth = ops.gutterRatio * n

  calcColumnWidth = (numColumns) ->
    n*numColumns + gutterWidth*(numColumns-1)

  # width
  width = calcColumnWidth(ops.columns) + "%"

  # marginLeft
  if ops.at is 0
    marginLeft = 0
  else
    marginLeft = (calcColumnWidth(ops.at) + gutterWidth) + "%"

  # marginRight
  if ops.last
    marginRight = 0
  else
    marginRight = gutterWidth + "%"

  return {
    float: 'left'
    marginLeft: marginLeft
    marginRight: marginRight
    width: width
    clear: if ops.break then 'both' else 'none'
  }
