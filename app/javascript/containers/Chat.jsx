import React from 'react'
import Replica from '../components/Replica'
import Answer from '../components/Answer'

export default class Chat extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    const { title, replicas, answers } = this.props.step
    let replicaElements = []
    let answerElements = []

    replicas.map((replica, i) => {
      replicaElements.push(<Replica {...replica} key={i} />)
    })

    answers.map((answer, i) => {
      answerElements.push(<Answer {...answer} key={i} />)
    })

    return (
      <div>
        {this.props.step.title}
        {replicaElements}
        {answerElements}
      </div>
    )
  }
}
