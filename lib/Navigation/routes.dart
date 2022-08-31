import 'package:flutter/material.dart'
    show BuildContext, Widget, MaterialPageRoute, Route, RouteSettings;

import '../UI/schedule_page/create_schedule.dart';
import '../UI/schedule_page/schedule_screen.dart';

class VeloxRoutes {
//  static Widget home = SplashScreen();

  /// Splash Routes
  static const splash = "/splash";

  /// Onboard Routes
  static const onboarding = "/onboarding";

  /// Dashboard
  static const dashboard = "/dashboard";

  /// Auth
  static const login = "/login";
  static const signUp = "/signUp";
  static const otpVerify = "/signup/otp";
  static const signupName = "/signup/name";
  static const signupImage = "/signup/image";
  static const signupPin = "/signup/pin";
  static const signupPassword = "/signup/Password";
  static const signupProfileError = "/signup/profile/error";

  // password recovery
  static const passwordRecovery = "/password/recovery";
  static const passwordRecoveryOtp = "/password/recovery/otp";
  static const passwordRecoverySuccess = "/password/recovery/success";
  static const passwordRecoveryReset = "/password/recovery/reset";
  static const passwordReset = "/password/reset";

  /// festivesave
  static const festiveContact = "/festivesave/contact";

  /// WEBVIEW
  static const web = "/inapp/web";

// Notepad
  static const editNote = "/notepad/edit";
  // Restaurant
  static const menu = "/restaurant/menu";
  static const editMenu = "/restaurant/editMenu";
  static const newMenu = "/restaurant/newMenu";
  static const orders = "/restaurant/orders";
  static const orderDetail = "/restaurant/orderDetail";
  static const reports = "/restaurant/reports";
  static const transactions = "/restaurant/transactions";
  static const employee = "/restaurant/employee";
  static const employeeDetails = "/restaurant/employeeDetails";
  static const employeeEdit = "/restaurant/employeeEdit";

  // Payroll
  static const payrollHome = "/payroll/home";
  static const payrollSetup = "/payroll/setup";
  static const payrollbankSetup = "/payroll/bankSetup";
  static const payrollnewTeamMember = "/payroll/newTeamMember";
  static const payrolladdBankDetails = "/payroll/addBankDetails";

  // Appointment Routes
  static const appointmentRequest = "/appointment/requests";
  static const appointmentSchedule = "/appointment/schedule";
  static const appointmentNewSchedule = "/appointment/newSchedule";
  static const appointmentCheckout = "/appointment/checkout";

  static Map<String, Widget Function(BuildContext)> staticRoutes = {
    // splash: (BuildContext context) => const SplashScreen(),
    // onboarding: (BuildContext context) => OnBoardScreen(),
    // dashboard: (BuildContext context) => Home(),
    // login: (BuildContext context) => LoginPage(),
    // signUp: (BuildContext context) => Number(),
    // passwordReset: (BuildContext context) => const PasswordResetPage(),
    // passwordRecovery: (BuildContext context) => const PasswordRecoveryPage(),
    // otpVerify: (BuildContext context) => Otp(),
    // signupName: (BuildContext context) => const Name(),
    // signupPassword: (BuildContext context) => const Password(),
    // signupImage: (BuildContext context) => const ProfilePicture(),
    // signupPin: (BuildContext context) => const AppPin(),
    // editNote: (BuildContext context) => const EditNoteScreen(),
    // menu: (BuildContext context) => const RestaurantMenuScreen(),
    // editMenu: (BuildContext context) => const RestaurantEditMenuScreen(),
    // newMenu: (BuildContext context) => const CreateNewMenuScreen(),
    // orders: (BuildContext context) => const RestaurantOrderScreen(),
    // orderDetail: (BuildContext context) => const RestaurantOrderDetailScreen(),
    // reports: (BuildContext context) => const RestaurantReportScreen(),
    // transactions: (BuildContext context) => const RestaurantTransactionScreen(),
    // employee: (BuildContext context) => const RestaurantEmployeeScreen(),
    // payrollHome: (BuildContext context) => const PayrollHomeScreen(),
    // payrollSetup: (BuildContext context) => const PayTeamSetupScreen(),
    // payrollbankSetup: (BuildContext context) => const BankAccountSetup(),
    // payrolladdBankDetails: (BuildContext context) =>
    // const AddBankAccountDetailScreen(),
    // payrollnewTeamMember: (BuildContext context) =>
    // const PayrollNewTeamMember(),
    // appointmentRequest: (BuildContext context) =>
    // const AppointmentRequestsScreen(),
    appointmentSchedule: (BuildContext context) => const ScheduleScreen(),
    appointmentNewSchedule: (BuildContext context) =>
        const CreateScheduleScreen(),
    //appointmentCheckout: (BuildContext context) => const CheckoutScreen(),
  };

  // static Route<dynamic> dynamicRoutes(RouteSettings settings) {
  //   switch (settings.name) {
  //     case employeeDetails:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) {
  //           final employeeInfo = settings.arguments as RestaurantEmployee;
  //           return RestaurantEmployeeDetailScreen(
  //             employeeInfo: employeeInfo,
  //           );
  //         },
  //       );
  //     case employeeEdit:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) {
  //           final employeeInfo = settings.arguments as RestaurantEmployee?;
  //           return RestaurantEmployeeEditScreen(
  //             employeeInfo: employeeInfo,
  //           );
  //         },
  //       );
  //     case profileBvn:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) {
  //           return ProfileBvnEntryPage(settings.arguments);
  //         },
  //       );
  //     case profileInfo:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) {
  //           return ProfileInfoEntryPage(settings.arguments);
  //         },
  //       );

  //     case web:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) => VeloxWebView(
  //           argument: settings.arguments,
  //         ),
  //       );

  //     case profileContact:
  //       // log("ohk -- ${settings.arguments}");
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) {
  //           return ProfileContactEntryPage(settings.arguments);
  //         },
  //       );
  //     case loanOtp:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) {
  //           return LoanOtpPage(settings.arguments);
  //         },
  //       );

  //     case profileOtpPage:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) {
  //           return ProfileOtpPage(settings.arguments);
  //         },
  //       );
  //     case profileNextOfKin:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) {
  //           return ProfileNokEntryPage(settings.arguments);
  //         },
  //       );
  //     case profileSetupSuccess:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) {
  //           return ProfileSetupSuccessPage(arguments: settings.arguments);
  //         },
  //       );
  //     case loanDetails:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) {
  //           return LoanDetailsPage(arguments: settings.arguments);
  //         },
  //       );
  //     case profileVerificationOptions:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) {
  //           return ProfileVerificationOptionsPage(settings.arguments);
  //         },
  //       );
  //     case profileWorkStatus:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) {
  //           return ProfileWorkStatusPage(settings.arguments);
  //         },
  //       );

  //     case loanRepay:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) {
  //           return LoanRepayPage(settings.arguments);
  //         },
  //       );
  //     case otpVerify:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) {
  //           return SignupOtpPage(settings.arguments);
  //         },
  //       );

  //     case bvnVerify:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) {
  //           return BvnOtpPage(settings.arguments);
  //         },
  //       );

  // case signupPassword:
  //   return MaterialPageRoute(
  //     settings: settings,
  //     builder: (context) {
  //       return SignupPasswordSetupPage(settings.arguments);
  //     },
  //   );
  // case signupProfileSetup:
  //   return MaterialPageRoute(
  //     settings: settings,
  //     builder: (context) {
  //       return SignupProfilePage(settings.arguments);
  //     },
  //   );
  // case passwordRecoverySuccess:
  //   return MaterialPageRoute(
  //     settings: settings,
  //     builder: (context) {
  //       return PasswordRecoverySuccessPage(settings.arguments);
  //     },
  //   );
  //   case passwordRecoveryReset:
  //     return MaterialPageRoute(
  //       settings: settings,
  //       builder: (context) {
  //         return PasswordRecoveryResetPage(settings.arguments as String);
  //       },
  //     );
  //   case passwordRecoveryOtp:
  //     return MaterialPageRoute(
  //       settings: settings,
  //       builder: (context) {
  //         return PasswordRecoveryOtpPage(
  //             settings.arguments as OtpPageArguments);
  //       },
  //     );
  //     case profileWorkStatusForm:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) {
  //           return ProfileWorkStatusEntryPage(settings.arguments);
  //         },
  //       );
  //     case profileVerification:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) {
  //           return ProfileVerificationPage(settings.arguments);
  //         },
  //       );
  //     case loanAmount:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) {
  //           return LoanAmountEntryPage(settings.arguments);
  //         },
  //       );
  //   default:
  //     return MaterialPageRoute(
  //       settings: settings,
  //       builder: (context) {
  //         return SplashScreen();
  //       },
  //     );
  // }
//  }
}
