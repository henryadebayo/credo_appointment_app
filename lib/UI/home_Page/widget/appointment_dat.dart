import '../../../utils/const/images.dart';

class AppointmentRequestItem {
  AppointmentRequestItem(
      {required this.name,
      required this.itemName,
      required this.timeSinceOrder,
      required this.orderStatus,
      required this.orderNumber,
      required this.isAccepted});
  String name;
  String itemName;
  String timeSinceOrder;
  String orderStatus;
  int orderNumber;
  bool isAccepted;
}

class AppointmentHomeMenuItem {
  AppointmentHomeMenuItem(
      {required this.image, required this.itemLabel, this.name, this.amount});
  String image;
  String itemLabel;
  String? name;
  String? amount;
}

List<AppointmentRequestItem> requestItems = <AppointmentRequestItem>[
  AppointmentRequestItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 110,
    isAccepted: true,
  ),
  AppointmentRequestItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 108,
    isAccepted: true,
  ),
  AppointmentRequestItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 112,
    isAccepted: false,
  ),
  AppointmentRequestItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 113,
    isAccepted: true,
  ),
  AppointmentRequestItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 114,
    isAccepted: true,
  ),
  AppointmentRequestItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 115,
    isAccepted: false,
  ),
  AppointmentRequestItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 116,
    isAccepted: false,
  ),
  AppointmentRequestItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 117,
    isAccepted: false,
  ),
  AppointmentRequestItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 119,
    isAccepted: false,
  ),
  AppointmentRequestItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 120,
    isAccepted: true,
  ),
];

List<AppointmentHomeMenuItem> appointmentToolOption = <AppointmentHomeMenuItem>[
  AppointmentHomeMenuItem(
    image: VeloxSvgs.bookIcon,
    itemLabel: "Schedule",
  ),
  AppointmentHomeMenuItem(
    image: VeloxSvgs.tag,
    itemLabel: "Checkout",
  ),
  AppointmentHomeMenuItem(
    image: VeloxSvgs.barChartIcon,
    itemLabel: "Requests",
  ),
  AppointmentHomeMenuItem(
    image: VeloxSvgs.slideIcon,
    itemLabel: "Transactions",
  ),
  AppointmentHomeMenuItem(
    image: VeloxSvgs.personIcon,
    itemLabel: "Employee",
  ),
];
