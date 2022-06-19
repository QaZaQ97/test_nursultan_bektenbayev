import 'package:flutter/material.dart';
import 'package:test_nursultan_bektenbayev/application/common_widgets/app_bar.dart';
import 'package:test_nursultan_bektenbayev/constants/colors.dart';

class TransactionHistoryScreen extends StatefulWidget {
  const TransactionHistoryScreen({Key? key}) : super(key: key);

  @override
  State<TransactionHistoryScreen> createState() =>
      _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MainAppBar('', true, true),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: Column(
              children: [
                const TransactionHistoryScreen(),
                Container(
                  color: grey,
                  height: 200,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
