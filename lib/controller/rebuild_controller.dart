import 'package:get/get.dart';

class RebuildController extends GetxController{
  int count1 = 0;
  int count2 = 0;

  void incrementOne(){
    count1++;
    update();
  }

  void incrementTwo(){
    count2++;
    update();
  }

  int result(){
    return count1 + count2;
  }
}