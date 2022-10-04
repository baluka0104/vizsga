//       Like Button   

    var btnvar1 = document.getElementsByClassName("btn");

    function Toggle(){
            if (btnvar1.style.color == "#ff0000") 
            {
                btnvar1.style.color = "grey";
            }
            else{
                btnvar1.style.color = "red";
            }
    }