import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => new _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  // int counter=0;
  // void getData ()
//   Future<void> getData() async  // as before function nature asynchrous so if async keyword is used same will happen
//   {
//     //simulate network request for a username
//     String a=await Future.delayed(Duration(seconds: 3),(){
//       // print('aniket');
//       return 'aniket';
//     });
// //simulate network request to get bio of the username
//     String b=await Future.delayed(Duration(seconds: 2),(){
//       // print('vegan ,musician & egg collector');// as entire function is async ,so without using await first something will be printed,then vegan.....and lastly aniket ,due to its non blocking nature,if we want to show first one 1stly then second one then we have to use await keyword to achieve the synchronous nature somehow.
//     return 'vegan ,musician & egg collector';
//     });
//
//     // print('something'); // this is the exactly the same nature of asynchronous in javascript ,it is non blocking in name as it asynchronous code
//      print('a is $a'+'b is $b');
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();//parent call
//      // print('initState function ran');
//     getData();//entire function is asynchrous and non blocking so below code will be exceuted
//    print('good night');
//
//   }//first this function will executed when screen loads and it will fire only once.
//

  @override
  Widget build(BuildContext context) {
    // print('build function ran');//when build the widget tree then it runs
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
         title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      // body: TextButton(onPressed: () {
      //   setState(() {
      //     // counter=counter+1;
      //   });
      // }, child: Text('counter is $counter') ),//don't need to do safearea here as appbar will be added and entire content will be shifted down due to this later on.
    );
  }
}
