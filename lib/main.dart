import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';
void main() {
  runApp(MaterialApp(
    // home: new Home(),
    // initialRoute: '/home',
    initialRoute: '/',
      routes:{
      '/':(context)=>Loading(), //context is used in the function ,as context knows the actual position of widgets in the widget tre and helps to interact the widge with it's parent (theme,Navigator,Scaffold) and uses to navigate between routes,it access the nearby widgets which are higher up in the tree.For navigating between screens, context is used to find the Navigator in the widget tree.Navigating back or forward between routes in the app.For Example:
      '/home':(context)=>Home(),
      '/location':(context)=>ChooseLocation()
      //For navigating between screens, context is used to find the Navigator in the widget tree.
  // In the case of MaterialApp:
  //
  // When you use BuildContext inside a widget, it helps the widget find and use properties provided by MaterialApp or other parent widgets (like Theme, Navigator, MediaQuery, etc.).
    }
  ));
}

