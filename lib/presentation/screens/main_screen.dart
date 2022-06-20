import 'package:flutter/material.dart';
import 'package:test_nursultan_bektenbayev/application/common_widgets/app_bar.dart';
import 'package:test_nursultan_bektenbayev/application/constants/colors.dart';
import 'package:test_nursultan_bektenbayev/application/constants/text_styles.dart';
import 'package:test_nursultan_bektenbayev/presentation/screens/transaction_history_screen/transaction_history_sreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Column(
        children: [
          MainAppBar('Main screen', false, false),
          const Spacer(),
          ElevatedButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TransactionHistoryScreen())),
            child: Text(
              'Open Transaction history',
              style: fontSize20(white),
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
