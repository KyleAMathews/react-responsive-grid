[![Build
Status](https://img.shields.io/travis/KyleAMathews/react-responsive-grid/master.svg?style=flat-square)](http://travis-ci.org/KyleAMathews/react-responsive-grid)

# react-responsive-grid
Power tools for building responsive layouts with React

WIP, porting best ideas from [Susy](http://susy.oddbird.net/) to a react-friendly and css independent format.

### Susy porting progress
#### Container
- [x] Basic fluid container
- [ ] static
- [ ] non-centered layouts
- [ ] container positions (left, center (default), right, length (left
  and right))

#### Breakpoint
- [x] Basic component width breakpoints (note this is different than a
  media query breakpoint)
- [ ] Media query breakpoints

#### Columns
- [x] set number of columns
- [ ] list — create asymmetrical grids. List the size of each column
  relative to other columns where 1 is a single column-unit. (1,2) would
create a 2-column grid where the second column being twice the width of
the first.

#### Gutter options
- [x] margin-based
- [ ] padding-based
- [ ] explicit gutter width

#### Gutter positions
- [ ] before
- [x] after
- [ ] inside
- [ ] inside-static
- [ ] split

#### Span
- [x] Set # of columns
- [ ] Set arbitrary width
- [x] Remove last gutter by "last" prop
- [ ] Remove first gutter by "first" prop
- [x] Support nested spans
- [x] Set location of span using "at" prop
- [ ] Span external gutters (in addition to internal gutters)
- [x] "break" prop — start new row by clearing previous spans
- [ ] No gutters option
- [ ] "full" prop — shortcut for a span to fill its entire context
- [x] "pre" prop — add margin before a span
- [x] "post" prop — add margin after a span
- [x] "squish" prop — shortcut for adding pre and post margins to the
  same span
- [ ] "pull" prop — add negative margin before a span pulling it against
  the direction of flow
- [ ] "prefix" prop — add padding before a span
- [ ] "suffix" prop — add padding after a span
- [ ] "pad" prop — add padding before and after a span
- [ ] "bleed" prop — Apply negative margins and equal positive padding
  so that span borders and backgrounds "bleed" outside of their
  containers
- [ ] "bleed-x" prop — a shortcut for applying only left and right
  (horixontal) bleed
- [ ] "bleed-y" prop — a shortcut for applying only top and bottom
  (vertical) bleed

#### Debuggin
- [ ] Show grid
