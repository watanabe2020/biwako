// リストのJS
function pullDown() {

  const pullDownButton = document.getElementById("lists")
  const pullDownParents = document.getElementById("pull-down")

  pullDownButton.addEventListener('mouseover', function(){
    this.setAttribute("style", "color:#0497ff;")
  })

  pullDownButton.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:#81e0ff;")
  })

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      pullDownParents.setAttribute("style", "display:block;")
    }
  })
}

window.addEventListener('load', pullDown)