import React from 'react'
import Step from '../components/Step'
import DipRain from '../components/DipRain'
import DipConfetti from '../components/DipConfetti'

export default class Chat extends React.Component {
  constructor(props) {
    super(props)

    this.state = {
      steps: [props.step]
    }

    this.handleAnswerClick = this.handleAnswerClick.bind(this)
  }

  handleAnswerClick(id, stepId) {
    const data = { id: id }
    let steps = []

    this.state.steps.map(step => {
      if (step.id == stepId) {
        let answers = []
        step.answers.map(answer => {
          if (answer.id == id) {
            answer.disabled = true
          } else {
            answer.display = false
          }
          answers.push(answer)
        })
        step.answers = answers
        steps.push(step)
      } else {
        steps.push(step)
      }
    })

    fetch('/v1/chat/answer', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(data)
    })
      .then(response => response.json())
      .then(data => {
        console.log('Success:', data)
        steps.push(data)
        this.setState({ steps: steps })
      })
      .catch(error => {
        console.error('Error:', error)
      })
  }

  // handleGetStickersClick(id) {
  //   fetch('/v1/chat/answer', {
  //     method: 'POST',
  //     headers: {
  //       'Content-Type': 'application/json'
  //     },
  //     body: JSON.stringify(data)
  //   })
  //     .then(response => response.json())
  //     .then(data => {
  //       console.log('Success:', data)
  //       steps.push(data)
  //       this.setState({ steps: steps })
  //     })
  //     .catch(error => {
  //       console.error('Error:', error)
  //     })
  // }

  render() {
    let steps = []

    this.state.steps.map((step, i) => {
      steps.push(
        <Step {...step} handleAnswerClick={this.handleAnswerClick} key={i} />
      )
    })

    return (
      <div>
        <div className="background">
          <div className="shadow"></div>
          <div className="share"></div>
          <section className="timeline">
            <div className="timelineBar">
              <div className="dip"></div>
            </div>
            <div className="timelineText">
              <p>( to the end of the chat )</p>
              <p>🖤 Don't give up, stickers want to be yours, bro 🖤 </p>
            </div>
          </section>

          <section className="chat">
            <div>{steps}</div>
          </section>
          <DipRain />
          <DipConfetti />
        </div>
      </div>
    )
  }
}
