// import React from 'react'
// export default class Answer extends React.Component {
//   constructor(props) {
//     super(props)
//   }

// handleAnswerClick(id) {
//   const data = { id: id }
//
//   fetch('/v1/chat/answer', {
//     method: 'POST', // or 'PUT'
//     headers: {
//       'Content-Type': 'application/json'
//     },
//     body: JSON.stringify(data)
//   })
//     .then(response => response.json())
//     .then(data => {
//       console.log('Success:', data)
//     })
//     .catch(error => {
//       console.error('Error:', error)
//     })
// }

import React from 'react'

export default class Answer extends React.Component {
  constructor(props) {
    super(props)
    this.handleAnswerClick = this.handleAnswerClick.bind(this)
  }

  handleAnswerClick(id) {
    this.props.handleAnswerClick(id)
  }

  render() {
    const { handleAnswerClick } = this
    const { id, phrase } = this.props

    return (
      <div
        onClick={function() {
          handleAnswerClick(id)
        }}
      >
        <div className="answer">
          <div className="chatAnswer">
            <p>{phrase}</p>
          </div>
        </div>
      </div>
    )
  }
}
