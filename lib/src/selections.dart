import 'package:astute_components/src/fonts.dart';
import 'package:astute_components/src/spaces.dart';
import 'package:astute_components/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//radio buttons

class RadioButtons extends StatefulWidget {
  final List<String> options;
  final Color buttonColor;
  final ValueChanged<String> onChanged;
  final String labelText;
  final int disabledIndex; // New parameter to specify the index to disable

  RadioButtons({
    required this.options,
    required this.buttonColor,
    required this.onChanged,
    required this.labelText,
    required this.disabledIndex,
  });

  @override
  _RadioButtonsState createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ILM12(widget.labelText, AppTheme.colors.grey800, 1),
        Column(
          children: widget.options.asMap().entries.map(
            (entry) {
              final index = entry.key;
              final option = entry.value;
              final isOptionDisabled = index == widget.disabledIndex;

              return RadioListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 0.0, top: 4, bottom: 2),
                  child: Text(
                    option,
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: isOptionDisabled ? Colors.grey : Colors.black,
                    ),
                  ),
                ),
                value: option,
                groupValue: _selectedOption,
                onChanged: isOptionDisabled
                    ? null
                    : (value) {
                        setState(() {
                          _selectedOption = value.toString();
                          widget.onChanged(_selectedOption!);
                        });
                      },
                activeColor: widget.buttonColor,
                contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
              );
            },
          ).toList(),
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
  final String? labelText;

  MyDropdown(
      {required this.values,
      required this.preselectedValue,
      required this.onChanged,
      required this.iconColor,
      required this.borderColor,
      required this.labelText});

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
          ILM12('${widget.labelText}', AppTheme.colors.grey650, 1),
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

//dropw down where active and deactive
class CustomDropdown extends StatefulWidget {
  final List<String> values;
  final String preselectedValue;
  final Function(String) onChanged;
  final Color iconColor;
  final Color borderColor;
  final String? labelText;
  final bool disabled; // New property
  final Color? backgroundColor;

  CustomDropdown(
      {required this.values,
      required this.preselectedValue,
      required this.onChanged,
      required this.iconColor,
      required this.borderColor,
      required this.labelText,
      this.disabled = false,
      this.backgroundColor // Default value is false
      });

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
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
          ILM12('${widget.labelText}', AppTheme.colors.grey650, 1),
          SS8(),
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: widget.borderColor, width: 2),
            ),
            child: IgnorePointer(
              ignoring: widget
                  .disabled, // Disable interaction based on the 'disabled' property
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
          ),
        ],
      ),
    );
  }
}

class AstuteSlectionButton extends StatefulWidget {
  final String itemText;
  final bool initialSelected;
  final VoidCallback selectionFunction;

  AstuteSlectionButton({
    required this.itemText,
    required this.selectionFunction,
    required this.initialSelected,
  });

  @override
  State<AstuteSlectionButton> createState() => _AstuteSlectionButtonState();
}

class _AstuteSlectionButtonState extends State<AstuteSlectionButton> {
  late bool isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = widget.initialSelected;
  }

  void toggleSelection() {
    setState(() {
      isSelected = !isSelected;
    });
    widget.selectionFunction();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: toggleSelection,
      child: Container(
        constraints: BoxConstraints(
          minHeight: 56, // Set the minimum height here
        ),
        decoration: ShapeDecoration(
          color: (isSelected)
              ? AppTheme.colors.pink200.withOpacity(0.55)
              : Colors.white, // Adjust the color as needed
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0x8C1C1B1F)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              isSelected
                  ? BR16(widget.itemText, AppTheme.colors.blue500, 1)
                  : RR16(widget.itemText, Colors.black, 1)
            ],
          ),
        ),
      ),
    );
  }
}
