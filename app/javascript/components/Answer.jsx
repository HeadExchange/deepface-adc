import React from 'react'

export default class Answer extends React.Component {
  constructor(props) {
    super(props)
    this.handleAnswerClick = this.handleAnswerClick.bind(this)
  }

  handleAnswerClick(id) {
    this.props.handleAnswerClick(id)
    // if ((this.onClick = true)) {
    //   this.props.handleAnswerClick(id)
    // } else {
    //   this.props.delete()
    // }
  }

  render() {
    const { handleAnswerClick } = this
    const { id, phrase } = this.props

    return (
      <div
        onClick={function() {
          handleAnswerClick(id)
        }}
        id="question"
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
