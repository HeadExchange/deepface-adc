import React from 'react'

export default class DipRain extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    return (
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
    )
  }
}
