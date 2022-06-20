import 'package:flutter/material.dart';
import 'package:test_nursultan_bektenbayev/application/common_widgets/box_decoration.dart';
import 'package:test_nursultan_bektenbayev/application/constants/colors.dart';
import 'package:test_nursultan_bektenbayev/application/constants/text_styles.dart';

class SetCurrency extends StatefulWidget {
  const SetCurrency({Key? key}) : super(key: key);

  @override
  State<SetCurrency> createState() => _SetCurrencyState();
}

class _SetCurrencyState extends State<SetCurrency> {
  var currency = ['USD Dollar', 'RUB Ruble'];
  String selectval = "USD Dollar";
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
                  child: Text(currency[1], style: fontSize16(white)))
            ],
            onChanged: (value) {
              setState(() {
                selectval = value.toString();
              });
            }));
  }
}
