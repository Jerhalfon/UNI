const myText = document.getElementById("myText");
const wordCount = document.getElementById("wordCount");
const totalWords = () => {
  if (!myText) return null;
  myText.addEventListener("keydown", (event) => {
    const words = myText.value.split(" ");
    console.log('hello')
    wordCount.innerText = words.length;
    const submitButton = document.getElementById("btn-position");
    console.log(wordCount.innerText)
    if (wordCount.innerText >= 100) {
      submitButton.disabled = false;
    } else {
      submitButton.disabled = true;
    }
  });
}

totalWords();

