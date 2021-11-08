import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_app/pages/login.dart';
import 'package:insurance_app/pages/login_scrn.dart';
import 'package:insurance_app/pages/create_account_1.dart';
import 'package:insurance_app/pages/create_account_2.dart';
import 'package:insurance_app/pages/accept_2.dart';
import 'package:insurance_app/pages/accept_3.dart';
import 'package:insurance_app/pages/notification_1.dart';
import 'package:insurance_app/pages/welcome.dart';
import 'package:insurance_app/pages/review.dart';
import 'package:insurance_app/pages/contact.dart';
import 'package:insurance_app/pages/notification_2.dart';
import 'package:insurance_app/pages/map.dart';
import 'package:insurance_app/pages/notification_3.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: const Size(428, 926),
    builder: () => MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/login_scrn': (context) => LoginScrn(),
        '/create_account_1': (context) => CreateAccount1(),
        '/create_account_2': (context) => CreateAccount2(),
        '/accept_2': (context) => Accept2(),
        '/accept_3': (context) => Accept3(),
        '/notification_1': (context) => Notification_1(),
        '/welcome': (context) => Welcome_screen(),
        '/review': (context) => Review(),
        '/contact': (context) => Contact(),
        '/notification_2': (context) => Notification_2(),
        '/map': (context) => Map(),
        '/notification_3': (context) => Notification_3()
      },
    ),
  )
  );
}
