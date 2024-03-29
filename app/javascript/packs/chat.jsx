import React from 'react'
import ReactDOM from 'react-dom'

import Chat from '../containers/Chat'

document.addEventListener('DOMContentLoaded', () => {
  // const data = JSON.parse(document.getElementById('data').dataset.props)

  let step

  fetch('/v1/chat/index.json')
    .then(response => {
      return response.json()
    })
    .then(myJson => {
      console.log(myJson)
      step = myJson

      ReactDOM.render(
        <Chat step={step} />,
        document.body.appendChild(document.createElement('div'))
      )
    })
})
