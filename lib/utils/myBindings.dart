
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:getx_course/controller/homeController.dart';

class MyBindings implements Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
  }

}