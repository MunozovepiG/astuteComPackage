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
  DateTime initialDate;

  CustomDatePicker({
    required this.primaryColor,
    required this.onDateSelected,
    required this.colorscheme,
    required this.iconColor,
    required this.labelText,
    required this.minDate,
    required this.maxDate,
    required this.initialDate,
    required this.crossAxisAlignment,
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BBLM14(widget.labelText, Colors.black, 1, TextAlign.left),
        VS4(),
        Container(
          height: 48,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: Color(0xff49454F), // Border color
                width: 2.0, // Border width
              ),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 8.0, right: 16, top: 8, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BR16(formattedDate, Colors.black, 1),
                InkWell(
                  onTap: () => _selectDate(context),
                  child: Icon(
                    Icons.calendar_today_outlined,
                    size: 16,
                    color: widget.iconColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: widget.initialDate,
      firstDate: widget.minDate,
      lastDate: widget.maxDate,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: widget.colorscheme.copyWith(
              surface: AppTheme.colors.white
                  .withOpacity(1.0), // Set the background color of the calendar
            ),
          ),
          child: child!,
        );
      },
    );

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

class DefaultCalendarButton extends StatelessWidget {
  final String labelText;
  final String date;
  final VoidCallback calendarFunction;

  DefaultCalendarButton(
      {required this.labelText,
      required this.date,
      required this.calendarFunction});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BBLM14(labelText, Colors.black, 1, TextAlign.left),
        VS4(),
        Container(
          height: 48,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: Color(0xff49454F), // Border color
                width: 2.0, // Border width
              ),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 8.0, right: 16, top: 8, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BR16(date, Colors.black, 1),
                InkWell(
                  onTap: calendarFunction,
                  child: Icon(
                    Icons.calendar_today_outlined,
                    size: 16,
                    color: AppTheme.colors.blue500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
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
