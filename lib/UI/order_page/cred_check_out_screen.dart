import 'package:credo_appointment_app/UI/order_page/widgets/custom_card_info_widget.dart';
import 'package:credo_appointment_app/UI/order_page/widgets/payment_summary_widget.dart';
import 'package:credo_appointment_app/utils/extentions/extention.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/const/app_button.dart';
import '../../utils/const/app_colors.dart';
import '../../utils/const/app_sizedBox.dart';
import '../../utils/const/images.dart';
import '../../utils/dimensions/dimension.dart';
import '../schedule_page/widets/topCard_widget.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  bool isPayWitthCard = true;
  String payOption = 'Card';
  @override
  Widget build(BuildContext context) {
    final scaler = context.scaler;

    return Scaffold(
      backgroundColor: VeloxColors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopCard(
              scaler: scaler,
              titleText: 'Checkout',
            ),
            const VeloxSizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 16, 22, 16),
              child: Container(
                width: double.infinity,
                height: scaler.sizer.setHeight(98),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: VeloxColors.white,
                    boxShadow: const [VeloxColors.smallShadow]),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 18, 16, 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Payment Details',
                                  style: TextStyle(
                                      color: VeloxColors.restaurantTopColor,
                                      fontSize: scaler.fontSizer.sp(65)),
                                ),
                                Text(
                                  'Complete your session by providing payment details',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: scaler.fontSizer.sp(40)),
                                ),
                              ],
                            ),
                          ),
                          buildDropdownWidget(scaler)
                        ],
                      ),
                      const VeloxSizedBox(
                        height: 4,
                      ),
                      Visibility(
                        visible: isPayWitthCard,
                        child: Column(
                          children: [
                            CustomCardInfoField(
                              scaler: scaler,
                              fieldLabel: 'Card Details *',
                              hint: '0000 1111 2222 3333',
                              hasPrefixIcon: true,
                              prefixIconString: VeloxSvgs.card_icon,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: CustomCardInfoField(
                                  scaler: scaler,
                                  fieldLabel: 'Expiry Date *',
                                  hint: '00/20',
                                  hasPrefixIcon: false,
                                  inputType: TextInputType.datetime,
                                )),
                                const VeloxSizedBox(
                                  width: 3,
                                ),
                                Expanded(
                                    child: CustomCardInfoField(
                                  scaler: scaler,
                                  fieldLabel: 'Cvv *',
                                  hint: '001',
                                  hasPrefixIcon: false,
                                ))
                              ],
                            ),
                            CustomCardInfoField(
                              scaler: scaler,
                              fieldLabel: 'Card Holders Name*',
                              hint: 'John Doe',
                              hasPrefixIcon: false,
                              inputType: TextInputType.name,
                            ),
                            CustomCardInfoField(
                              scaler: scaler,
                              fieldLabel: 'Any Discount Number?',
                              hint: '',
                              hasPrefixIcon: false,
                            ),
                          ],
                        ),
                      ),
                      const VeloxSizedBox(
                        height: 2,
                      ),
                      PaymentSummaryWidget(scaler: scaler),
                      const VeloxSizedBox(
                        height: 2.5,
                      ),
                      SizedBox(
                        height: scaler.sizer.setHeight(6),
                        width: double.infinity,
                        child: VeloxButton(
                            fontSize: 55,
                            verticalPadding: 1.5,
                            horizontalPadding: 1,
                            color: VeloxColors.restaurantTopButton,
                            text: 'Pay ₦ 299',
                            onPressed: () {}),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Flexible buildDropdownWidget(VeloxScaleUtil scaler) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
            color: VeloxColors.dropDownColor,
            borderRadius: BorderRadius.circular(3)),
        height: scaler.sizer.setHeight(5.5),
        width: scaler.sizer.setWidth(24),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 1, 1, 1),
            child: Text(
              payOption,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: VeloxColors.restaurantTopButton),
            ),
          ),
          PopupMenuButton(
              padding: const EdgeInsets.fromLTRB(1, 1, 4, 1),
              icon: const Icon(
                Icons.expand_more,
              ),
              onSelected: (String value) {
                setState(() {
                  payOption = value;
                  if (value == 'Cash') {
                    isPayWitthCard = false;
                  } else {
                    isPayWitthCard = true;
                  }
                });
              },
              tooltip: 'Payment Option',
              elevation: 20,
              enableFeedback: true,
              itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 'Card',
                      child: Text('Card'),
                    ),
                    const PopupMenuItem(value: 'Cash', child: Text('₦ Cash'))
                  ]),
        ]),
      ),
    );
  }
}

Widget selectWidgetInView(Widget view) {
  return view;
}
