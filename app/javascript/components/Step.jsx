import React from 'react'
import Replica from '../components/Replica'
import Answer from '../components/Answer'

export default class Step extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    const { title, replicas, answers, handleAnswerClick } = this.props
    let replicaElements = []
    let answerElements = []

    replicas.map((replica, i) => {
      replicaElements.push(<Replica {...replica} key={i} />)
    })

    answers.map((answer, i) => {
      answerElements.push(
        <Answer {...answer} handleAnswerClick={handleAnswerClick} key={i} />
      )
    })

    return (
      <div>
        {title}
        {replicaElements}
        {answerElements}
      </div>
    )
  }
}
