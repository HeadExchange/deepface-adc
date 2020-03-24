import React from 'react'
import Replica from '../components/Replica'
import Answer from '../components/Answer'
<<<<<<< HEAD
import DipRain from '../components/DipRain'
import DipConfetti from '../components/DipConfetti'
=======
import Input from '../components/Input'
>>>>>>> d0ddc888425a7117f2f706566abc125b76a755d4

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
    }, 1350)
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
          answerElements.push(<Input/>)
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
        <DipRain />
        <DipConfetti />
      </div>
    )
  }
}
