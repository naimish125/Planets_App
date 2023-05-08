import 'package:get/get.dart';

import '../model/Planets_Model.dart';

class PLanetsController extends GetxController
{

  RxList<PLanetModel> PlanetList = [
    PLanetModel(
        image: "assets/images/mars.png",
        name: "Mars",
        distance: "54.6m",
        gravity: "3.711",
        distance_earth: "120.77m",
        distance_sun: "239.28m",
        price: "2.8"
    ),
    PLanetModel(
        image: "assets/images/neptune.png",
        name: "Neptune",
        distance: "2.7b",
        gravity: "11.5",
        distance_earth: "4.5658b",
        distance_sun: "4.4735b",
        price: "2.8"
    ),
    PLanetModel(
        image: "assets/images/moon.png",
        name: "Moon",
        distance: "384.4k",
        gravity: "1.62",
        distance_earth: "384,4k",
        distance_sun: "93m",
        price: "2.8"
    ),
    PLanetModel(
        image: "assets/images/earth.png",
        name: "Earth",
        distance: "149.6m",
        gravity: "9.698",
        distance_earth: "0",
        distance_sun: "147.24m",
        price: "2.8"
    ),
    PLanetModel(
        image: "assets/images/mercury.png",
        name: "Mercury",
        distance: "130.36m",
        gravity: "3.7",
        distance_earth: "147.24m",
        distance_sun: "58.957m",
        price: "2.8"
    ),
    PLanetModel(
        image: "assets/images/jupiter.png",
        name: "Jupiter",
        distance: "778.3m",
        gravity: "27.92",
        distance_earth: "799.56m",
        distance_sun: "740.7",
        price: "2.8"
    ),
    PLanetModel(
        image: "assets/images/edu_ring_a-round_the_saturn.jpg",
        name: "Saturn",
        distance: "1.6041b",
        gravity: "10.44",
        distance_earth: "1.6041b",
        distance_sun: "1.4686b",
        price: "2.8"
    ),
    PLanetModel(
        image: "assets/images/vanus.jpg",
        name: "Venus",
        distance: "229.53m",
        gravity: "8.87",
        distance_earth: "229.52m",
        distance_sun: "108.73m",
        price: "2.8"
    ),
    PLanetModel(
        image: "assets/images/urnus.jpg",
        name: "Uranus",
        distance: "2.9068b",
        gravity: "8.87",
        distance_earth: "2.9068b",
        distance_sun: "2.9411b",
        price: "2.8"
    ),
  ].obs;
  Rx<PLanetModel> h1 = PLanetModel().obs;

}