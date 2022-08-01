import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:warehouse_version1/helper/myTheme.dart';
import 'package:warehouse_version1/helper/store.dart';
import 'package:warehouse_version1/view/intro.dart';
import 'package:warehouse_version1/view/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  static void setTheme(BuildContext context){
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state!.setDark();
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  Rx<MyTheme> myTheme = MyTheme().obs;


  @override
  void initState() {
    Store.loadTheme().then((value) {
      MyTheme.isDarkTheme.value = !value;
    });

    super.initState();
  }

  void setDark(){
    setState(() {
      myTheme.value.myTheme;
    });
  }


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: myTheme.value.myTheme,
        theme: MyTheme.lightTheme,
        darkTheme: MyTheme.darkTheme,
        home: Login()
    );
  }
}
