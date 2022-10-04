import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_course/controller/homeController.dart';

class ScreenOne extends StatelessWidget {
  ScreenOne({Key? key}) : super(key: key);
  final HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              GetBuilder<HomeController>(
                  init: HomeController(),
                  builder: (controller) {
                    print("rebuild");
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(child: IconButton(onPressed: (){
                          controller.increment();
                        }, icon: Icon(Icons.add,size: 30,)),),
                        Center(child: Text("${controller.counter}",style: TextStyle(fontSize: 30),),),
                        Container(child: IconButton(onPressed: (){
                          controller.decrement();
                        }, icon: Icon(Icons.remove,size: 30,)),),
                      ],
                    );
                  }
              )
          ],
        ),
      ),
    );
  }
}
