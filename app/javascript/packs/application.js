import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/ini_mapbox';

initMapbox();

import Sortable from 'sortablejs';

Sortable.create(sortableCard, {
  handle: '.card-favorite',
  animation: 150
});

