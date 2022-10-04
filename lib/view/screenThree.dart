import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_course/controller/rebuildGetXController.dart';

import '../controller/rebuildController.dart';

class ScreenThree extends StatelessWidget {
  ScreenThree({Key? key}) : super(key: key);

  final RebuildGetXController extController = Get.put(RebuildGetXController(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Screen One"),),
        body: ListView(children: [
          Center(child: GetX<RebuildGetXController>(
              init: RebuildGetXController(), builder: (controller) {
            print("count 1");
            return Text("${controller.count1.value}");
          }),),
          Center(child: GetX<RebuildGetXController>(
              builder: (controller) {
                print("count 2");
                return Text("${controller.count2.value}");
              }),),
          Center(child: GetX<RebuildGetXController>(builder: (controller) {
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
