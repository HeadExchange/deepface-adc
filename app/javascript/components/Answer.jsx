import classnames from 'classnames'
import React from 'react'

export default class Answer extends React.Component {
  constructor(props) {
    super(props)
    this.handleAnswerClick = this.handleAnswerClick.bind(this)
    this.effectClick = this.effectClick.bind(this)
    this.cursorEffect = this.cursorEffect.bind(this)
  }

  handleAnswerClick(id, stepId) {
    this.props.handleAnswerClick(id)
    const { disabled } = this.props

    if (disabled != true) {
      this.props.handleAnswerClick(id, stepId)
    }
  }

  cursorEffect() {
    const cursor = document.querySelector('.cursor')

    document.addEventListener('mousemove', e => {
      cursor.setAttribute(
        'style',
        'top: ' + (e.pageY - 30) + 'px; left: ' + (e.pageX - 20) + 'px;'
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
      }, 3750)
    } else if (effect == 'dipConfetti') {
      document.querySelector('.dipConfetti').classList.remove('hidden')
      window.setTimeout(() => {
        document.querySelector('.dipConfetti').classList.add('hidden')
      }, 3750)
    } else if (effect == 'bigCursor') {
      document.querySelector('.cursor').classList.add('bigCursor')
      window.setTimeout(() => {
        document.querySelector('.cursor').classList.remove('bigCursor')
      }, 1500)
    }
  }

  render() {
    const { handleAnswerClick } = this
    const { effectClick, cursorEffect } = this
    const { id, stepId, phrase, effect, disabled } = this.props
    const classes = classnames({
      chatAnswer: true,
      disabled: disabled
    })
    cursorEffect()

    return (
      <div
        onClick={function() {
          handleAnswerClick(id, stepId)
          effectClick(effect)
        }}
        id="question"
        effect={effect}
      >
        <div className="answer">
          <div className={classes}>
            <p>{phrase}</p>
          </div>
        </div>
      </div>
    )
    // autoScroll()
  }
}
