import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_app/services/topic_and_button.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:insurance_app/services/profile.dart';

class Notification_3 extends StatefulWidget {
  const Notification_3({Key? key}) : super(key: key);

  @override
  _Notification_3State createState() => _Notification_3State();
}

class _Notification_3State extends State<Notification_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 85.h,),
          TopicAndButton(text: 'Notification'),
          SizedBox(height: 50.h,),
          SizedBox(
            height: 269,
            width: 400.w,
              child: FlutterMap(
                options: MapOptions(
                  center: LatLng(6.87, 79.94),
                  zoom: 13.0,
                ),
                layers: [
                  TileLayerOptions(
                      urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                      subdomains: ['a', 'b', 'c']
                  ),
                ],
              ),
          ),
          SizedBox(height: 42.h,),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/accept_2');
              },
              child: Text('ACCEPT',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 13.sp,
                fontWeight: FontWeight.w900,
                color: Colors.white
              ),),
              color: Color.fromARGB(255, 73, 213, 79),
              elevation: 5.h,
            )
          ),
          SizedBox(height: 34.h,),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: FlatButton(
              onPressed: (){
                Navigator.pushNamed(context, '/map');
              },
              child: Text('DIRECTION',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w900,
                    color: Colors.white
                ),),
              color: Color.fromARGB(255, 11, 126, 193),
            ),
          ),
          SizedBox(height: 34.h,),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: FlatButton(
              onPressed: (){},
              child: Text('CONTACT CLIENT',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w900,
                    color: Colors.white
                ),),
              color: Color.fromARGB(255, 160, 213, 244),
            ),
          ),
          SizedBox(height: 34.h,),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: FlatButton(
              onPressed: (){},
              child: Text('DECLINE',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w900,
                    color: Colors.white
                ),),
              color: Color.fromARGB(255, 224, 20, 20),
            ),
          ),
          SizedBox(height: 30.h,),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: Profile(
              text: 'CONTACT REGIONAL OFFICE',
              press: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
          ),
        ],
      ),
    );
  }
}
