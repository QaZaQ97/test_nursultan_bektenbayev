import 'package:flutter/material.dart';
import 'package:test_nursultan_bektenbayev/constants/colors.dart';
import 'package:test_nursultan_bektenbayev/constants/text_styles.dart';

class MainAppBar extends StatelessWidget {
  String? title;
  bool arrowBackIcon;
  bool shareIcon;
  MainAppBar(this.title, this.arrowBackIcon, this.shareIcon);

  @override
  Widget build(BuildContext context) {
    bool showArrowIcon = arrowBackIcon;
    bool showShareIcon = shareIcon;
    return SizedBox(
        height: 120,
        child: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.red,
              body: Row(children: [
                showArrowIcon
                    ? IconButton(
                        icon: Icon(Icons.arrow_back, color: white),
                        onPressed: () => Navigator.pop(context))
                    : const SizedBox(),
                const Spacer(),
                Center(child: Text(title!, style: fontSize30(white))),
                const Spacer(),
                showShareIcon
                    ? IconButton(
                        icon: Icon(Icons.ios_share_outlined, color: white),
                        onPressed: () {})
                    : const SizedBox()
              ])),
        ));
  }
}
