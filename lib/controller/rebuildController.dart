import 'package:get/get.dart';

/* Get Builder */
class RebuildController extends GetxController {
  int count1 = 0;
  int count2 = 0;

  int get sum => count1 + count2;

  void incrementOne(){
    count1++;
    update();
  }
  void incrementTwo(){
    count2++;
    update();
  }
}
