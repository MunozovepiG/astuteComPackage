import 'package:astute_components/src/button.dart';
import 'package:astute_components/src/fonts.dart';
import 'package:astute_components/src/theme.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

//calendar

class CustomDatePicker extends StatefulWidget {
  final Color primaryColor;
  final ValueChanged<String>? onDateSelected;
  final ColorScheme colorscheme;
  final Color iconColor;
  final String labelText;
  //final Color calendarColor;

  //final ValueChanged<DateTime> onChanged;

  CustomDatePicker(
      {required this.primaryColor,
      required this.onDateSelected,
      required this.colorscheme,
      required this.iconColor,
      required this.labelText
      //required this.calendarColor,
      });

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  String formattedDate = 'dd/mm/yyyy';
  DateTime? _selectedDate;
  String? dob;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ILM12(widget.labelText, AppTheme.colors.grey800, 1),
        IconTextButton(
            icon: Icons.calendar_month_outlined,
            color: widget.iconColor,
            text: formattedDate,
            onPressed: () => _selectDate(context),
            textColor: Colors.black),
      ],
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime currentDate = DateTime.now();
    final DateTime sixteenYearsAgo =
        currentDate.subtract(const Duration(days: 16 * 365));

    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2101),
        //neeed to review the calendar color how to make it dynamic
        builder: (context, child) {
          return Theme(
              data: Theme.of(context).copyWith(colorScheme: widget.colorscheme),
              child: child!);
        });
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
        formattedDate = DateFormat('EEE, MMM d, yyyy').format(_selectedDate!);
      });
      if (widget.onDateSelected != null) {
        widget.onDateSelected!(formattedDate);
      }
    }
  }
}
