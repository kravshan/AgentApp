import 'package:latlong2/latlong.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Map extends StatefulWidget {

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {

  final number1 = '+94772640972';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 85.h,),
          Text('Direction', style: TextStyle(fontFamily: 'Comfortaa', fontSize: 30.sp, fontWeight: FontWeight.w400),),
          SizedBox(height: 28.h,),
          SizedBox(
            width: 428.w,
            height: 600.h,
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
          SizedBox(height: 15.h,),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: FlatButton(
              onPressed: (){FlutterPhoneDirectCaller.callNumber(number1);},
              child: Text('Contact Client', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 13.sp, fontFamily: 'Roboto', color: Colors.white),),
              color: const Color.fromARGB(255, 11, 126, 193),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
            ),
          ),
          SizedBox(height: 15.h,),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: FlatButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('Back', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 13.sp, fontFamily: 'Roboto', color: Colors.white),),
              color: const Color.fromARGB(255, 160, 213, 244),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
            ),
          ),
        ],
      ),
    );
  }
}
