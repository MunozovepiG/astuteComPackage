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
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width * 0.88,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xffb3E63D3)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ))),
        onPressed: onPressed,
        child: TBM14(text, Colors.white, 1),
      ),
    );
  }
}

//grey dis-actived button

class DisabledRoundButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  DisabledRoundButton(this.text, this.onPressed);

  @override
  final Color grey650Opacity = AppTheme.colors.grey650.withOpacity(0.8);
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width * 0.88,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppTheme.colors.grey200),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ))),
        onPressed: onPressed,
        child: TBM14(text, grey650Opacity, 1),
      ),
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
      label: BB10(text, textColor, 1, TextAlign.left),
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
      child: BB10(text, textColor, 1, TextAlign.left),
    );
  }
}

//back button

class CBButton extends StatelessWidget {
  final VoidCallback cancelAction;
  final bool backButton;
  final Color? color;
  final bool? closeButton;

  CBButton({
    required this.cancelAction,
    this.color,
    bool? backButton,
    bool? closeButton,
  })  : this.backButton = backButton ?? true,
        this.closeButton = backButton ?? true; // Assign default value

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      // color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          (backButton)
              ? InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    child: Row(children: [
                      Icon(
                        Icons.arrow_back,
                        size: 14,
                        color: color ?? Colors.black,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      PLS10('Back', color ?? Colors.black, 1),
                    ]),
                  ),
                )
              : SizedBox(
                  height: 0,
                ),

          //the close button

          (closeButton == true)
              ? InkWell(onTap: cancelAction, child: Icon(Icons.close, size: 16))
              : SizedBox(
                  height: 0,
                )
        ],
      ),
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
        label: BBBS12(buttonText, Colors.black, 1));
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

//edit button with heading

class EditLabel extends StatelessWidget {
  String label;
  VoidCallback editFunction;

  EditLabel(this.label, this.editFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        BBLM14(label, Colors.black, 1, TextAlign.left),
        InkWell(
          onTap: editFunction,
          child: Icon(
            Icons.edit,
            size: 16,
            color: AppTheme.colors.blue500,
          ),
        )
      ]),
    );
  }
}
