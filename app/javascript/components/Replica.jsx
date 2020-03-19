// import React from 'react'
//
// export default class Replica extends React.Component {
//   constructor(props) {
//     super(props)
//   }
//
//   render() {
//     const { type, phrase, image } = this.props
//     let replica
//
//     if (type == 'TextReplica') {
//       replica = <p>{phrase}</p>
//     } else if (type == 'ImageReplica') {
//       replica = <img src={image.url} width="100" />
//     }
//     return <div>{replica}</div>
//   }
// }
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
        <div className="phraseElements">
          <div className="chatPhrase">
            <p>{phrase}</p>
          </div>
        </div>
      )
    } else if (type == 'ImageReplica') {
      replica = (
        <div className="chatImage">
          <img src={image.url} width="100" />
        </div>
      )
    }

    return <div className="chatBlock">{replica}</div>
  }
}
