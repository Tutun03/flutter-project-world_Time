// import 'dart:convert';
// import 'package:http/http.dart';
import 'package:flutter/material.dart';

import 'package:world_time/services/world_time.dart';
class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
String time='loading';
  // Future<void> getData() async  // as before function nature asynchrous so if async keyword is used same will happen
  //     {
  //   //     try{
  //   //       // Make the request
  //   //       Response response =
  //   //       await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  //   //       if(response.statusCode==200)
  //   //         {
  //   //
  //   //           print(response.body);
  //   //         }
  //   //       else
  //   //         {
  //   //           print('Error: ${response.statusCode}');
  //   //         }
  //   //     }
  //   //     catch(e)
  //   // {
  //   //   print('Failed to fetch data: $e');
  //   // }
  //      Response response=await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  //      //waiting till we receive the response.
  //      // print(response.body);
  //      // print(response.body.userId);//this is not going to work as the output previously in the console is the string representation of the objects.
  //     //so this is json string so we have to convert in a format so that we can use
  //     Map data=jsonDecode(response.body);//now it is converted into map.
  //   print(data);
  //   print(data['title']);//value retrived based on key
  //
  //     }
  void setupWorldTime ()async
  {
    WorldTime instance1= new WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe%2FAmsterdam');
  await instance1.getData();// we have to use await keyword and Future to the function ,so that it knows when the function completes ,it moves to the next line.Future is placeholder value it wraps the void indicating it will return void only if the function completes.By declaring Future<void>, you:

    // Ensure the calling code can await the completion of getData().Future represents a value (or error) that will be available at some point in the future.
  print(instance1.time);//this will not happen as getData is async function ,so nature is non blocking ,so by default it next step is executing and we won't able to get the time ,so for that we have to use await instance.getData();
  setState(() {
    time=instance1.time;
  });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();//parent call
    // print('initState function ran');
    setupWorldTime();//entire function is asynchronous and non blocking so below code will be exceuted normal as a non blocking nature ,so loading will be executed ,then when set state is used then again build runs and time is showing the screen.


  }//first this function will executed when screen loads and it will fire only once.


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Padding(padding: EdgeInsets.all(50.0),
       child: Text(time),
       
     )
    );
  }
}
// when app starts initState will execute first then setupWorldTime() is called and wen the getData is being executed ,then build method in ui thread will execute