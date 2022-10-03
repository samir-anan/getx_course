
import 'package:get/get.dart';
/* Get Builder
class HomeController extends GetxController{
  int counter = 0;

  void increment(){
    counter++;
    update();
  }

  void decrement(){
    counter--;
    update();
  }

}
*/

// GetX
class HomeController extends GetxController{
  RxInt counter = 0.obs;

  void increment(){
    counter++;
  }

  void decrement(){
    counter--;
  }

}