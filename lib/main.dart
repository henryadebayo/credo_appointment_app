import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'UI/order_page/requestScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (child, context) => MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        // home: const HomeScreen(),
        home: const RequestsScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
