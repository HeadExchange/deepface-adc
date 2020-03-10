import React from 'react'

export default class Replica extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    const { type, phrase, image } = this.props
    let replica

    if (type == 'TextReplica') {
      replica = (
        <div className="chatBlock">
          <div className="userDip"></div>
          <div className="chatPhrase">
            <p>{phrase}</p>
          </div>
        </div>
      )
    } else if (type == 'ImageReplica') {
      replica = (
        <div className="chatBlock">
          <div className="userDip"></div>
          <div className="chatImage">
            <img src={image.url} width="100" />
          </div>
        </div>
      )
    }

    return <div>{replica}</div>
  }
}
