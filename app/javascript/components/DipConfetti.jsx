import React from 'react'

export default class DipConfetti extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    return (
      <div className="dipConfetti hidden">
        <div className="y">
          <div className="dipSmall">
            <div className="x"></div>
          </div>
        </div>
        <div className="y">
          <div className="dipMedium">
            <div className="x"></div>
          </div>
        </div>
        <div className="y">
          <div className="dipLarge">
            <div className="x"></div>
          </div>
        </div>
        <div className="y">
          <div className="dipSmall dipSmallSecond">
            <div className="x"></div>
          </div>
        </div>
        <div className="y">
          <div className="dipMedium dipMediumSecond">
            <div className="x"></div>
          </div>
        </div>
        <div className="y">
          <div className="dipLarge dipLargeSecond">
            <div className="x"></div>
          </div>
        </div>
        <div className="y">
          <div className="dipSmall dipSmallThird">
            <div className="x"></div>
          </div>
        </div>
        <div className="y">
          <div className="dipMedium dipMediumThird">
            <div className="x"></div>
          </div>
        </div>
        <div className="y">
          <div className="dipLarge dipLargeThird">
            <div className="x"></div>
          </div>
        </div>
      </div>
    )
  }
}
