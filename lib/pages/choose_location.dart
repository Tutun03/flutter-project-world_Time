import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => new _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();//parent call
     print('initState function ran');
  }//first this function will executed when screen loads and it will fire only once.


  @override
  Widget build(BuildContext context) {
    print('build function ran');//when build the widget tree then it runs
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
         title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: TextButton(onPressed: () {
        setState(() {
          counter=counter+1;
        });
      }, child: Text('counter is $counter') ),//don't need to do safearea here as appbar will be added and entire content will be shifted down due to this later on.
    );
  }
}
