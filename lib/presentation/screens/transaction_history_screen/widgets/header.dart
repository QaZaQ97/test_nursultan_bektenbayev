import 'package:flutter/material.dart';
import 'package:test_nursultan_bektenbayev/constants/colors.dart';
import 'package:test_nursultan_bektenbayev/constants/text_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: black,
        height: 270,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const CircleAvatar(
              radius: 30,
              foregroundImage: AssetImage('assets/flags/usa_flag.png')),
          const SizedBox(height: 10),
          Row(
              children: [
                const Spacer(),
                const SizedBox(width: 60),
                RichText(
                    text: TextSpan(
                        text: 'USD',
                        style: fontSize20(lightGrey),
                        children: [
                      WidgetSpan(
                          child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text('Account',
                                  style: fontSize20(lightGrey))))
                    ])),
                const Spacer(),
                TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: BorderSide(color: lightGrey))),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Hide',
                      style: fontSize16(white),
                    ))
              ]),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('\$', style: fontSize16(white)),
              const SizedBox(width: 18),
              Text('123.123,00', style: fontSize24(white)),
              const SizedBox(width: 30)
            ],
          )
        ]));
  }
}
