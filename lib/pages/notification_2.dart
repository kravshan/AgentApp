import 'package:flutter/material.dart';
import 'package:insurance_app/services/topic_and_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_app/services/profile.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Notification_2 extends StatefulWidget {

  @override
  _Notification_2State createState() => _Notification_2State();
}

class _Notification_2State extends State<Notification_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 85.h),
          TopicAndButton(text: 'Notification'),
          SizedBox(height: 13.h),
          Container(
            height: 334.h,
            width: 349.w,
            child: RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/notification_3');
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Notification Details',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 11.sp,
                    fontFamily: 'Roboto'
                  ),),
                  Text('Client Details',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                        fontFamily: 'Roboto'
                    ),),
                  Text('Client - XXXX',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                        fontFamily: 'Roboto'
                    ),),
                  Text('Vehicle Number - XXXX',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                        fontFamily: 'Roboto'
                    ),),
                  Text('Policy Number - XXXX',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                        fontFamily: 'Roboto'
                    ),),
                  SizedBox(
                    height: 250.h,
                    width: 290.w,
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
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 25.h,),
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
          SizedBox(height: 23.h,),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: FlatButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('BACK',
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Roboto',
                    color: Colors.white
                ),),
              color: const Color.fromARGB(255, 160, 213, 244),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
            ),
          ),
        ],
      ),
    );
  }
}
