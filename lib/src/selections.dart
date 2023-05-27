import 'package:astute_components/src/fonts.dart';
import 'package:astute_components/src/spaces.dart';
import 'package:astute_components/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//radio buttons

class RadioButtons extends StatefulWidget {
  final List<String> options;
  final Color buttonColor;
  final Function(String) onChanged;
  final String labelText;

  RadioButtons({
    required this.options,
    required this.buttonColor,
    required this.onChanged,
    required this.labelText,
  });

  @override
  _RadioButtonsState createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  String _selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ILM12(widget.labelText, AppTheme.colors.grey800, 1),
        Column(
          children: widget.options
              .map(
                (option) => RadioListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Text(option,
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: Colors.black)),
                  ),
                  value: option,
                  groupValue: _selectedOption,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value.toString();
                      widget.onChanged(_selectedOption);
                    });
                  },
                  activeColor: widget.buttonColor,
                  contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

//the dropdown

class MyDropdown extends StatefulWidget {
  final List<String> values;
  final String preselectedValue;
  final Function(String) onChanged;
  final Color iconColor;
  final Color borderColor;

  MyDropdown(
      {required this.values,
      required this.preselectedValue,
      required this.onChanged,
      required this.iconColor,
      required this.borderColor});

  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  late String _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.preselectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ILM12('Sample', AppTheme.colors.grey650, 1),
          SS8(),
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: widget.borderColor, width: 2),
            ),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
              icon: Icon(Icons.arrow_drop_down, color: widget.iconColor),
              value: _selectedValue,
              items: widget.values
                  .map(
                    (value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                if (value != null && value != _selectedValue) {
                  setState(() {
                    _selectedValue = value;
                    widget.onChanged(_selectedValue);
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

//calendar button and label
