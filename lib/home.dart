import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/controller/homeController.dart';

class HomeGetBuilder extends StatelessWidget {
  HomeGetBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      drawer: Drawer(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(
              init: HomeController(),
              builder: (controller) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: IconButton(
                        onPressed: () {
                          controller.increment();
                        },
                        icon: Icon(
                          Icons.add,
                          size: 30,
                        )),
                  ),
                  Text(
                    "${controller.counter}",
                    style: TextStyle(fontSize: 30, color: Colors.red),
                  ),
                  Center(
                    child: IconButton(
                        onPressed: () {
                          controller.decrement();
                        },
                        icon: Icon(
                          Icons.remove,
                          size: 30,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class HomeGetX extends StatelessWidget {
  HomeGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      drawer: Drawer(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<HomeController>(  // changes Hete
              init: HomeController(),
              builder: (controller) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: IconButton(
                        onPressed: () {
                          controller.increment();
                        },
                        icon: Icon(
                          Icons.add,
                          size: 30,
                        )),
                  ),
                  Text(
                    "${controller.counter.value}", // changes Hete
                    style: TextStyle(fontSize: 30, color: Colors.red),
                  ),
                  Center(
                    child: IconButton(
                        onPressed: () {
                          controller.decrement();
                        },
                        icon: Icon(
                          Icons.remove,
                          size: 30,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomeOBX extends StatelessWidget {
  HomeOBX({Key? key}) : super(key: key);
  final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      drawer: Drawer(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: IconButton(
                        onPressed: () {
                          controller.increment();
                        },
                        icon: Icon(
                          Icons.add,
                          size: 30,
                        )),
                  ),
                  Text(
                    "${controller.counter.value}", // changes Hete
                    style: TextStyle(fontSize: 30, color: Colors.red),
                  ),
                  Center(
                    child: IconButton(
                        onPressed: () {
                          controller.decrement();
                        },
                        icon: Icon(
                          Icons.remove,
                          size: 30,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      drawer: Drawer(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      icon: Icon(
                        Icons.add,
                        size: 30,
                      )),
                ),
                Text(
                  "$counter",
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Center(
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          counter--;
                        });
                      },
                      icon: Icon(
                        Icons.remove,
                        size: 30,
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
