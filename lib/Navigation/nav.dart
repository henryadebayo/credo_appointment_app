import 'package:flutter/material.dart';

import '../UI/Transaction_page/cred_transaction_screen.dart';
import '../UI/employee_page/cred_add_employee_screen.dart';
import '../UI/employee_page/cred_employee_detail_screen.dart';
import '../UI/home_Page/cred_home_screen.dart';
import '../UI/order_page/cred_check_out_screen.dart';
import '../UI/order_page/requestScreen.dart';
import '../UI/schedule_page/create_schedule.dart';
import '../UI/schedule_page/schedule_screen.dart';

class NavigationService {
  static Route<dynamic?>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "home":
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case "EmployeeEditScreen":
        return MaterialPageRoute(builder: (_) => const EmployeeEditScreen());
      case "EmployeeDetailScreen":
        return MaterialPageRoute(builder: (_) => const EmployeeDetailScreen());
      case "CheckoutScreen":
        return MaterialPageRoute(builder: (_) => const CheckoutScreen());
      case "RequestsScreen":
        return MaterialPageRoute(builder: (_) => const CredRequestsScreen());
      case "CredRequestsScreen":
        return MaterialPageRoute(builder: (_) => const CredRequestsScreen());
      case "CreateScheduleScreen":
        return MaterialPageRoute(builder: (_) => const CreateScheduleScreen());
      case "ScheduleScreen":
        return MaterialPageRoute(builder: (_) => const ScheduleScreen());
      case "TransactionScreen":
        return MaterialPageRoute(builder: (_) => const TransactionScreen());
    }
    return null;
  }
}
