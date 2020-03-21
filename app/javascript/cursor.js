let mouseCursor = document.querySelector('.cursor')
let navLinks = document.querySelector('.chatAnswer')

window.addEventListener('mousemove', cursor)

function cursor(e) {
  mouseCursor.style.top = e.pageY + 'px'
  mouseCursor.style.left = e.pageX + 'px'
}

navLinks.forEach(link => {
  link.addEventListener('mouseover', () => {
    mouseCursor.classList.add('pointer')
  })
  link.addEventListener('mouseleave', () => {
    mouseCursor.classList.remove('pointer')
  })
})
