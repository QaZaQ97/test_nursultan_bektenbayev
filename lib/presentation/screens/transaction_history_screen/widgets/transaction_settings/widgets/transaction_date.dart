import 'package:flutter/material.dart';
import 'package:test_nursultan_bektenbayev/application/common_widgets/box_decoration.dart';
import 'package:test_nursultan_bektenbayev/application/constants/colors.dart';
import 'package:test_nursultan_bektenbayev/application/constants/text_styles.dart';

class TransactionDate extends StatefulWidget {
  const TransactionDate({Key? key}) : super(key: key);

  @override
  State<TransactionDate> createState() => _TransactionDateState();
}

class _TransactionDateState extends State<TransactionDate> {
  var currency = [
    'All',
    'Monday',
    'Tuesday',
    'Wednsday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  String selectval = "All";
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: borderDecoration(),
        child: DropdownButton(
            value: selectval,
            style: fontSize16(white),
            dropdownColor: grey,
            isExpanded: true,
            underline: const SizedBox(),
            icon: Icon(Icons.arrow_drop_down, color: white),
            items: [
              DropdownMenuItem(
                  value: currency[0],
                  child: Text(currency[0], style: fontSize16(white))),
              DropdownMenuItem(
                  value: currency[1],
                  child: Text(currency[1], style: fontSize16(white))),
              DropdownMenuItem(
                  value: currency[2],
                  child: Text(currency[2], style: fontSize16(white))),
              DropdownMenuItem(
                  value: currency[3],
                  child: Text(currency[3], style: fontSize16(white))),
              DropdownMenuItem(
                  value: currency[4],
                  child: Text(currency[4], style: fontSize16(white))),
              DropdownMenuItem(
                  value: currency[5],
                  child: Text(currency[5], style: fontSize16(white))),
              DropdownMenuItem(
                  value: currency[6],
                  child: Text(currency[6], style: fontSize16(white))),
              DropdownMenuItem(
                  value: currency[7],
                  child: Text(currency[7], style: fontSize16(white)))
            ],
            onChanged: (value) {
              setState(() {
                selectval = value.toString();
              });
            }));
  }
}
