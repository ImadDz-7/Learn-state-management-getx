import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:learn_getx_app/main.dart';

class AuthMiddleWare extends GetMiddleware{
  @override
  int? get priority => 2;

  @override
  RouteSettings? redirect(String? route){
    if(sharepref!.getString('role') == 'user') return RouteSettings(name: '/home');
    if(sharepref!.getString('role') == 'admin') return RouteSettings(name: '/admin');
  }
}