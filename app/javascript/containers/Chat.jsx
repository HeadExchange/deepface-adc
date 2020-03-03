import React from 'react'
import Step from '../components/Step'

export default class Chat extends React.Component {
  constructor(props) {
    super(props)

    this.state = {
      steps: [props.step]
    }

    this.handleAnswerClick = this.handleAnswerClick.bind(this)
  }

  handleAnswerClick(id) {
    const data = { id: id }
    let steps = this.state.steps

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

  render() {
    let steps = []

    this.state.steps.map((step, i) => {
      steps.push(
        <Step {...step} handleAnswerClick={this.handleAnswerClick} key={i} />
      )
    })

    return <div>{steps}</div>
  }
}
