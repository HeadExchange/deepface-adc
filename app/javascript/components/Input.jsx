import React from 'react'

export default class Input extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    return <input className="chatAnswer" placeholder="Сюда почту..." />
  }
}
