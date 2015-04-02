chai = require 'chai'
expect = chai.expect
_ = require 'underscore'

spanCalculate = require '../src/utils/SpanCalculate'

describe 'grid calculate module', ->
  it 'should exist', ->
    expect(spanCalculate).to.exist

  it 'should return an object', ->
    expect(spanCalculate()).to.be.instanceof(Object)

  it 'should return an object that includes style keys', ->
    expect(_.keys(spanCalculate())).to.deep.equal([
      'float'
      'marginLeft'
      'marginRight'
      'width'
      'clear'
    ])

  it 'should set marginLeft if at isn\'t 0', ->
    styles = spanCalculate({at: 1, columns: 3})
    noAtstyles = spanCalculate({at: 0, columns: 3})

    expect(styles.marginLeft).to.equal("8.47457627118644%")
    expect(noAtstyles.marginLeft).to.equal("0%")
    expect(styles.width).to.equal(noAtstyles.width)

  it 'should set marginRight to one gutter width by default', ->
    styles = spanCalculate({columns: 3})

    expect(styles.marginRight).to.equal("1.694915254237288%")

  it 'should remove marginRight if last prop', ->
    styles = spanCalculate({last: true})
    expect(styles.marginRight).to.equal("0%")

  it 'should float left by default', ->
    styles = spanCalculate()
    expect(styles.float).to.equal("left")

  it 'should float right if last prop', ->
    styles = spanCalculate({last: true})
    expect(styles.float).to.equal("right")

  it 'should set "clear:both" if break passed in', ->
    styles = spanCalculate({break: true})

    expect(styles.clear).to.equal("both")

  it 'should add marginLeft if pre is not 0', ->
    styles = spanCalculate({pre: 3, columns: 3})
    noPrestyles = spanCalculate({pre: 0, columns: 3})

    expect(noPrestyles.marginLeft).to.equal("0%")
    expect(styles.width).to.equal(noPrestyles.width)
    expect(styles.marginLeft).to.not.equal(noPrestyles.marginLeft)

  it 'should add marginRight if post is not 0', ->
    styles = spanCalculate({post: 1, columns: 1})
    noPoststyles = spanCalculate({post: 0, columns: 1})

    expect(styles.width).to.equal(noPoststyles.width)
    expect(styles.marginRight).to.not.equal(noPoststyles.marginRight)

  it 'should produce the same output for marginRight/marginLeft
  for squish as it does for pre/post', ->
    preStyles = spanCalculate({pre: 1, columns: 1})
    postStyles = spanCalculate({post: 1, columns: 1})
    squishStyles = spanCalculate({squish: 1, columns: 1})

    expect(postStyles.marginRight).to.equal(squishStyles.marginRight)
    expect(preStyles.marginLeft).to.equal(squishStyles.marginLeft)

  it 'should add marginLeft if squish is not 0', ->
    styles = spanCalculate({squish: 3, columns: 3})
    noSquishstyles = spanCalculate({squish: 0, columns: 3})

    expect(noSquishstyles.marginLeft).to.equal("0%")
    expect(styles.width).to.equal(noSquishstyles.width)
    expect(styles.marginLeft).to.not.equal(noSquishstyles.marginLeft)

  it 'should eliminate extra right gutter if span is last', ->
    styles = spanCalculate({squish: 1, columns: 3, last: true})

    expect(styles.marginLeft).to.equal(styles.marginRight)
