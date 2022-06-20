import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:test_nursultan_bektenbayev/application/common_widgets/box_decoration.dart';
import 'package:test_nursultan_bektenbayev/application/constants/colors.dart';
import 'package:test_nursultan_bektenbayev/application/constants/text_styles.dart';
import 'package:test_nursultan_bektenbayev/presentation/screens/transaction_history_screen/widgets/transaction_settings/widgets/set_currency.dart';
import 'package:test_nursultan_bektenbayev/presentation/screens/transaction_history_screen/widgets/transaction_settings/widgets/transaction_date.dart';

class TransactionHistorySettings extends StatefulWidget {
  const TransactionHistorySettings({Key? key}) : super(key: key);

  @override
  State<TransactionHistorySettings> createState() =>
      _TransactionHistorySettingsState();
}

class _TransactionHistorySettingsState
    extends State<TransactionHistorySettings> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: grey,
        width: double.infinity,
        child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Transactions History', style: fontSize20(white)),
              const SizedBox(height: 10),
              const SetCurrency(),
              const SizedBox(height: 10),
              Row(children: [
                const Expanded(child: TransactionDate()),
                const SizedBox(width: 10),
                Container(
                    height: 50,
                    width: 50,
                    decoration: borderDecoration(),
                    child: IconButton(
                        icon: Icon(Icons.edit_calendar, color: white),
                        onPressed: () {
                          DatePicker.showDatePicker(context,
                              showTitleActions: true,
                              minTime: DateTime(1900, 1, 1),
                              maxTime: DateTime(DateTime.now().year,
                                  DateTime.now().month, DateTime.now().day),
                              currentTime: DateTime(DateTime.now().year - 14,
                                  DateTime.now().month, DateTime.now().day),
                              onChanged: (_) {},
                              theme: DatePickerTheme(backgroundColor: white));
                        }))
              ])
            ])));
  }
}
