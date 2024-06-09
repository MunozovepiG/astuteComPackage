import 'package:astute_components/src/fonts.dart';
import 'package:astute_components/src/spaces.dart';
import 'package:astute_components/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final void Function(String)? onChanged;

  final String inputLabelText;
  final List<TextInputFormatter>? inputFormatters;

  MyCustomTextField({
    Key? key,
    required this.controller,
    this.validator,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.obscureText = false,
    this.onChanged,
    required this.inputLabelText,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BBLM14(inputLabelText, Colors.black, 2, TextAlign.left),
          SS8(),
          Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: 48,
              color: Colors.white,
              child: TextFormField(
                controller: controller,
                inputFormatters: inputFormatters,
                validator: validator,
                decoration: InputDecoration(
                  hintText: hintText,
                  labelText: labelText,
                  labelStyle: TextStyle(
                    color: AppTheme.colors.grey650,
                    fontSize: 12,
                    fontFamily: 'Roboto',
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xfbb49454F)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xfbb49454F)),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xfbb49454F)),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xfbb49454F)),
                  ),
                ),
                keyboardType: keyboardType,
                obscureText: obscureText,
                onChanged: onChanged,
              )),
        ],
      ),
    );
  }
}
// large text form field

class LongTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final void Function(String)? onChanged;
  final Color backgroundColor;
  final String inputLabelText;
  final List<TextInputFormatter>? inputFormatters;

  LongTextField(
      {required this.hintText,
      required this.controller,
      required this.backgroundColor,
      required this.labelText,
      required this.inputLabelText,
      required this.obscureText,
      required this.inputFormatters,
      required this.keyboardType,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ILM12(inputLabelText, AppTheme.colors.grey650, 1),
        SS8(),
        Container(
          width: MediaQuery.of(context).size.width * 0.90,
          color: backgroundColor,
          child: Column(
            children: [
              TextField(
                controller: controller,
                maxLines: null, // Allows unlimited lines of text input
                decoration: InputDecoration(
                  hintText: hintText,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
