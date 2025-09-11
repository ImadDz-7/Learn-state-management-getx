import 'package:get/get.dart';

class RebuildController extends GetxController {
  RxInt count1 = 0.obs;
  RxInt count2 = 0.obs;

  void incrementOne() {
    count1++;
  }

  void incrementTwo() {
    count2++;
  }

  int result() {
    return count1.value + count2.value;
  }
}
