import 'package:flutter/material.dart';

import '../../../utils/const/app_colors.dart';

class NotePadTab extends StatefulWidget {
  const NotePadTab({Key? key, required this.tabItems}) : super(key: key);
  final List<String> tabItems;

  @override
  _NotePadTabState createState() => _NotePadTabState();
}

class _NotePadTabState extends State<NotePadTab> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: SizedBox(
        height: 25.0,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.tabItems.length,
            itemBuilder: (context, index) => buildCategories(index)),
      ),
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.tabItems[index],
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: selectedIndex == index
                      ? VeloxColors.red
                      : VeloxColors.black),
            ),
            Container(
              margin: EdgeInsets.only(top: 12 / 4),
              height: 2.0,
              width: 30.0,
              color:
                  selectedIndex == index ? VeloxColors.red : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
