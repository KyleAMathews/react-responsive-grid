import {Component} from 'react'

interface ContainerProps {
  children?: any
  style?: Object
}

export class Container extends Component<ContainerProps, {}> {}

interface GridProps {
  columns?: number
  gutterRatio?: number
}

export class Grid extends Component<GridProps, {}> {}

interface SpanProps {
  context?: Object
  columns?: number
  at?: number
  pre?: number
  post?: number
  squish?: number
  last?: boolean
  break?: boolean
}

export class Span extends Component<SpanProps, {}> {}

interface BreakpointProps {
  widthMethod: string
  minWidth?: number
  maxWidth?: number
}

export class Breakpoint extends Component<BreakpointProps, {}> {}
