let count =0;
const countDisplay= document.getElementById("counterValue");
const incrementButton= document.getElementById("increase");
const decrementButton= document.getElementById("decrease");
const increase1Button= document.getElementById("1");
const increase5Button= document.getElementById("5");
const increase10Button= document.getElementById("10");
const resetButton= document.getElementById("reset");

incrementButton.addEventListener("click", () =>{
    count++;
    countDisplay.innerText = count;
});

decrementButton.addEventListener("click", () =>{
    count--;    
    countDisplay.innerText = count;
})

increase1Button.addEventListener("click", () =>{
    count += 1;
    countDisplay.innerText = count;
});

increase5Button.addEventListener("click", () =>{
    count += 5;
    countDisplay.innerText = count;
});

increase10Button.addEventListener("click", () =>{
    count += 10;
    countDisplay.innerText = count;
});

resetButton.addEventListener("click", () =>{
    count = 0;
    countDisplay.innerText = count;
});
