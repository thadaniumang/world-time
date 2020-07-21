import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  String location;
  String time;
  String apiURL;
  bool isDay;

  WorldTime({this.location, this.apiURL});

  Future<void> getTime() async {
    try{
      Response response = await get('http://worldtimeapi.org/api/timezone/$apiURL');
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset_hour = data['utc_offset'].substring(0,3);
      String offset_min = data['utc_offset'].substring(0,1) + data['utc_offset'].substring(4);
//    print(datetime);
//    print(offset);
      DateTime now = DateTime.parse(datetime);
      now = now.add(
          Duration(
              hours: int.parse(offset_hour),
              minutes: int.parse(offset_min)
          )
      );
      isDay = (now.hour > 6 && now.hour < 18) ? true : false;
      time = DateFormat.jm().format(now);
    }
    catch(e){
      print(e);
      time ='could not get';
    }
  }
}