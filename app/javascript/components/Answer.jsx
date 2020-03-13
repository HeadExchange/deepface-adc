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
          <div className="chatAnswer">{phrase}</div>
        </div>
      </div>
    )
  }
}
