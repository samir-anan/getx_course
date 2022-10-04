import 'package:get/get.dart';

/* Get Builder */
class RebuildGetXController extends GetxController {
  RxInt count1 = 0.obs;
  RxInt count2 = 0.obs;

  int get sum => count1.value + count2.value;

  void incrementOne(){
    count1++;
  }
  void incrementTwo(){
    count2++;
  }
}
