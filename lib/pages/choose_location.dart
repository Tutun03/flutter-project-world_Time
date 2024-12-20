import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => new _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
         title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('choose location screen'),//don't need to do safearea here as appbar will be added and entire content will be shifted down due to this later on.
    );
  }
}
