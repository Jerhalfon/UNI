export const sliderValue = () => {
  const slider = document.querySelector(".price-value-slider");
  slider.addEventListener("change", () => {
    const label = document.getElementById("program_price_label");
    console.log(label);
    label.innerHTML = `${label.getAttribute('name')}: ${slider.value}/100,000`;
  });
}

