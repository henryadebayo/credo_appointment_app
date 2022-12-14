import 'package:credo_appointment_app/Navigation/nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'UI/schedule_page/create_schedule.dart';

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
        home: const CreateScheduleScreen(),
        onGenerateRoute: NavigationService.generateRoute,
        initialRoute: "home",
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
