import '../../../utils/const/images.dart';

class RestaurantHomeMenuItem {
  RestaurantHomeMenuItem(
      {required this.image, required this.itemLabel, this.name, this.amount});
  String image;
  String itemLabel;
  String? name;
  String? amount;
}

class RestaurantOrderDetailItem {
  RestaurantOrderDetailItem(
      {required this.image,
      required this.itemLabel,
      this.amount,
      required this.quantity});
  String image;
  String itemLabel;
  String? amount;
  int quantity;
}

class RestaurantTransactionItem {
  RestaurantTransactionItem(
      {required this.status,
      required this.date,
      required this.amount,
      required this.time,
      required this.isRefund});
  String status;
  String date;
  String amount;
  String time;
  bool isRefund;
}

class RestaurantReportitems {
  RestaurantReportitems({required this.itemLabel, required this.amount});

  String itemLabel;
  String amount;
}

class RestaurantEmployee {
  RestaurantEmployee({
    required this.employeeId,
    required this.employeeName,
    required this.email,
    required this.phoneNumber,
    required this.address,
    required this.jobTitle,
    required this.salary,
    required this.employeeImage,
  });

  String employeeId;
  String employeeName;
  String email;
  String phoneNumber;
  String address;
  String jobTitle;
  String salary;
  String employeeImage;
}

List<RestaurantEmployee> employeeList = <RestaurantEmployee>[
  RestaurantEmployee(
      employeeId: '101',
      employeeName: 'Jonathan Hope',
      email: 'jonas@gmail.com',
      phoneNumber: "234812345678",
      address: 'No 14 Main Street',
      jobTitle: 'Bar Tender',
      salary: '400',
      employeeImage: VeloxImages.sampleEmployeeImg1),
  RestaurantEmployee(
      employeeId: '102',
      employeeName: 'Elon Hush',
      email: 'hush@gmail.com',
      phoneNumber: "234812345678",
      address: 'No 14 Main Street',
      jobTitle: 'Chef 1',
      salary: '450',
      employeeImage: VeloxImages.sampleEmployeeImg2),
  RestaurantEmployee(
      employeeId: '103',
      employeeName: 'Rose Gray',
      email: 'rose@gmail.com',
      phoneNumber: "234812345678",
      address: 'No 14 Main Street',
      jobTitle: 'Cashier',
      salary: '480',
      employeeImage: VeloxImages.sampleEmployeeImg3),
  RestaurantEmployee(
      employeeId: '104',
      employeeName: 'Jonathan Hope',
      email: 'jonas@gmail.com',
      phoneNumber: "234812345678",
      address: 'No 14 Main Street',
      jobTitle: 'Chief Chef',
      salary: '500',
      employeeImage: VeloxImages.sampleEmployeeImg1),
  RestaurantEmployee(
      employeeId: '105',
      employeeName: 'Eric Jonathan',
      email: 'eric@gmail.com',
      phoneNumber: "234812345678",
      address: 'No 14 Main Street',
      jobTitle: 'Bar Tender',
      salary: '400',
      employeeImage: VeloxImages.sampleEmployeeImg2),
  RestaurantEmployee(
      employeeId: '106',
      employeeName: 'Esther Jackson',
      email: 'esther@gmail.com',
      phoneNumber: "234812345678",
      address: 'No 14 Main Street',
      jobTitle: 'Bar Tender',
      salary: '400',
      employeeImage: VeloxImages.sampleEmployeeImg3),
];

List<RestaurantReportitems> reportItem = List.generate(
    8,
    (index) => RestaurantReportitems(
        itemLabel: index == 0 ? 'Kitchen' : 'Decor', amount: ' ₦458'));

List<RestaurantTransactionItem> transactionList = <RestaurantTransactionItem>[
  RestaurantTransactionItem(
      status: 'Discount Applied',
      date: "THURS, 18 OCT",
      amount: "₦450",
      isRefund: false,
      time: '18:00'),
  RestaurantTransactionItem(
      status: 'Refunded',
      date: "THURS, 18 OCT",
      amount: "₦450",
      isRefund: true,
      time: '18:00'),
  RestaurantTransactionItem(
      status: 'Refunded',
      date: "THURS, 18 OCT",
      amount: "₦450",
      isRefund: true,
      time: '18:00'),
  RestaurantTransactionItem(
      status: 'Discount Applied',
      date: "THURS, 18 OCT",
      amount: "₦450",
      isRefund: false,
      time: '18:00'),
  RestaurantTransactionItem(
      status: 'Discount Applied',
      date: "THURS, 18 OCT",
      amount: "₦450",
      isRefund: false,
      time: '18:00'),
  RestaurantTransactionItem(
      status: 'Refunded',
      date: "THURS, 18 OCT",
      amount: "₦450",
      isRefund: true,
      time: '18:00'),
  RestaurantTransactionItem(
      status: 'Refunded',
      date: "THURS, 18 OCT",
      amount: "₦450",
      isRefund: true,
      time: '18:00'),
  RestaurantTransactionItem(
      status: 'Discount Applied',
      date: "THURS, 18 OCT",
      amount: "₦450",
      isRefund: false,
      time: '18:00'),
];

List<RestaurantHomeMenuItem> toolOption = <RestaurantHomeMenuItem>[
  RestaurantHomeMenuItem(
    image: VeloxSvgs.bookIcon,
    itemLabel: "Menu",
  ),
  RestaurantHomeMenuItem(
    image: VeloxSvgs.tag,
    itemLabel: "Orders",
  ),
  RestaurantHomeMenuItem(
    image: VeloxSvgs.barChartIcon,
    itemLabel: "Reports",
  ),
  RestaurantHomeMenuItem(
    image: VeloxSvgs.slideIcon,
    itemLabel: "Transactions",
  ),
  RestaurantHomeMenuItem(
    image: VeloxSvgs.personIcon,
    itemLabel: "Employee",
  ),
];

List<RestaurantHomeMenuItem> menuOption = <RestaurantHomeMenuItem>[
  RestaurantHomeMenuItem(
    image: 'assets/restaurant_img_1.png',
    itemLabel: "Mix Starter",
  ),
  RestaurantHomeMenuItem(
    image: 'assets/restaurant_img_2.png',
    itemLabel: "Bread Kunafa",
  ),
  RestaurantHomeMenuItem(
    image: 'assets/restaurant_img_2.png',
    itemLabel: "Salsa baguette",
  ),
  RestaurantHomeMenuItem(
    image: 'assets/restaurant_img_2.png',
    itemLabel: "French Fries",
  ),
  RestaurantHomeMenuItem(
    image: 'assets/restaurant_img_1.png',
    itemLabel: "mashe",
  ),
];

List<RestaurantHomeMenuItem> menuOption2 = <RestaurantHomeMenuItem>[
  RestaurantHomeMenuItem(
      image: 'assets/restaurant_img_1.png',
      itemLabel: "Mix Starter",
      amount: '₦54',
      name: 'Starters'),
  RestaurantHomeMenuItem(
      image: 'assets/restaurant_img_2.png',
      itemLabel: "Bread Kunafa",
      amount: '₦56',
      name: 'Main'),
  RestaurantHomeMenuItem(
      image: 'assets/restaurant_img_2.png',
      itemLabel: "Salsa baguette",
      amount: '₦40',
      name: 'Dessert'),
  RestaurantHomeMenuItem(
      image: 'assets/restaurant_img_2.png',
      itemLabel: "French Fries",
      amount: '₦40',
      name: 'Beverages'),
  RestaurantHomeMenuItem(
      image: 'assets/restaurant_img_1.png',
      itemLabel: "mashe",
      amount: '60',
      name: 'Fruits'),
];
List<RestaurantOrderDetailItem> orderDetailMenu = <RestaurantOrderDetailItem>[
  RestaurantOrderDetailItem(
      image: 'assets/restaurant_img_1.png',
      itemLabel: "Mix Starter",
      amount: '₦54',
      quantity: 2),
  RestaurantOrderDetailItem(
      image: 'assets/restaurant_img_2.png',
      itemLabel: "Bread Kunafa",
      amount: '₦56',
      quantity: 2),
  RestaurantOrderDetailItem(
      image: 'assets/restaurant_img_2.png',
      itemLabel: "Salsa baguette",
      amount: '₦40',
      quantity: 2),
];

class RestaurantOrderItem {
  RestaurantOrderItem(
      {required this.name,
      required this.itemName,
      required this.timeSinceOrder,
      required this.orderStatus,
      required this.orderNumber,
      required this.isPending});
  String name;
  String itemName;
  String timeSinceOrder;
  String orderStatus;
  int orderNumber;
  bool isPending;
}

List<RestaurantOrderItem> orderItem = <RestaurantOrderItem>[
  RestaurantOrderItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 110,
    isPending: true,
  ),
  RestaurantOrderItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 108,
    isPending: true,
  ),
  RestaurantOrderItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 112,
    isPending: false,
  ),
  RestaurantOrderItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 113,
    isPending: true,
  ),
  RestaurantOrderItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 114,
    isPending: true,
  ),
  RestaurantOrderItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 115,
    isPending: false,
  ),
  RestaurantOrderItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 116,
    isPending: false,
  ),
  RestaurantOrderItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 117,
    isPending: false,
  ),
  RestaurantOrderItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 119,
    isPending: false,
  ),
  RestaurantOrderItem(
    name: 'Elon Hosh',
    itemName: "Fish starterMons Burger(2)",
    timeSinceOrder: "1 hour ago",
    orderStatus: "Mix Starter",
    orderNumber: 120,
    isPending: true,
  ),
];
