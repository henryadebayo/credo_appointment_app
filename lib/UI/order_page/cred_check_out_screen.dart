import 'package:credo_appointment_app/utils/extentions/extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/const/app_button.dart';
import '../../utils/const/app_colors.dart';
import '../../utils/const/app_sizedBox.dart';
import '../../utils/const/images.dart';
import '../../utils/dimensions/dimension.dart';
import '../schedule_page/widets/res_card_widget.dart';

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
            RestaurantTopCard(
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
                    boxShadow: [VeloxColors.smallShadow]),
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
                                      fontWeight: FontWeight.w600,
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
                        child: Container(
                          child: Column(
                            children: [
                              CustomCardInfoField(
                                scaler: scaler,
                                fieldLabel: 'Card Details *',
                                hint: '0000 1111 2222 3333',
                                hasPrefixIcon: true,
                                prefixIconString: VeloxSvgs.card_icon,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
              /* AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  child: _currentPayOptionWidget), */
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
                      child: Text('Card'),
                      value: 'Card',
                    ),
                    const PopupMenuItem(child: Text('₦ Cash'), value: 'Cash')
                  ]),
        ]),
      ),
    );
  }
}

Widget selectWidgetInView(Widget view) {
  return view;
}

class PaymentSummaryWidget extends StatelessWidget {
  const PaymentSummaryWidget({
    Key? key,
    required this.scaler,
  }) : super(key: key);

  final VeloxScaleUtil scaler;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.5),
                color: VeloxColors.restaurantTopButton,
              ),
              height: 31,
              width: 31,
              child: SvgPicture.asset(
                'assets/user.svg',
                height: 5,
                width: 5,
                color: VeloxColors.white,
                fit: BoxFit.scaleDown,
              ),
            ),
            const VeloxSizedBox(
              width: 2,
            ),
            Column(
              children: [
                const Text('Elon Hush'),
                Text(
                  '1 Hour Ago',
                  style: TextStyle(fontSize: scaler.fontSizer.sp(40)),
                ),
              ],
            )
          ],
        ),
        const VeloxSizedBox(
          height: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('HairCut'),
            Text(
              'Total: ₦80',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: scaler.fontSizer.sp(65),
                  color: VeloxColors.restaurantTopButton),
            ),
          ],
        )
      ],
    );
  }
}

class CustomCardInfoField extends StatelessWidget {
  const CustomCardInfoField(
      {Key? key,
      required this.scaler,
      required this.hint,
      required this.fieldLabel,
      this.prefixIconString,
      required this.hasPrefixIcon,
      this.inputType = TextInputType.number})
      : super(key: key);

  final VeloxScaleUtil scaler;
  final String hint;
  final String fieldLabel;
  final String? prefixIconString;
  final bool hasPrefixIcon;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldLabel,
          style: TextStyle(
              color: VeloxColors.restaurantTopButton,
              fontWeight: FontWeight.w600,
              fontSize: scaler.fontSizer.sp(65)),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 13),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: VeloxColors.dropDownColor),
          child: TextField(
            keyboardType: inputType,
            decoration: InputDecoration(
                prefixIcon: hasPrefixIcon
                    ? SvgPicture.asset(
                        prefixIconString ?? '',
                        fit: BoxFit.scaleDown,
                      )
                    : null,
                hintText: hint,
                hintStyle: const TextStyle(
                    color: const Color.fromRGBO(149, 147, 147, 1)),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: VeloxColors.restaurantTopColor),
                )),
          ),
        ),
      ],
    );
  }
}
