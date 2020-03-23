import React from 'react'

export default class Answer extends React.Component {
  constructor(props) {
    super(props)
    this.handleAnswerClick = this.handleAnswerClick.bind(this)
    this.effectClick = this.effectClick.bind(this)
  }

  handleAnswerClick(id) {
    this.props.handleAnswerClick(id)
    // this.autoScroll()

    // answers.map((answer, id) => {
    //     if (id !== 'question') {
    //       document.querySelector('.chatAnswer').remove()
    //     }
    //   })
  }

  autoScroll() {
    // let
    // document.querySelector('.chatAnswer').forEach(id => {
    //   document.querySelector('.chatAnswer').scrollIntoView({
    //     behavior: 'smooth'
    //   })
    // })
  }

  effectClick(effect) {
    console.log(effect)
    if (effect == 'wrongAnswer') {
      document.querySelector('body').classList.add('wrongAnswer')
      window.setTimeout(() => {
        document.querySelector('body').classList.remove('wrongAnswer')
      }, 1500)
    } else if (effect == 'trueAnswer') {
      document.querySelector('body').classList.add('trueAnswer')
      window.setTimeout(() => {
        document.querySelector('body').classList.remove('trueAnswer')
      }, 1500)
    } else if (effect == 'dipRain') {
      document.querySelector('.dipRain').classList.remove('hidden')
      window.setTimeout(() => {
        document.querySelector('.dipRain').classList.add('hidden')
      }, 3500)
    } else if (effect == 'dipConfetti') {
      document.querySelector('.dipConfetti').classList.remove('hidden')
      window.setTimeout(() => {
        document.querySelector('.dipConfetti').classList.add('hidden')
      }, 3500)
    } else if (effect == 'bigCursor') {
      document.querySelector('.bigCursor').classList.remove('hidden')
      window.setTimeout(() => {
        document.querySelector('.bigCursor').classList.add('hidden')
      }, 3500)
    }
  }

  render() {
    const { handleAnswerClick } = this
    const { effectClick, autoScroll } = this
    const { id, phrase, effect, answers } = this.props

    return (
      <div
        onClick={function() {
          handleAnswerClick(id)
          effectClick(effect)
        }}
        id="question"
        effect={effect}
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
