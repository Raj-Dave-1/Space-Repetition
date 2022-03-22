//  🚩 Dada Ki Jay Ho 🚩

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() {
  runApp(MaterialApp(home: Calender()));
}

class Calender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.deepOrange.shade100,
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.5,
            child: SfDateRangePicker(
              monthCellStyle: const DateRangePickerMonthCellStyle(
                textStyle: TextStyle(color: Colors.blue),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
