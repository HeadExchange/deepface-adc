import React from 'react'

export default class Answer extends React.Component {
  constructor(props) {
    super(props)
    this.handleAnswerClick = this.handleAnswerClick.bind(this)
    this.effectClick = this.effectClick.bind(this)
  }

  handleAnswerClick(id) {
    this.props.handleAnswerClick(id)
    this.autoScroll()
  }

  autoScroll() {
    document.querySelector('.chatAnswer').scrollIntoView({
      behavior: 'smooth'
    })
  }

  effectClick() {
    const { effect } = this.props
    console.log(effect)
    if (effect == 'wrongAnswer') {
      document.querySelector('body').classList.add('wrongAnswer')
    } else if (effect == 'dip_rain') {
      document.querySelector('dipRain').classList.remove('hidden')
    }
  }

  render() {
    const { handleAnswerClick } = this
    const { effectClick, autoScroll } = this
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
