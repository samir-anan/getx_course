import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../controller/rebuildController.dart';

class ScreenFour extends StatelessWidget {
  ScreenFour({Key? key}) : super(key: key);

  final RebuildController extController = Get.put(RebuildController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Screen One"),),
        body: ListView(children: [
          Center(child: GetBuilder<RebuildController>(
              init: RebuildController(), builder: (controller) {
            print("count 1");
            return Text("${controller.count1}");
          }),),
          Center(child: GetBuilder<RebuildController>(

              builder: (controller) {
                print("count 2");
                return Text("${controller.count2}");
              }),),
          Center(child: GetBuilder<RebuildController>(builder: (controller) {
            print("Sum ");
            return Text("${controller.sum}");
          }),),

          Center(
            child: ElevatedButton(onPressed: () {
              extController.incrementOne();
            }, child: Text("Add one"),),
          ),
          Center(
            child: ElevatedButton(onPressed: () {
              extController.incrementTwo();
            }, child: Text("Add two"),),
          )
        ],));
  }
}
