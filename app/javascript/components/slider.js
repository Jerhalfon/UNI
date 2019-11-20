export const sliderValue = () => {
  const sliders = document.querySelectorAll(".price-value-slider");
  if (!sliders) return null;
  sliders.forEach((slider) => {
    slider.addEventListener("change", () => {
      const label = document.getElementById("program_price_label");
      console.log(label);
      label.innerHTML = `${label.getAttribute('name')}: ${slider.value}/100,000`;
    });
  });
}
