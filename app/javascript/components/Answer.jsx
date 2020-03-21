import React from 'react'

export default class Answer extends React.Component {
  constructor(props) {
    super(props)
    this.handleAnswerClick = this.handleAnswerClick.bind(this)
    this.effectClick = this.effectClick.bind(this)
  }

  handleAnswerClick(id) {
    this.props.handleAnswerClick(id)
  }

  effectClick() {
    const { effect } = this.props
    if (effect == 'wrongAnswer') {
      document.getElementsByTagName('body').classList.add('wrongAnswer')
    }
  }

  render() {
    const { handleAnswerClick } = this
    const { effectClick } = this
    const { id, phrase } = this.props

    return (
      <div
        onClick={function() {
          handleAnswerClick(id)
          effectClick()
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
