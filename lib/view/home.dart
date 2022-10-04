import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/view/screenOne.dart';
import 'package:getx_course/view/screenFour.dart';
import 'package:getx_course/view/screenThree.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

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
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(ScreenOne());
                  },
                  child: Text("Screen One")),
            ),
            Center(
              child:
                  ElevatedButton(onPressed: () {}, child: Text("Screen Two")),
            ),
            Center(
              child:
                  ElevatedButton(onPressed: () {
                    Get.to(ScreenThree());
                  }, child: Text("Screen Three")),
            ),
            Center(
              child:
                  ElevatedButton(onPressed: () {
                    Get.to(ScreenFour());
                  }, child: Text("Screen Four")),
            ),
          ],
        ),
      ),
    );
  }
}
