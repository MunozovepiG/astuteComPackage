import 'package:astute_components/src/fonts.dart';
import 'package:astute_components/src/theme.dart';
import 'package:flutter/material.dart';

//main medium buttons
class MediumMainButton extends StatelessWidget {
  final Color? color;
  final String text;
  final VoidCallback onPressed;

  MediumMainButton({this.color, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xffb3E63D3),
          shadowColor: Color.fromRGBO(24, 24, 22, 0.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPressed,
        child: TBM14('${text}', color ?? Colors.white, 1));
  }
}

//neon active button

class NeonActiveButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  NeonActiveButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xffbCFF850)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ))),
      onPressed: onPressed,
      child: TBM14(text, AppTheme.colors.green800, 1),
    );
  }
}

//grey dis-actived button

class DisabledRoundButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  DisabledRoundButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppTheme.colors.grey400),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ))),
      onPressed: onPressed,
      child: TBM14(text, AppTheme.colors.grey800, 1),
    );
  }
}

//icon + text button

class IconTextButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final VoidCallback onPressed;
  final Color textColor;

  IconTextButton(
      {required this.icon,
      required this.color,
      required this.text,
      required this.onPressed,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: onPressed,
      label: BB10(text, textColor, 1, TextAlign.start),
    );
  }
}

//Plain text button

class PlainTextButton extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback onPressed;
  final Color textColor;

  PlainTextButton(
      {required this.color,
      required this.text,
      required this.onPressed,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: BB10(text, textColor, 1, TextAlign.start),
    );
  }
}

//back button

class CBButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: [
          Icon(
            Icons.arrow_back,
            size: 14,
          ),
          SizedBox(
            width: 4,
          ),
          PLS10('Back', Colors.black, 1)
        ],
      ),
      onTap: () => Navigator.of(context).pop(),
    );
  }
}

//Plain tex button

class BasicPlainTextButton extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback onPressed;
  final Color textColor;

  BasicPlainTextButton(
      {required this.color,
      required this.text,
      required this.onPressed,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: TBM14(text, textColor, 1),
    );
  }
}

//small view icon and text button
class SmallView extends StatelessWidget {
  final IconData icon;
  final String buttonText;
  final VoidCallback onPressed;

  SmallView(this.icon, this.buttonText, this.onPressed);
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        icon: Container(
          width: 17,
          height: 17,
          decoration: BoxDecoration(
            shape: BoxShape.circle, // Specify the circular shape
            color: AppTheme.colors
                .green300, // Set the desired background color of the circle container
          ),
          child: Center(
            child: Icon(
              icon,
              size: 13,
              color: AppTheme.colors.green800,
            ),
          ),
        ),
        onPressed: onPressed,
        label: BBBS12(buttonText, Colors.black, 1, TextAlign.start));
  }
}

//neon icon button
//example use case to view more on the cards
class ArrowIButton extends StatelessWidget {
  final VoidCallback onPressed;

  ArrowIButton(this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle, // Specify the circular shape
          color: AppTheme.colors
              .green300, // Set the desired background color of the circle container
        ),
        child: InkWell(
          child: Center(
              child: Icon(
            Icons.arrow_forward_outlined,
            size: 14,
          )),
          onTap: onPressed,
        ));
  }
}
