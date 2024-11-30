//the selection componets
import 'dart:async';

import 'package:astute_components/astute_components.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class AstuteRadioButton extends StatefulWidget {
  final String itemText;
  final bool initialSelected;
  final VoidCallback selectionFunction;
  final String selectedText;

  const AstuteRadioButton({
    super.key,
    required this.itemText,
    required this.selectionFunction,
    required this.initialSelected,
    required this.selectedText,
  });

  @override
  State<AstuteRadioButton> createState() => _AstuteRadioButtonState();
}

class _AstuteRadioButtonState extends State<AstuteRadioButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.selectionFunction,
      child: (widget.initialSelected)
          ? Container(
              constraints: const BoxConstraints(
                minHeight: 56, // Set the minimum height here
              ),
              decoration: ShapeDecoration(
                color: Color(0xffbFDDDB6)
                    .withOpacity(0.25), // Adjust the color as needed
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.70,
                          child: BR16(widget.itemText, Color(0xffbFE6E04), 2),
                        ),
                        Icon(
                          Icons.check,
                          color: Color(0xffbFE6E04),
                        )
                      ],
                    ),
                    VS4(),
                    BR16(widget.selectedText, Color(0xffbFE6E04), 6)
                  ],
                ),
              ),
            )
          : Container(
              constraints: const BoxConstraints(
                minHeight: 56, // Set the minimum height here
              ),
              decoration: ShapeDecoration(
                color: Colors.white, // Adjust the color as needed
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x8C1C1B1F)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    widget.initialSelected
                        ? BR16(widget.itemText, AppTheme.colors.blue500, 1)
                        : RR16(widget.itemText, Colors.black, 1)
                  ],
                ),
              ),
            ),
    );
  }
}

//need to update
class GeneralMonthlyCalendar extends StatefulWidget {
  final ValueChanged<String>? onDateSelected;

  final String labelText;

  const GeneralMonthlyCalendar(
      {super.key, required this.onDateSelected, required this.labelText});

  @override
  _GeneralMonthlyCalendarState createState() => _GeneralMonthlyCalendarState();
}

class _GeneralMonthlyCalendarState extends State<GeneralMonthlyCalendar> {
  DateTime selectedDate = DateTime.now();
  String formattedDate = 'dd/mm/yyyy';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BBLM14(widget.labelText, Colors.black, 2, TextAlign.left),
        VS4(),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: Color(0xff49454F), // Border color
                width: 1.0, // Border width
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
                  onTap: () {
                    showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate:
                            DateTime(selectedDate.year, selectedDate.month, 1),
                        lastDate: DateTime(
                            selectedDate.year, selectedDate.month + 1, 0),
                        builder: (context, child) {
                          return Theme(
                              data: Theme.of(context).copyWith(
                                colorScheme: ColorScheme.light(
                                    primary: AppTheme.colors.blue500),
                              ),
                              child: child!);
                        }).then((pickedDate) {
                      if (pickedDate != null) {
                        setState(() {
                          selectedDate = pickedDate;
                          formattedDate = DateFormat('EEE, MMM d, yyyy')
                              .format(selectedDate);
                          print(selectedDate);
                        });
                        if (widget.onDateSelected != null) {
                          widget.onDateSelected!(formattedDate);
                        }
                      }
                    });
                  },
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

// plain icon button

class PlainIconButtonRow extends StatelessWidget {
  String buttonText;
  IconData rowIcon;
  VoidCallback buttonFunction;
  PlainIconButtonRow(
      {super.key,
      required this.buttonText,
      required this.rowIcon,
      required this.buttonFunction});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Icon(
          rowIcon,
          size: 20,
          color: Colors.black,
        ),
        const SizedBox(
          width: 8,
        ),
        InkWell(onTap: buttonFunction, child: BR16(buttonText, Colors.black, 1))
      ]),
    );
  }
}

//this calendar can take any function

//need to update
class GeneralCalendar extends StatefulWidget {
  final VoidCallback buttonFunction;
  final String labelText;
  final String date;

  const GeneralCalendar(
      {super.key,
      required this.buttonFunction,
      required this.labelText,
      required this.date});

  @override
  _GeneralCalendarState createState() => _GeneralCalendarState();
}

class _GeneralCalendarState extends State<GeneralCalendar> {
  DateTime selectedDate = DateTime.now();
  String formattedDate = 'dd/mm/yyyy';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BBLM14(widget.labelText, Colors.black, 2, TextAlign.left),
        SS8(),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: Color(0xff49454F), // Border color
                width: 1.0, // Border width
              ),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 8.0, right: 16, top: 8, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BR16(widget.date, Colors.black, 1),
                InkWell(
                  onTap: widget.buttonFunction,
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

class MR14 extends StatelessWidget {
  String text;
  TextAlign alignment;
  int maxLines;
  Color? color;

  MR14(
      {super.key,
      required this.text,
      required this.alignment,
      required this.maxLines,
      this.color});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(text,
        maxLines: maxLines,
        textAlign: alignment,
        style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: color ?? Colors.black));
  }
}

class MR16 extends StatelessWidget {
  String text;
  TextAlign alignment;
  int maxLines;
  Color? color;

  MR16(
      {super.key,
      required this.text,
      required this.alignment,
      required this.maxLines,
      this.color});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(text,
        maxLines: maxLines,
        textAlign: alignment,
        style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: color ?? Colors.black));
  }
}

class DisableEnabedTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final void Function(String)? onChanged;
  final Color backgroundColor;
  final String inputLabelText;
  final List<TextInputFormatter>? inputFormatters;
  bool? enabled = true;
  String prefix;

  DisableEnabedTextField(
      {super.key,
      required this.controller,
      this.validator,
      this.hintText,
      this.labelText,
      this.keyboardType,
      this.obscureText = false,
      this.onChanged,
      required this.backgroundColor,
      required this.inputLabelText,
      this.inputFormatters,
      this.enabled,
      required this.prefix});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BBLM14(inputLabelText, Colors.black, 1, TextAlign.left),
          SS8(),
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
            height: 56,
            color: backgroundColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: TextFormField(
                controller: controller,
                inputFormatters: inputFormatters,
                validator: validator,
                decoration: InputDecoration(
                    hintText: hintText,
                    prefixText: prefix,
                    labelText: labelText,
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Roboto',
                    )),
                keyboardType: keyboardType,
                obscureText: obscureText,
                onChanged: onChanged,
                enabled: (enabled != null) ? enabled : true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NullBox extends StatelessWidget {
  const NullBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 0,
    );
  }
}

class HardCodedTextField extends StatelessWidget {
  String? fundType;
  String? label;

  HardCodedTextField({super.key, this.fundType, this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            BR16(label!, Colors.black, 1),
          ],
        ),
        SS8(),
        Container(
          height: 56,
          width: MediaQuery.of(context).size.width * 0.90,
          decoration: BoxDecoration(
            color: const Color(0xffff4f1ec),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xff49454F), width: 2),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    fundType!,
                    style:
                        TextStyle(fontSize: 16, color: AppTheme.colors.grey800),
                  ),
                ),
              ]),
        ),
      ],
    );
  }
}

class SS40 extends StatelessWidget {
  const SS40({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 40,
    );
  }
}

class SS48 extends StatelessWidget {
  const SS48({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 48,
    );
  }
}

class SS56 extends StatelessWidget {
  const SS56({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 56,
    );
  }
}

class SS64 extends StatelessWidget {
  const SS64({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 64,
    );
  }
}

class SS80 extends StatelessWidget {
  const SS80({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 80,
    );
  }
}

class SS120 extends StatelessWidget {
  const SS120({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 120,
    );
  }
}

class SingleLabelRow extends StatelessWidget {
  String label;
  String labelDescription;
  Color? color;

  SingleLabelRow(
      {super.key,
      required this.label,
      required this.labelDescription,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MR14(
          text: label,
          maxLines: 1,
          alignment: TextAlign.left,
          color: color ?? Colors.black,
        ),
        BBLM14(labelDescription, color ?? Colors.black, 1, TextAlign.left),
      ],
    );
  }
}

class SBR14 extends StatelessWidget {
  String text;
  TextAlign alignment;
  int maxLines;
  Color? color;

  SBR14(
      {super.key,
      required this.text,
      required this.alignment,
      required this.maxLines,
      this.color});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(text,
        maxLines: maxLines,
        textAlign: alignment,
        style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: color ?? Colors.black));
  }
}

class B12 extends StatelessWidget {
  String text;
  TextAlign alignment;
  int maxLines;
  Color? color;

  B12(
      {super.key,
      required this.text,
      required this.alignment,
      required this.maxLines,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        maxLines: maxLines,
        textAlign: alignment,
        style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: color ?? Colors.black));
  }
}

class R12 extends StatelessWidget {
  String text;
  TextAlign alignment;
  int maxLines;
  Color? color;

  R12(
      {super.key,
      required this.text,
      required this.alignment,
      required this.maxLines,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        maxLines: maxLines,
        textAlign: alignment,
        style: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color ?? Colors.black));
  }
}

class SBR16 extends StatelessWidget {
  String text;
  TextAlign alignment;
  int maxLines;
  Color? color;

  SBR16(
      {super.key,
      required this.text,
      required this.alignment,
      required this.maxLines,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        maxLines: maxLines,
        textAlign: alignment,
        style: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: color ?? Colors.black));
  }
}

class NavigationIcon extends StatelessWidget {
  String label;
  IconData icon;
  VoidCallback function;

  NavigationIcon(
      {super.key,
      required this.label,
      required this.icon,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Container(
            child: Column(
          children: [
            Icon(
              icon,
              size: 24,
            ),
            BR8(label, Colors.black, 1)
          ],
        )),
      ),
    );
  }
}

//customer divider

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: const Color(0x1E1C1B1F).withOpacity(0.12),
      height: 20,
      thickness: 1,
    );
  }
}

//plain text button

class PlainTextBlackButton extends StatelessWidget {
  String text;
  VoidCallback onpressed;
  Color? color;

  PlainTextBlackButton(
      {super.key, required this.text, required this.onpressed, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Text(
        text,
        style: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: color ?? Colors.black),
      ),
    );
  }
}

//close button

class GenericCloseButton extends StatelessWidget {
  final VoidCallback function;
  final Color? color;

  const GenericCloseButton({super.key, required this.function, this.color});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: SizedBox(
        width: 16,
        height: 16,
        child: Icon(
          Icons.close,
          size: 18,
          color: color ?? Colors.black,
        ),
      ),
    );
  }
}

//pop info card

class PopUpInfoCard extends StatelessWidget {
  final String amountLabel_1;
  final String amountLabel_2;
  String? label1;
  String? label2;

  PopUpInfoCard(
      {super.key,
      required this.amountLabel_1,
      required this.amountLabel_2,
      this.label1,
      this.label2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: AppTheme.colors.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    MR12(
                        text: label1 ?? 'Total target \n for this goal',
                        alignment: TextAlign.center,
                        maxLines: 3),
                    VS4(),
                    B12(
                        text: '🏦 $amountLabel_1',
                        alignment: TextAlign.center,
                        maxLines: 1)
                  ],
                ),
                Column(
                  children: [
                    MR12(
                        text: label2 ?? 'Recommended \n monthly savings ',
                        alignment: TextAlign.center,
                        maxLines: 3),
                    VS4(),
                    B12(
                        text: '💵 $amountLabel_2',
                        alignment: TextAlign.center,
                        maxLines: 1)
                  ],
                ),
              ]),
        ],
      ),
    );
  }
}

class MR12 extends StatelessWidget {
  String text;
  TextAlign alignment;
  int maxLines;

  MR12({required this.text, required this.alignment, required this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
          fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
    );
  }
}

class RowLabel extends StatelessWidget {
  String description;
  String amount;

  RowLabel(this.description, this.amount, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BBRM14(description, AppTheme.colors.black, 6, TextAlign.center),
        BBRM14(amount, AppTheme.colors.black, 6, TextAlign.center),
      ],
    );
  }
}

class TwoColumnLabel extends StatelessWidget {
  String description;
  String content;
  CrossAxisAlignment cross;
  Color? color;

  TwoColumnLabel(this.description, this.content, this.cross, this.color,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: cross,
      children: [
        RM14(
            text: description,
            color: color ?? AppTheme.colors.black,
            maxLines: 1),
        SS8(),
        BBLM14(
            content, color ?? AppTheme.colors.black, 1, TextAlign.left //changed
            )
      ],
    );
  }
}

//modified to specifiy route
class MCBButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? color; // Added final keyword for immutability

  const MCBButton({super.key, required this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        children: [
          Icon(
            Icons.arrow_back,
            size: 14,
            color: color ?? Colors.black,
          ),
          const SizedBox(
            width: 4,
          ),
          PLS10('Back', color ?? Colors.black,
              1) // Default to black if color is null
        ],
      ),
    );
  }
}

//the generic ba

//the new tracking heading

class UPTrackingHeading extends StatelessWidget {
  final Color color;
  final String heading;
  final String description;
  final VoidCallback onPressed;

  const UPTrackingHeading(
      this.color, this.heading, this.description, this.onPressed,
      {super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SS36(),
        MCBButton(onPressed: onPressed),
        SS16(),
        BBLM14(heading, color, 1, TextAlign.left //changed
            ),
        BB10(description, color, 2, TextAlign.left),
      ]),
    );
  }
}

class TrackingHeadingDelete extends StatelessWidget {
  final Color color;
  final String heading;
  final String description;
  final VoidCallback onPressed;
  final VoidCallback deleteFunction;

  const TrackingHeadingDelete(this.color, this.heading, this.description,
      this.onPressed, this.deleteFunction,
      {super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SS36(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MCBButton(onPressed: onPressed),
            IconButton(
                onPressed: deleteFunction,
                icon: const Icon(
                  Icons.delete_outline,
                  size: 18,
                ))
          ],
        ),
        SS8(),
        BBLM14(heading, color, 1, TextAlign.left //changed
            ),
        BB10(description, color, 1, TextAlign.left),
      ]),
    );
  }
}

//small view icon and text button
class SmallArrowIconButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const SmallArrowIconButton(this.buttonText, this.onPressed, {super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(children: [
        BBBS12(buttonText, AppTheme.colors.green800, 1),
        const SizedBox(
          width: 8,
        ),
        Container(
          width: 17,
          height: 17,
          decoration: BoxDecoration(
            shape: BoxShape.circle, // Specify the circular shape
            color: AppTheme.colors
                .green300, // Set the desired background color of the circle container
          ),
          child: Center(
            child: Icon(
              Icons.arrow_forward,
              size: 13,
              color: AppTheme.colors.green800,
            ),
          ),
        ),
      ]),
    );
  }
}

//small view icon and text button

//small view icon and text button
class DisabledSmallArrowIconButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final IconData icon;

  const DisabledSmallArrowIconButton(this.buttonText, this.onPressed, this.icon,
      {super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(children: [
        Container(
          width: 17,
          height: 17,
          decoration: BoxDecoration(
            shape: BoxShape.circle, // Specify the circular shape
            color: AppTheme.colors
                .grey400, // Set the desired background color of the circle container
          ),
          child: Center(
            child: Icon(
              icon,
              size: 13,
              color: AppTheme.colors.grey650,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        BBBS12(buttonText, AppTheme.colors.grey650, 1),
      ]),
    );
  }
}

//custom button

class CustomActiveButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  Color? buttonColor;
  Color? textColor;

  CustomActiveButton(
      this.text, this.onPressed, this.buttonColor, this.textColor,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: MediaQuery.of(context).size.width * 0.88,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(buttonColor),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ))),
        onPressed: onPressed,
        child: TBM14(text, textColor, 1),
      ),
    );
  }
}

class TestCustomField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final void Function(String)? onChanged;
  final Color backgroundColor;
  final String inputLabelText;
  final List<TextInputFormatter>? inputFormatters;

  const TestCustomField({
    super.key,
    required this.controller,
    this.validator,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.obscureText = false,
    this.onChanged,
    required this.backgroundColor,
    required this.inputLabelText,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ILM12(inputLabelText, AppTheme.colors.grey650, 1),
          SS8(),
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
            height: 56,
            decoration: BoxDecoration(
              color: backgroundColor,
              border: const Border(
                bottom: BorderSide(
                  color: Colors
                      .black, // Change this color to your desired border color
                  width: 2.0, // Change this width to your desired border width
                ),
              ),
            ),
            child: TextFormField(
              controller: controller,
              inputFormatters: inputFormatters,
              validator: validator,
              decoration: InputDecoration(
                  hintText: hintText,
                  labelText: labelText,
                  border: InputBorder.none,
                  labelStyle: TextStyle(
                    color: AppTheme.colors.grey650,
                    fontSize: 12,
                    fontFamily: 'Roboto',
                  )),
              keyboardType: keyboardType,
              obscureText: obscureText,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}

class ComplexDropdown extends StatefulWidget {
  final List<DropdownItem> values;
  final DropdownItem preselectedValue;
  final Function(String) onChanged;
  final Color iconColor;
  final Color borderColor;
  final String? labelText;

  const ComplexDropdown({
    super.key,
    required this.values,
    required this.preselectedValue,
    required this.onChanged,
    required this.iconColor,
    required this.borderColor,
    required this.labelText,
  });

  @override
  _ComplexDropdownState createState() => _ComplexDropdownState();
}

class DropdownItem {
  final String value;
  final String? imagePath;
  final bool isDisabled;

  DropdownItem({
    required this.value,
    this.imagePath,
    this.isDisabled = false,
  });
}

class _ComplexDropdownState extends State<ComplexDropdown> {
  late DropdownItem _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.preselectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.labelText ?? '',
            style: TextStyle(color: Colors.grey[650]),
          ),
          const SizedBox(height: 8),
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: widget.borderColor, width: 2),
            ),
            child: DropdownButtonFormField<DropdownItem>(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
              icon: Icon(Icons.arrow_drop_down, color: widget.iconColor),
              value: _selectedItem,
              items: widget.values
                  .map(
                    (item) => DropdownMenuItem<DropdownItem>(
                      value: item,
                      onTap: item.isDisabled ? null : () {},
                      child: Row(
                        children: [
                          if (item.imagePath != null)
                            Image.asset(
                              item.imagePath!,
                              width: 24,
                              height: 24,
                            ),
                          if (item.imagePath != null) const SizedBox(width: 8),
                          Text(item.value),
                        ],
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (selectedItem) {
                if (selectedItem != null && selectedItem != _selectedItem) {
                  setState(() {
                    _selectedItem = selectedItem;
                    widget.onChanged(_selectedItem.value);
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class GeneralTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final void Function(String)? onChanged;
  final Color backgroundColor;
  final String inputLabelText;
  final List<TextInputFormatter>? inputFormatters;

  const GeneralTextField({
    super.key,
    required this.controller,
    this.validator,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.obscureText = false,
    this.onChanged,
    required this.backgroundColor,
    required this.inputLabelText,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ILM12(inputLabelText, AppTheme.colors.grey650, 1),
          SS8(),
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
            height: 56,
            decoration: BoxDecoration(
              color: backgroundColor,
              border: Border(
                bottom: BorderSide(
                  color: AppTheme
                      .colors.black, // Set your desired border color here
                  width: 0.5, // Set the desired border width
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: TextFormField(
                controller: controller,
                inputFormatters: inputFormatters,
                validator: validator,
                decoration: InputDecoration(
                    hintText: hintText,
                    border: InputBorder.none,
                    labelText: labelText,
                    labelStyle: TextStyle(
                      color: AppTheme.colors.grey650,
                      fontSize: 12,
                      fontFamily: 'Roboto',
                    )),
                keyboardType: keyboardType,
                obscureText: obscureText,
                onChanged: onChanged,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FocusChip extends StatelessWidget {
  const FocusChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 21,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: ShapeDecoration(
        color: AppTheme.colors.blue500,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.12),
        ),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Focus',
            style: TextStyle(
              color: Colors.white,
              fontSize: 9.19,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

//the card focus chip
class CardFocusChip extends StatelessWidget {
  const CardFocusChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        width: 41.75,
        height: 21,
        padding: const EdgeInsets.only(left: 2, right: 2),
        decoration: ShapeDecoration(
          color: AppTheme.colors.orange500,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 0.33, color: Color(0x1E1C1B1F)),
            borderRadius: BorderRadius.circular(13.12),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Focus',
              style: TextStyle(
                color: Colors.white,
                fontSize: 9.19,
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// have a disbaled and enabled state in the text field

//the chip -orange informative

class InformativeChip extends StatelessWidget {
  String informativeText;

  InformativeChip({super.key, required this.informativeText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(children: [
        Container(
            decoration: ShapeDecoration(
              color: const Color(0xFFFFDAAF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13.12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    informativeText,
                    style: GoogleFonts.montserrat(
                        fontSize: 10, color: AppTheme.colors.orange500),
                  ),
                ],
              ),
            ))
      ]),
    );
  }
}

class CustomChipFocus extends StatelessWidget {
  Color color;

  CustomChipFocus({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 41.75,
      height: 21,
      padding: const EdgeInsets.only(left: 2, right: 2),
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.33, color: Color(0x1E1C1B1F)),
          borderRadius: BorderRadius.circular(13.12),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Focus',
            style: TextStyle(
              color: Colors.white,
              fontSize: 9.19,
              fontFamily: 'Inter',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

//BR8 size 8 font
class BR8 extends StatelessWidget {
  @override
  final String title;
  final Color? color;
  final int maxLines;
  const BR8(this.title, this.color, this.maxLines, {super.key});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(title,
        maxLines: maxLines,
        style:
            GoogleFonts.montserrat(fontSize: 8, color: color ?? Colors.black));
  }
}

class CustomBackNav extends StatelessWidget {
  VoidCallback onPressed;

  CustomBackNav(@required this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        children: [
          const Icon(
            Icons.arrow_back,
            size: 14,
          ),
          const SizedBox(
            width: 4,
          ),
          PLS10('Home', Colors.black, 1)
        ],
      ),
    );
  }
}

//the 16 body bold text
class BB16 extends StatelessWidget {
  @override
  final String title;
  final Color? color;
  final int maxLines;
  const BB16(this.title, this.color, this.maxLines, {super.key});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(title,
        maxLines: maxLines,
        style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: color ?? Colors.black));
  }
}

class LinkBlueButton extends StatelessWidget {
  String? buttonText;
  VoidCallback? onPressed;

  LinkBlueButton({super.key, this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: TBM14('$buttonText', AppTheme.colors.blue500, 1),
    );
  }
}

//pop-up with text

class UpdatedTextAlertBox extends StatefulWidget {
  final String title;
  final String hintText;
  final Color buttonColor;
  final Color textfieldColor;
  final TextEditingController controller; // Accept controller as a parameter
  final TextInputType keyboardType; // Accept input types as a parameter
  String? descriptionText;
  VoidCallback saveFunction;

  UpdatedTextAlertBox(
      {super.key,
      required this.title,
      required this.hintText,
      required this.buttonColor,
      required this.textfieldColor,
      required this.controller,
      required this.keyboardType,
      this.descriptionText,
      required this.saveFunction});

  @override
  _UpdatedTextAlertBoxState createState() => _UpdatedTextAlertBoxState();
}

class _UpdatedTextAlertBoxState extends State<UpdatedTextAlertBox> {
  String _textFieldValue = '';

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white, // Change to the desired background color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28.0),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      content: SizedBox(
        height: MediaQuery.of(context).size.height * 0.20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16), // Replace SS16() with SizedBox
            Text(
              '${widget.descriptionText}',
              style: const TextStyle(fontSize: 12, color: Colors.black),
            ),
            const SizedBox(height: 8), // Replace SS8() with SizedBox
            Container(
              color: widget.textfieldColor,
              child: TextField(
                controller: widget.controller, // Use the provided controller
                keyboardType:
                    widget.keyboardType, // Use the provided input type
                onChanged: (value) {
                  setState(() {
                    _textFieldValue = value;
                  });
                },
                decoration: InputDecoration(hintText: widget.hintText),
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: widget.saveFunction,
          child: Text(
            'Save',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: widget.buttonColor,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Cancel',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.orange,
            ),
          ),
        ),
      ],
    );
  }
}

//the informative percentage rows

class InformationRow extends StatelessWidget {
  String? financeText;
  String? percentage;

  InformationRow({super.key, this.financeText, this.percentage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BBRS12('$financeText', AppTheme.colors.black, 1, TextAlign.left),
          BBRS12('$percentage', AppTheme.colors.black, 1, TextAlign.left),
        ],
      ),
    );
  }
}

//bullet points

class BulletPointRow extends StatelessWidget {
  String? text;
  Color? color;

  BulletPointRow({super.key, this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Container(
              width: 8,
              height: 8,
              decoration: ShapeDecoration(
                color: color,
                shape: const OvalBorder(),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.70,
            child: BBRS12('$text', AppTheme.colors.black, 3, TextAlign.left),
          )
        ],
      ),
    );
  }
}

//counters

class CustomCounter extends StatelessWidget {
  String? label;
  String? count;
  Color? counterColor;

  CustomCounter({super.key, this.count, this.label, this.counterColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: ShapeDecoration(
              color: const Color(0xFF3E63D3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Center(child: BBBS12('$count', Colors.white, 1)),
          ),
          const SizedBox(
            width: 8,
          ),
          BBBS12(
            '$label',
            AppTheme.colors.black,
            1,
          )
        ],
      ),
    );
  }
}

//note description and button

class ButtonWNote extends StatelessWidget {
  String? heading;
  String? description;
  VoidCallback onPressed;
  String? buttonText;

  ButtonWNote(
      {super.key,
      this.heading,
      this.description,
      required this.onPressed,
      this.buttonText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width *
                0.80, //can revert back to 373 if need be
            height: 164,
            decoration: const BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BBLM14(
                        '$heading', AppTheme.colors.black, 1, TextAlign.left),
                    SS8(),
                    BBRS12('$description', AppTheme.colors.black, 2,
                        TextAlign.left),
                    SS8(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NeonActiveButton('$buttonText', onPressed),
                      ],
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

//the coming soon features
class ComingSoonDialog extends StatelessWidget {
  const ComingSoonDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Coming Soon',
        style: GoogleFonts.montserrat(
          color: const Color(0xFF1C1B1F),
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      content: Text(
          style: GoogleFonts.montserrat(
            color: const Color(0xFF1C1B1F),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          'We\'re working on an exciting new feature to link your bank account data for easier daily financial management. We\'ll keep you posted on its launch.'),
      actions: <Widget>[
        TextButton(
          child: Text(
            'Close',
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500, color: AppTheme.colors.blue500),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

//the coming soon features
class FocusDialog extends StatelessWidget {
  const FocusDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Focus on being debt free',
        style: GoogleFonts.montserrat(
          color: const Color(0xFF1C1B1F),
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      content: Text(
          style: GoogleFonts.montserrat(
            color: const Color(0xFF1C1B1F),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          'Right now it is important that you focus on becoming debt-free.'),
      actions: <Widget>[
        TextButton(
          child: Text(
            'Close',
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500, color: AppTheme.colors.blue500),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

class TestingUI extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final void Function(String)? onChanged;
  final Color backgroundColor;
  final String inputLabelText;
  final List<TextInputFormatter>? inputFormatters;
  int? maxLength;

  TestingUI(
      {super.key,
      required this.controller,
      this.validator,
      this.hintText,
      this.labelText,
      this.keyboardType,
      this.obscureText = false,
      this.onChanged,
      required this.backgroundColor,
      required this.inputLabelText,
      this.inputFormatters,
      this.maxLength});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ILM12(inputLabelText, AppTheme.colors.grey650, 1),
          SS8(),
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
            height: 56,
            decoration: BoxDecoration(
              color: backgroundColor,
              border: Border(
                bottom: BorderSide(
                  color: AppTheme
                      .colors.black, // Set your desired border color here
                  width: 0.5, // Set the desired border width
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 24),
              child: TextFormField(
                controller: controller,
                inputFormatters: inputFormatters,
                validator: validator,
                maxLength: maxLength,
                decoration: InputDecoration(
                    hintText: hintText,
                    border: InputBorder.none,
                    labelText: labelText,
                    labelStyle: TextStyle(
                      color: AppTheme.colors.grey650,
                      fontSize: 12,
                      fontFamily: 'Roboto',
                    )),
                keyboardType: keyboardType,
                obscureText: obscureText,
                onChanged: onChanged,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlanRow extends StatelessWidget {
  String firstLabel;
  String secondLabel;
  Color? color;

  PlanRow(
      {super.key,
      required this.firstLabel,
      required this.secondLabel,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BBRM14(
          firstLabel,
          Colors.black,
          1,
          TextAlign.left,
        ),
        BBLM14(
          secondLabel,
          Colors.black,
          1,
          TextAlign.left,
        ),
      ],
    );
  }
}

class CustomSuccessAlert extends StatefulWidget {
  String heading;
  String description;
  String emoji;

  CustomSuccessAlert({
    super.key,
    required this.heading,
    required this.description,
    required this.emoji,
  });

  @override
  State<CustomSuccessAlert> createState() => _CustomSuccessAlertState();
}

class _CustomSuccessAlertState extends State<CustomSuccessAlert> {
  bool isVisibile = true;
  @override
  void initState() {
    super.initState();

    // Timer to automatically close the alert after 7 seconds
    Timer(const Duration(seconds: 7), () {
      if (mounted) {
        setState(() {
          isVisibile = false; // Hide the component instead of closing the page
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return isVisibile
        ? Column(
            children: [
              MS24(),
              Container(
                decoration: ShapeDecoration(
                  color: const Color(0xFFEBFCF7),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF5CC9A9)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BTM16(widget.emoji, Colors.black, 1),
                        SizedBox(
                          width: 266,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BB16(widget.heading, Colors.black, 1),
                              VS4(),
                              RR14(widget.description, Colors.black, 3)
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          )
        : const NullBox();
  }
}

class WidgetAccordion extends StatefulWidget {
  final String heading;
  bool toggle;
  final VoidCallback toggleFunction;

  WidgetAccordion(this.heading, this.toggle, this.toggleFunction, {super.key});

  @override
  State<WidgetAccordion> createState() => _WidgetAccordionState();
}

class _WidgetAccordionState extends State<WidgetAccordion> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            height: 56,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: Color(0xffD9D9D9), // Set the color of the border
                  width: 1.0, // Set the width of the border
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.heading,
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  InkWell(
                    onTap: widget.toggleFunction,
                    child: (widget.toggle)
                        ? const Icon(Icons.keyboard_arrow_up_outlined)
                        : const Icon(Icons.keyboard_arrow_down_outlined),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LargeCircleIconButton extends StatelessWidget {
  final IconData icon;
  String buttonText;
  final VoidCallback buttonFunction;
  final Color? iconColor;
  final Color? buttonColor;

  LargeCircleIconButton(
      {super.key,
      required this.icon,
      required this.buttonText,
      required this.buttonFunction,
      this.buttonColor,
      this.iconColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonFunction,
      child: SizedBox(
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: ShapeDecoration(
                color: buttonColor ?? AppTheme.colors.blue500,
                shape: const OvalBorder(),
              ),
              child: Center(
                child: Icon(
                  icon,
                  color: iconColor ?? Colors.white,
                ),
              ),
            ),
            const VSS2(),
            VS4(),
            SizedBox(
              width: 80,
              child: Text(
                buttonText,
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class VSS2 extends StatelessWidget {
  const VSS2({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 2,
    );
  }
}

//custom alignment
class CABML16 extends StatelessWidget {
  String text;
  Color? color;
  int? maxLines;
  TextAlign alignment;

  CABML16(
      {super.key,
      required this.text,
      this.color,
      this.maxLines,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(text,
        maxLines: maxLines,
        textAlign: alignment,
        style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: color ?? Colors.black));
  }
}

class RM14 extends StatelessWidget {
  String text;
  Color? color;
  int maxLines;

  RM14({required this.text, required this.maxLines, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
          fontSize: 14,
          color: color ?? Colors.black,
          fontWeight: FontWeight.w500),
    );
  }
}

class BLM25 extends StatelessWidget {
  String text;
  BLM25({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
          fontSize: 25, color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}

class CardListWithButton extends StatelessWidget {
  String heading;
  String description;
  bool? focus = false;
  VoidCallback buttonFunction;
  Color iconBackgroundColor;
  Color iconColor;
  IconData icon;

  CardListWithButton(
      {super.key,
      required this.heading,
      required this.description,
      this.focus,
      required this.buttonFunction,
      required this.iconBackgroundColor,
      required this.iconColor,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonFunction,
      child: Container(
        width: 373,
        //height: 80,
        decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                  color: Color(0x331C1B1F), width: 1), // Width specified
            )),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 12.0, top: 12, bottom: 12, right: 12),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: ShapeDecoration(
                    color: iconBackgroundColor,
                    shape: const OvalBorder(),
                  ),
                  child: Icon(
                    icon,
                    size: 24,
                    color: iconColor,
                  ),
                ),
                SizedBox(
                    width: 220,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        B12(
                            text: heading,
                            alignment: TextAlign.left,
                            maxLines: 1),
                        VS4(),
                        R12(
                            text: description,
                            alignment: TextAlign.left,
                            maxLines: 1),
                      ],
                    )),
                InkWell(
                  onTap: buttonFunction,
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF1C1B1F),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class AlertBoxWithButton extends StatelessWidget {
  String heading;
  String description;
  IconData icon;
  String buttonText;
  VoidCallback buttonFunction;
  bool? disabled = false;

  AlertBoxWithButton(
      {super.key,
      required this.heading,
      required this.description,
      required this.icon,
      required this.buttonText,
      required this.buttonFunction,
      this.disabled});

  @override
  final Color grey650Opacity = AppTheme.colors.grey650.withOpacity(0.8);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: AppTheme.colors.bluegreen200,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppTheme.colors.bordergrey),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                size: 24,
                color: AppTheme.colors.blue500,
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BBL16(heading, Colors.black, 2),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: 268,
                    child: MR14(
                        text: description,
                        alignment: TextAlign.left,
                        maxLines: 4),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: buttonFunction,
                    child: Container(
                      decoration: ShapeDecoration(
                        color: (disabled == true)
                            ? AppTheme.colors.grey200
                            : const Color(0xFF3E63D3),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xCCA09E9D)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, right: 12, top: 8, bottom: 8),
                        child: Text(
                          buttonText,
                          style: GoogleFonts.roboto(
                            color: (disabled == true)
                                ? grey650Opacity
                                : Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
