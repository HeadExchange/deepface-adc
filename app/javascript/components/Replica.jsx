import React from 'react'

export default class Replica extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    const { type, phrase, image } = this.props
    let replica

    if (type == 'TextReplica') {
      replica = <p>{phrase}</p>
    } else if (type == 'ImageReplica') {
      replica = <img src={image.url} />
    }

    return <div>{replica}</div>
  }
}
