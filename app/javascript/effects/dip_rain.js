// function KuberaFx(el) {
//   FolderFx.call(this, el)
// }
//
// KuberaFx.prototype = Object.create(FolderFx.prototype)
// KuberaFx.prototype.constructor = KuberaFx
//
// KuberaFx.prototype._in = function() {
//   const self = this
//
//   anime({
//     targets: this.DOM.previewElems,
//     duration: 400,
//     easing: 'linear',
//     delay: function(t, i, c) {
//       return i * 300
//     },
//     translateY: function(t, i, c) {
//       return -1 * anime.random(180, 250) + 'px'
//     },
//     translateX: function(t, i, c) {
//       return anime.random(-25, 25) + 'px'
//     },
//     rotate: function(t, i) {
//       return anime.random(-20, 20) + 'deg'
//     },
//     opacity: [
//       {
//         value: 1,
//         duration: 10
//       },
//       {
//         value: 0,
//         duration: 200,
//         delay: 200
//       }
//     ],
//     loop: true
//   })
//
//   anime({
//     targets: this.DOM.cover,
//     duration: 400,
//     easing: 'easeOutExpo',
//     rotateX: [0, -40]
//   })
// }
//
// KuberaFx.prototype._out = function() {
//   const self = this
//
//   anime({
//     targets: this.DOM.previewElems,
//     duration: 100,
//     easing: 'linear',
//     rotate: 0,
//     opacity: 0
//   })
//
//   anime({
//     targets: this.DOM.cover,
//     duration: 300,
//     easing: 'easeOutExpo',
//     rotateX: 0
//   })
// }
//
// window.KuberaFx = KuberaFx
