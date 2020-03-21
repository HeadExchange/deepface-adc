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
        </div>
        <div className="dipRain hidden">
          <div className="y">
            <div className="dipWhite">
              <div className="x"></div>
            </div>
          </div>
          <div className="y">
            <div className="dipGreen">
              <div className="x"></div>
            </div>
          </div>
          <div className="y">
            <div className="dipBlack">
              <div className="x"></div>
            </div>
          </div>
          <div className="y">
            <div className="dipWhite dipWhiteSecond">
              <div className="x"></div>
            </div>
          </div>
          <div className="y">
            <div className="dipGreen dipGreenSecond">
              <div className="x"></div>
            </div>
          </div>
          <div className="y">
            <div className="dipBlack dipBlackSecond">
              <div className="x"></div>
            </div>
          </div>
          <div className="y">
            <div className="dipWhite dipWhiteThird">
              <div className="x"></div>
            </div>
          </div>
          <div className="y">
            <div className="dipGreen dipGreenThird">
              <div className="x"></div>
            </div>
          </div>
          <div className="y">
            <div className="dipBlack dipBlackThird">
              <div className="x"></div>
            </div>
          </div>
        </div>
      </div>
    )
  }
}
