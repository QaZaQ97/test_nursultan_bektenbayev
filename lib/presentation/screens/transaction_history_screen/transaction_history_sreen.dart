import 'package:flutter/material.dart';
import 'package:test_nursultan_bektenbayev/application/common_widgets/app_bar.dart';
import 'package:test_nursultan_bektenbayev/application/constants/colors.dart';
import 'package:test_nursultan_bektenbayev/presentation/screens/transaction_history_screen/widgets/transaction_header.dart';
import 'package:test_nursultan_bektenbayev/presentation/screens/transaction_history_screen/widgets/transaction_list.dart';
import 'package:test_nursultan_bektenbayev/presentation/screens/transaction_history_screen/widgets/transaction_settings/settings.dart';

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
      backgroundColor: black,
      body: Column(
        children: [
          MainAppBar('', true, true),
          const TransactionHistoryHeader(),
          const TransactionHistorySettings(),
          const TransactionList(),
        ],
      ),
    );
  }
}
