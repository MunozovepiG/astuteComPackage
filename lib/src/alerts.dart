import 'package:astute_components/astute_components.dart';
import 'package:astute_components/src/chips.dart';
import 'package:flutter/material.dart';

class InformationAlert extends StatelessWidget {
  final VoidCallback closeAlert;

  InformationAlert(this.closeAlert);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          // minHeight: 128,
          ),
      width: MediaQuery.of(context).size.width * 1.0,
      decoration: ShapeDecoration(
        color: AppTheme.colors.blue050,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFF0052EA)),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //the information Icon
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.info_outline,
                      size: 20,
                      color: Color(0xfbb0052EA),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 16,
              ),
              //the content
              Container(
                width: MediaQuery.of(context).size.width * 0.67,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BTM16('Text', Colors.black, 1),
                    SS8(),
                    RR14('hey', Colors.black, 5)
                  ],
                ),
              ),

              //the close button
              InkWell(onTap: closeAlert, child: Icon(Icons.close, size: 16))
            ],
          ),
        ]),
      ),
    );
  }
}

class SuccessAlert extends StatelessWidget {
  final VoidCallback closeAlert;

  SuccessAlert(this.closeAlert);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          // minHeight: 128,
          ),
      width: MediaQuery.of(context).size.width * 1.0,
      decoration: ShapeDecoration(
        color: AppTheme.colors.green150,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFF23A047)),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //the information Icon
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      size: 20,
                      color: Color(0xfbb23A047),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 16,
              ),
              //the content
              Container(
                width: MediaQuery.of(context).size.width * 0.67,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BTM16('Text', Colors.black, 1),
                    SS8(),
                    RR14('hey', Colors.black, 5)
                  ],
                ),
              ),

              //the close button
              InkWell(onTap: closeAlert, child: Icon(Icons.close, size: 16))
            ],
          ),
        ]),
      ),
    );
  }
}

//accordins

class Accordin extends StatefulWidget {
  final String heading;
  final String description;

  Accordin(this.heading, this.description);

  @override
  State<Accordin> createState() => _AccordinState();
}

class _AccordinState extends State<Accordin> {
  bool open = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      child: Column(children: [
        Container(
          height: 56,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: Color(0xffbbD9D9D9), // Set the color of the border
                width: 1.0, // Set the width of the border
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BR16(widget.heading, Colors.black, 1),
                InkWell(
                    onTap: () {
                      setState(() {
                        open = !open;
                      });
                    },
                    child: (open)
                        ? Icon(Icons.keyboard_arrow_up_outlined)
                        : Icon(Icons.keyboard_arrow_down_outlined))
              ],
            ),
          ),
        ),
        open
            ? Container(
                width: MediaQuery.of(context).size.width * 1.0,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, left: 8.0, right: 8.0, bottom: 16),
                  child: RR14(widget.description, Colors.black, 5),
                ))
            : Text('')
      ]),
    );
  }
}

//information cards
class InformationCards extends StatelessWidget {
  bool chip = false;
  final String chipText;
  final String cardHeading;
  final String cardDescription;

  InformationCards(
      this.chip, this.chipText, this.cardHeading, this.cardDescription);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 1,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFACAAA8)),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                (chip)
                    ? Column(
                        children: [
                          AstuteChip(chipText),
                          SS8(),
                        ],
                      )
                    : SizedBox(
                        height: 0,
                      ),
                BTM18(cardHeading, Colors.black, 1),
                SS8(),
                RR14(cardDescription, Colors.black, 5)
              ],
            ),
          ),
        ));
  }
}
