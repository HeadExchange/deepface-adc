import React from 'react'
import Replica from '../components/Replica'
import Answer from '../components/Answer'
import Input from '../components/Input'

export default class Step extends React.Component {
  constructor(props) {
    super(props)
  }

  componentDidUpdate(prevProps) {
    let elements = document.getElementsByClassName('chatAnswer')
    window.setTimeout(() => {
      elements[elements.length - 1].scrollIntoView({
        behavior: 'smooth'
      })
    }, 1500)
  }

  render() {
    const { title, replicas, answers, handleAnswerClick } = this.props
    let replicaElements = []
    let answerElements = []

    replicas.map((replica, i) => {
      replicaElements.push(<Replica {...replica} key={i} />)
    })

    answers.map((answer, i) => {
      if (answer.display == true) {
        if (answer.phrase == 'input') {
          answerElements.push(<Input key={i} />)
        } else {
          answerElements.push(
            <Answer {...answer} handleAnswerClick={handleAnswerClick} key={i} />
          )
        }
      }
    })

    return (
      <div>
        <div className="replicaBlock">
          <div className="userDip"></div>
          <div className="replicaElements">{replicaElements}</div>
        </div>
        <div className="answerBlock">
          <div className="answerElements">{answerElements}</div>
          <div className="userDip"></div>
        </div>
      </div>
    )
  }
}
