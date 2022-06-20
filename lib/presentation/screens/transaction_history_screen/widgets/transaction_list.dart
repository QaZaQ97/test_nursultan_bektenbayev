import 'package:flutter/material.dart';
import 'package:test_nursultan_bektenbayev/application/constants/colors.dart';
import 'package:test_nursultan_bektenbayev/application/constants/text_styles.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  List<String> images = [
    'assets/brands/mc.png',
    'assets/brands/lv.png',
    'assets/brands/nike.png',
    'assets/brands/mc.png',
    'assets/brands/starbucks.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              color: darkWhite,
              width: double.infinity,
              child: Text('Yesterday', style: fontSize16(black)),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage: AssetImage(images[index])),
                      title: Text('McDonalds',
                          style: fontSize16(black)
                              .copyWith(fontWeight: FontWeight.bold)),
                      subtitle: Text('12:30', style: fontSize16(lightGrey)),
                      trailing: Text(
                        '- \$ 55.10 USD',
                        style: fontSize16(black),
                      ),
                    ),
                  );
                },
                itemCount: images.length,
                shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                scrollDirection: Axis.vertical,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
