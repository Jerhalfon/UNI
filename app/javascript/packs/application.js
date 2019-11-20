import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/ini_mapbox';
import Sortable from 'sortablejs';
import {sliderValue} from "../components/slider";
import "../components/personality_stat";
console.log(sliderValue)
initMapbox();
sliderValue();


const sortableCard = document.getElementById("sortableCard");
if (sortableCard) {
  Sortable.create(sortableCard, {
    handle: '.card-favorite',
    animation: 150
  });
}

smoothScroll.init();

