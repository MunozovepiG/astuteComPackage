import 'package:astute_components/astute_components.dart';
import 'package:flutter/material.dart';

class TwoItemLabel extends StatelessWidget {
  String? labelText;
  Color? color;
  String? descriptionText;

  TwoItemLabel(this.labelText, this.color, this.descriptionText);
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BBRS12('$labelText', color, 1, TextAlign.left),
        SizedBox(
          height: 4,
        ),
        BBLM14(
          '$descriptionText',
          color,
          1,
        ),
      ],
    );
  }
}
