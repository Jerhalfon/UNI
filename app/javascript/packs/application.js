import "bootstrap";
import Sortable from 'sortablejs';
import {sliderValue} from "../components/slider";
import {chart from} "../components/personality_stat";

sliderValue();
chart.render();

const sortableCard = document.getElementById("sortableCard");
if (sortableCard) {
  Sortable.create(sortableCard, {
    handle: '.card-favorite',
    animation: 150
  });
}



