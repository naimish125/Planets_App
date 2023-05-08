import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/Planets_Controller.dart';

class PLanetsScreens extends StatefulWidget {
  const PLanetsScreens({Key? key}) : super(key: key);

  @override
  State<PLanetsScreens> createState() => _PLanetsScreensState();
}

class _PLanetsScreensState extends State<PLanetsScreens> with TickerProviderStateMixin {
  PLanetsController homeController = Get.put(PLanetsController());
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController =
    AnimationController(vsync: this, duration: Duration(seconds: 10))
      ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff282559),
        body: Column(
          children: [
            Container(
              height: 55,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.blue.shade200,
                  ],
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  Spacer(),
                  Text(
                    "Planets",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: homeController.PlanetList.length,
                itemBuilder: (context, index) {
                  return Obx(
                        () => Container(
                      height: 240,
                      child: Stack(
                        children: [
                          Padding(
                            padding:
                            EdgeInsets.only(left: 50, top: 2, right: 30),
                            child: Container(
                              height: 180,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Color(0xff434279),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black38,
                                      blurRadius: 15,
                                      offset: Offset(0, 0))
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.more_vert_outlined,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      homeController.h1.value =
                                      homeController.PlanetList[index];
                                    },
                                    child: Container(
                                      height: 180,
                                      width: 600,
                                      margin: EdgeInsets.only(left: 6),
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 80, top: 40),
                                              child: Text(
                                                "${homeController.PlanetList[index].name}",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 28,
                                                    fontWeight:
                                                    FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding:
                                              EdgeInsets.only(left: 80),
                                              child: Text(
                                                "Milkyway Glaxey",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 3,
                                            width: 50,margin: EdgeInsets.only(right: 80),
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius:
                                              BorderRadius.circular(15),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 80),
                                            child: Row(
                                              children: [
                                                Container(
                                                    height: 17,
                                                    width: 17,
                                                    child: Image.asset(
                                                        "assets/images/ic_distance.png")),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                Text(
                                                  "${homeController.PlanetList[index].distance} km",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 15),
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                Container(
                                                    height: 17,
                                                    width: 17,
                                                    child: Image.asset(
                                                        "assets/images/ic_gravity.png")),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                Text(
                                                  "${homeController.PlanetList[index].gravity} m/s²",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 15),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30, left: 10),
                            child: AnimatedBuilder(
                              animation: animationController!,
                              child: Container(
                                height: 110,
                                width: 110,
                                child: Image.asset(
                                    "${homeController.PlanetList[index].image}"),
                              ),
                              builder: (context, child) {
                                return Transform.rotate(
                                  angle: animationController!.value * 2 * pi,
                                  child: child,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}