import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  Map data={};
  @override
  Widget build(BuildContext context) {
    data = data.isEmpty?ModalRoute.of(context)!.settings.arguments as Map:data;// Using setState would signal a rebuild, but since the rebuild is already happening due to navigation, it’s redundant
    print(data);
    //set background
    String bgImage=data['isDaytime']?'day.png':'night.png';
    Color? bgColor=data['isDaytime']?Colors.blue: Colors.indigo[700];
    return Scaffold(
      backgroundColor: bgColor,
      body:SafeArea(child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/$bgImage'),
          fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(

            children: [
              TextButton.icon(onPressed: () async {
                dynamic result=await Navigator.pushNamed(context, '/location');//jete hobe select korte hobe ,a big asynchrounous task.
                setState(() {
                  data={
                    'time':result['time'],
                    'location':result['location'],
                    'isDaytime':result['isDaytime'],
                    'flag':result['flag']
                  };//we are overriding the data ,when problem arises as it trigger the build function to run again ,then control will go to up ,and data and arguments wala statement will execute and default value is fetched,to avoid that we have to use ternary operator there.
                });
              }, label: Text('Edit location',style: TextStyle(color: Colors.grey[300]),),
              icon: Icon(Icons.edit_location,color: Colors.grey[300])),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
                   data['location'],
                   style: TextStyle(
                     fontSize: 28.0,
                     letterSpacing: 2.0,
                     color: Colors.white
                   ),
                 ),

                ],
              ),
              Text(data['time'],
              style: TextStyle(
                fontSize: 66.0,
                color: Colors.white
              ),)
            ],
          ),
        ),
      ))
    );
  }
}

//pushing and poping of routes should be done in efficient manner.
