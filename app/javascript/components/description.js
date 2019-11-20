const myText = document.getElementById("myText");
const wordCount = document.getElementById("wordCount");
const totalWords = () => {
  if (!myText) return null;
  myText.addEventListener("keydown", (event) => {
    const words = myText.value.split(" ");
    wordCount.innerText = words.length;
  });
}

totalWords();
