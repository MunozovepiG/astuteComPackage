import 'package:flutter/material.dart';

import '../astute_components.dart';

class GeneralTip extends StatelessWidget {
  String? heading;
  String? decsription;
  IconData icon;

  GeneralTip({this.heading, this.decsription, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80,

      //height: 110,
      decoration: ShapeDecoration(
        color: AppTheme.colors.blue500,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 8,
            offset: Offset(0, 3),
            spreadRadius: 0,
          )
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16, left: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon as IconData?,
                color: Colors.white,
              ),
              SizedBox(
                width: 4,
              ),
              Container(
                //color: Colors.green,
                width: (MediaQuery.of(context).size.width * 0.60),
                child: BBL16(heading!, Colors.white, 2),
              )
            ],
          ),
          SS8(),
          Container(
            // color: Colors.green,
            width: (MediaQuery.of(context).size.width * 0.70),
            child: BBRM14(decsription!, Colors.white, 4, TextAlign.left),
          )
        ]),
      ),
    );
  }
}

class TipsWAction extends StatelessWidget {
  String? heading;
  String? decsription;
  IconData icon;
  VoidCallback onPressed;
  String textButton;

  TipsWAction(
      {this.heading,
      this.decsription,
      required this.icon,
      required this.onPressed,
      required this.textButton});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80,

      //height: 110,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 8,
            offset: Offset(0, 3),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16, left: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon as IconData?,
                color: Colors.black,
              ),
              SizedBox(
                width: 4,
              ),
              Container(
                //color: Colors.green,
                width: (MediaQuery.of(context).size.width * 0.60),
                child: BBL16(heading!, Colors.black, 2),
              )
            ],
          ),
          SS8(),
          Row(
            children: [
              Icon(
                icon as IconData?,
                color: Colors.white,
              ),
              SizedBox(
                width: 4,
              ),
              Container(
                // color: Colors.green,
                width: (MediaQuery.of(context).size.width * 0.60),
                child: BBRM14(decsription!, Colors.black, 4, TextAlign.left),
              ),
            ],
          ),
          SS8(),
          Row(
            children: [
              Icon(
                icon as IconData?,
                color: Colors.white,
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: onPressed,
                child: Container(
                  width: 132,
                  height: 30,
                  decoration: ShapeDecoration(
                    color: AppTheme.colors.green300,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Center(
                      child: TBM14(textButton, AppTheme.colors.green800, 1)),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
