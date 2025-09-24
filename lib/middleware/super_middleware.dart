import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SuperMiddleWare extends GetMiddleware{
  @override
  int? get priority => 1;

  bool myvar = true;

  @override
  RouteSettings? redirect(String? route){
    if(myvar == true) return RouteSettings(name: '/super');
  }
}