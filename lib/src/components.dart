import 'package:astute_components/astute_components.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

//calendar

class CustomDatePicker extends StatefulWidget {
  final Color primaryColor;
  final ValueChanged<String>? onDateSelected;
  final ColorScheme colorscheme;
  final Color iconColor;
  final String labelText;
  final CrossAxisAlignment crossAxisAlignment;

  DateTime minDate;
  DateTime maxDate;
  DateTime intialDate;
  //final Color calendarColor;

  //final ValueChanged<DateTime> onChanged;

  CustomDatePicker(
      {required this.primaryColor,
      required this.onDateSelected,
      required this.colorscheme,
      required this.iconColor,
      required this.labelText,
      required this.minDate,
      required this.maxDate,
      required this.intialDate,
      required this.crossAxisAlignment
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
      crossAxisAlignment: widget.crossAxisAlignment,
      children: [
        BB10(widget.labelText, AppTheme.colors.grey800, 1, TextAlign.left),
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
    DateTime currentDate = DateTime.now();
    DateTime minDate =
        currentDate.subtract(const Duration(days: 90 * 365)); // 90 years ago
    DateTime maxDate =
        currentDate.subtract(const Duration(days: 14 * 365)); // 14 years ago

    DateTime initialDate = maxDate;
    if (currentDate.isBefore(maxDate)) {
      initialDate = currentDate;
    }

    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: widget.intialDate,
        firstDate: widget.minDate,
        lastDate: currentDate,
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

class MonthlyCalendar extends StatefulWidget {
  final Color primaryColor;
  final ValueChanged<String>? onDateSelected;
  final ColorScheme colorscheme;
  final Color iconColor;
  final String labelText;
  final CrossAxisAlignment crossAxisAlignment;

  MonthlyCalendar(
      {required this.primaryColor,
      required this.onDateSelected,
      required this.colorscheme,
      required this.crossAxisAlignment,
      required this.iconColor,
      required this.labelText});

  @override
  _MonthlyCalendarState createState() => _MonthlyCalendarState();
}

class _MonthlyCalendarState extends State<MonthlyCalendar> {
  DateTime selectedDate = DateTime.now();
  String formattedDate = 'dd/mm/yyyy';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: widget.crossAxisAlignment,
      children: [
        ILM12(widget.labelText, AppTheme.colors.grey650, 1),
        IconTextButton(
            icon: Icons.calendar_month_outlined,
            color: widget.iconColor,
            text: formattedDate,
            textColor: AppTheme.colors.black,
            onPressed: () {
              showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(selectedDate.year, selectedDate.month, 1),
                  lastDate:
                      DateTime(selectedDate.year, selectedDate.month + 1, 0),
                  builder: (context, child) {
                    return Theme(
                        data: Theme.of(context)
                            .copyWith(colorScheme: widget.colorscheme),
                        child: child!);
                  }).then((pickedDate) {
                if (pickedDate != null) {
                  setState(() {
                    selectedDate = pickedDate;
                    formattedDate =
                        DateFormat('EEE, MMM d, yyyy').format(selectedDate);
                    print(selectedDate);
                  });
                  if (widget.onDateSelected != null) {
                    widget.onDateSelected!(formattedDate);
                  }
                }
              });
            }),
      ],
    );
  }
}
