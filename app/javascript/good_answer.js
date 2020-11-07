window.addEventListener("load", function(){ 
    const goodAnswerButton = document.getElementsByClassName('good-answer')
    for (let i = 0; i < goodAnswerButton.length; ++i) { 
        goodAnswerButton[i].addEventListener("click", function(){
            if (goodAnswerButton[i].getAttribute("style") == "background-color:rgba(255, 115, 0, 0.432);") {
                goodAnswerButton[i].removeAttribute("style", "background-color:rgba(255, 115, 0, 0.432);")
            } else {
                goodAnswerButton[i].setAttribute("style", "background-color:rgba(255, 115, 0, 0.432);")
            }
        })
    }
})