import React from 'react'
import Replica from '../components/Replica'
import Answer from '../components/Answer'

export default class Step extends React.Component {
  constructor(props) {
    super(props)
  }

  componentDidUpdate(prevProps) {
    let elements = document.getElementsByClassName('chatAnswer')
    // elements[elements.length - 1].scrollBy(0, 3000)
    // window.scrollBy(0, window.innerHeight)
    elements[elements.length - 1].scrollIntoView({
      behavior: 'smooth'
    })
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
    answerElements.forEach(autoScroll => {
      document.querySelector('body').scrollIntoView({
        behavior: 'smooth'
      })
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
