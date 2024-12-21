import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{
  String location ;//initialize it firstly.//location property that we show on the user interface what the user will see later
    String time=''; //time in that location
  String flag;//url to an asset flag icon;
   String url;//this is the location url for api end point;
  WorldTime({required this.location,required this.flag,required this.url});

 Future <void> getData() async  // as before function nature asynchrous so if async keyword is used same will happen
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
   try {
     Response response = await get(
         Uri.parse('https://timeapi.io/api/time/current/zone?timeZone=$url'));
     //waiting till we receive the response.
     // print(response.body);
     // print(response.body.userId);//this is not going to work as the output previously in the console is the string representation of the objects.
     //so this is json string so we have to convert in a format so that we can use
     //now it is converted into map.
     Map data = jsonDecode(response.body);
     time = data['dateTime'].toString();
     // print(data['title']);//value retrived based on key
     //get properties from data
     // String datetime=data['datetime'];
     // String offset=data['utc_offset'].substring(1,3);
     // //print (datetime);
     // //print(offset);
     //
     // //create DateTime object
     // DateTime now=DateTime.parse(datetime);
     // now=now.add(Duration(hours: int.parse(offset)));
     // time=now.toString();//set the time property
   }
   catch(e)
   {
     print('caught error: $e');
     time="could not get data";
   }
   //we use try catch to handle the error ,suppose we use wrong link ,then instead of giving our task tougher ,it will handle the error by using catch block.

  }

}

