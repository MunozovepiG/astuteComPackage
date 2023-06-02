import 'package:astute_components/src/spaces.dart';
import 'package:astute_components/src/theme.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class SmallAlertBox extends StatelessWidget {
  final String title;
  final String message1;
  final String message2;
  final String positiveText;
  final String negativeText;
  final VoidCallback positiveAction;
  final VoidCallback negativeAction;
  final Color mainColor;

  SmallAlertBox(
      {required this.title,
      required this.message1,
      required this.message2,
      required this.positiveText,
      required this.negativeText,
      required this.positiveAction,
      required this.negativeAction,
      required this.mainColor});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppTheme.colors.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            28.0), // Adjust the value to customize the rounded corners
      ),
      title: Text(
        title,
        style: GoogleFonts.montserrat(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      content: Text(
        message1,
        style: GoogleFonts.montserrat(fontSize: 14, color: Colors.black),
      ),
      actions: <Widget>[
        TextButton(
          child: Text(
            positiveText,
            style: GoogleFonts.roboto(
                color: mainColor, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          onPressed: positiveAction,
        ),
        TextButton(
          child: Text(
            negativeText,
            style: GoogleFonts.roboto(
                color: mainColor, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          onPressed: negativeAction,
        ),
      ],
    );
  }
}

//larget alert box
class LargeAlertBox extends StatelessWidget {
  final String title;
  final String message1;
  final String message2;
  final String positiveText;
  final String negativeText;
  final VoidCallback positiveAction;
  final VoidCallback negativeAction;

  LargeAlertBox(
      {required this.title,
      required this.message1,
      required this.message2,
      required this.positiveText,
      required this.negativeText,
      required this.negativeAction,
      required this.positiveAction});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppTheme.colors.background,
      title: Text(
        title,
        style: GoogleFonts.montserrat(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              message1,
              style: GoogleFonts.montserrat(fontSize: 14, color: Colors.black),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text(
            positiveText,
            style: GoogleFonts.roboto(
                color: AppTheme.colors.blue500,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          onPressed: positiveAction,
        ),
        TextButton(
          child: Text(
            negativeText,
            style: GoogleFonts.roboto(
                color: AppTheme.colors.blue500,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          onPressed: negativeAction,
        ),
      ],
    );
  }
}

//pop-up with text
class ReusableAlertBox extends StatefulWidget {
  final String title;
  final String hintText;
  final Color buttonColor;
  final Color textfieldColor;

  ReusableAlertBox(
      this.title, this.hintText, this.buttonColor, this.textfieldColor);
  @override
  _ReusableAlertBoxState createState() => _ReusableAlertBoxState();
}

class _ReusableAlertBoxState extends State<ReusableAlertBox> {
  TextEditingController _textEditingController = TextEditingController();
  String _textFieldValue = '';

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppTheme.colors.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            28.0), // Adjust the value to customize the rounded corners
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Text(widget.title,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
      content: Container(
        height: MediaQuery.of(context).size.height * 0.20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SS16(),
            Text('a sample description',
                style: GoogleFonts.roboto(fontSize: 12, color: Colors.black)),
            SS8(),
            Container(
              color: widget.textfieldColor,
              child: TextField(
                controller: _textEditingController,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                ],
                keyboardType: TextInputType.numberWithOptions(decimal: true),
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
            onPressed: () {
              Navigator.of(context).pop(_textFieldValue);
            },
            child: Text('Save',
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: widget.buttonColor))),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel',
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppTheme.colors.orange500))),
      ],
    );
  }
}
