import React from 'react'
import ReactDOM from 'react-dom'

import Chat from '../containers/Chat'

document.addEventListener('DOMContentLoaded', () => {
  let step
  let div
  div = document.createElement('div')
  div.setAttribute('class', 'chatBubble')

  fetch('/v1/chat/index.json')
    .then(response => {
      return response.json()
    })
    .then(myJson => {
      console.log(myJson)
      step = myJson

      ReactDOM.render(<Chat step={step} />, document.body.appendChild(div))
    })
})
