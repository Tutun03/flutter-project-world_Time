import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  Future<void> getData() async  // as before function nature asynchrous so if async keyword is used same will happen
      {
    //     try{
    //       // Make the request
    //       Response response =
    //       await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    //       if(response.statusCode==200)
    //         {
    //
    //           print(response.body);
    //         }
    //       else
    //         {
    //           print('Error: ${response.statusCode}');
    //         }
    //     }
    //     catch(e)
    // {
    //   print('Failed to fetch data: $e');
    // }
       Response response=await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
       //waiting till we receive the response.
       // print(response.body);
       // print(response.body.userId);//this is not going to work as the output previously in the console is the string representation of the objects.
      //so this is json string so we have to convert in a format so that we can use
      Map data=jsonDecode(response.body);//now it is converted into map.
    print(data);
    print(data['title']);//value retrived based on key

      }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();//parent call
    // print('initState function ran');
    getData();//entire function is asynchrous and non blocking so below code will be exceuted


  }//first this function will executed when screen loads and it will fire only once.


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}
