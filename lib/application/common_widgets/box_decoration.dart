import 'package:flutter/cupertino.dart';
import 'package:test_nursultan_bektenbayev/application/constants/colors.dart';

BoxDecoration borderDecoration() {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      border:
          Border.all(color: darkGrey, style: BorderStyle.solid, width: 0.80));
}
