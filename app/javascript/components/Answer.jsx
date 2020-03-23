import React from 'react'

export default class Answer extends React.Component {
  constructor(props) {
    super(props)
    this.handleAnswerClick = this.handleAnswerClick.bind(this)
    this.effectClick = this.effectClick.bind(this)
    this.cursorEffect = this.cursorEffect.bind(this)
  }

  handleAnswerClick(id) {
    this.props.handleAnswerClick(id)
  }

  // autoScroll() {
  //   let elements = document.getElementsByClassName('chatAnswer')
  //   console.log(elements.length)
  //   elements[elements.length - 1].scrollIntoView({
  //     behavior: 'smooth'
  //   })
  // }

  cursorEffect() {
    const cursor = document.querySelector('.cursor')

    document.addEventListener('mousemove', e => {
      cursor.setAttribute(
        'style',
        'top: ' + (e.pageY - 20) + 'px; left: ' + (e.pageX - 20) + 'px;'
      )
    })
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
      document.querySelector('.cursor').classList.add('bigCursor')
      window.setTimeout(() => {
        document.querySelector('.cursor').classList.remove('bigCursor')
      }, 2000)
    }
  }

  render() {
    const { handleAnswerClick } = this
    const { effectClick, autoScroll, cursor, cursorEffect } = this
    const { id, phrase, effect, answers } = this.props
    cursorEffect()

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
    // autoScroll()
  }
}
