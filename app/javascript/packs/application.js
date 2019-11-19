import "bootstrap";
import Sortable from 'sortablejs';
// import {sliderValue} from "../components/slider";
import {personalityStat1} from "../components/personality_stat";
import {personalityStat2} from "../components/personality_stat";
import {personalityStat3} from "../components/personality_stat";
import {personalityStat4} from "../components/personality_stat";
import {personalityStat5} from "../components/personality_stat";


// sliderValue();
personalityStat1();
personalityStat2();
personalityStat3();
personalityStat4();
personalityStat5();
const sortableCard = document.getElementById("sortableCard");
if (sortableCard) {
  Sortable.create(sortableCard, {
    handle: '.card-favorite',
    animation: 150
  });
}



