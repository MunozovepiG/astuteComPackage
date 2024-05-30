import 'package:astute_components/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'fonts.dart';

//step one incomplete
class S1trackerIC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 254,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //item 1 - the first step

          ActiveStep('step 1'),

          //item 2 - the second step

          InActvieStep(),

          //item 3 - the third step

          InActvieStep(),

          //item 4 - the fourth step

          InActvieStep(),
        ],
      ),
    );
  }
}

//step1 compeleted

class S1trackerC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 254,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //item 1 - the first step

          CompletedStep(),

          //item 2 - the second step

          Container(
            width: 58.65,
            height: 25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //BB10('step 1', Colors.black, 1),
                Container(
                  height: 6,
                  decoration: BoxDecoration(
                    color: AppTheme.colors.grey400,
                  ),
                )
              ],
            ),
          ),

          //item 3 - the third step

          Container(
            width: 58.65,
            height: 25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //BB10('step 1', Colors.black, 1),
                Container(
                  height: 6,
                  decoration: BoxDecoration(
                    color: AppTheme.colors.grey400,
                  ),
                )
              ],
            ),
          ),

          //item 4 - the fourth step

          Container(
            width: 58.65,
            height: 25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //BB10('step 1', Colors.black, 1),
                Container(
                  height: 6,
                  decoration: BoxDecoration(
                    color: AppTheme.colors.grey400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

//step two incomplete

class S2trackerIC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 254,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //item 1 - the first step

          CompletedStep(),
          //item 2 - the second step

          ActiveStep('step 2'),

          //item 3 - the third step

          InActvieStep(),

          //item 4 - the fourth step

          InActvieStep(),
        ],
      ),
    );
  }
}

// second step completed

class S2trackerC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 254,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //item 1 - the first step
          Container(
            width: 58.65,
            height: 25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFDFAF5),
                    shape: OvalBorder(
                      side: BorderSide(width: 0.25, color: Color(0xFF3E63D3)),
                    ),
                  ),
                  child: Center(
                      child: Icon(Icons.check,
                          size: MediaQuery.of(context).size.height * 0.02,
                          color: AppTheme.colors.blue500)),
                )
              ],
            ),
          ),

          //item 2 - the second step

          Container(
            width: 58.65,
            height: 25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppTheme.colors.blue500,
                  ),
                  child: Center(
                      child: Icon(
                    Icons.check,
                    size: MediaQuery.of(context).size.height * 0.02,
                    color: Colors.white,
                  )),
                )
              ],
            ),
          ),

          //item 3 - the third step

          Container(
            width: 58.65,
            height: 25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //BB10('step 1', Colors.black, 1),
                Container(
                  height: 6,
                  decoration: BoxDecoration(
                    color: AppTheme.colors.grey400,
                  ),
                )
              ],
            ),
          ),

          //item 4 - the fourth step

          Container(
            width: 58.65,
            height: 25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //BB10('step 1', Colors.black, 1),
                Container(
                  height: 6,
                  decoration: BoxDecoration(
                    color: AppTheme.colors.grey400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// step 3 incomplete
class S3trackerIC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 254,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //item 1 - the first step
          CompletedStep(),

          //item 2 - the second step
          CompletedStep(),
          //item 3 - the third step

          ActiveStep('step 3'),

          //item 4 - the fourth step
          InActvieStep(),
        ],
      ),
    );
  }
}

//third step completed
class S3trackerC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 254,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //item 1 - the first step
          Container(
            width: 58.65,
            height: 25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFDFAF5),
                    shape: OvalBorder(
                      side: BorderSide(width: 0.25, color: Color(0xFF3E63D3)),
                    ),
                  ),
                  child: Center(
                      child: Icon(Icons.check,
                          size: MediaQuery.of(context).size.height * 0.02,
                          color: AppTheme.colors.blue500)),
                )
              ],
            ),
          ),

          //item 2 - the second step

          Container(
            width: 58.65,
            height: 25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFDFAF5),
                    shape: OvalBorder(
                      side: BorderSide(width: 0.25, color: Color(0xFF3E63D3)),
                    ),
                  ),
                  child: Center(
                      child: Icon(Icons.check,
                          size: MediaQuery.of(context).size.height * 0.02,
                          color: AppTheme.colors.blue500)),
                )
              ],
            ),
          ),

          //item 3 - the third step

          Container(
            width: 58.65,
            height: 25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFDFAF5),
                    shape: OvalBorder(
                      side: BorderSide(width: 0.25, color: Color(0xFF3E63D3)),
                    ),
                  ),
                  child: Center(
                      child: Icon(Icons.check,
                          size: MediaQuery.of(context).size.height * 0.02,
                          color: AppTheme.colors.blue500)),
                )
              ],
            ),
          ),
          //item 4 - the fourth step

          Container(
            width: 58.65,
            height: 25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //BB10('step 1', Colors.black, 1),
                Container(
                  height: 6,
                  decoration: BoxDecoration(
                    color: AppTheme.colors.grey400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// final step incomplete

// step 3 incomplete
class S4trackerIC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 254,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //item 1 - the first step
          CompletedStep(),

          //item 2 - the second step
          CompletedStep(),

          //item 3 - the third step
          CompletedStep(),

          //item 4 - the final step

          ActiveStep('step 4')
        ],
      ),
    );
  }
}

//final step completed

class S4trackerC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 254,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //item 1 - the first step
          CompletedStep(),

          //item 2 - the second step
          CompletedStep(),

          //item 3 - the third step

          CompletedStep(),
          //item 4 - the fourth step

          CompletedStep()
        ],
      ),
    );
  }
}

//the checked component

class CompletedStep extends StatelessWidget {
  const CompletedStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 58.65,
        height: 25,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Icon(
                  Icons.check,
                  size: 18,
                ),
              ),
              Container(
                height: 6,
                decoration: BoxDecoration(
                    color: AppTheme.colors.blue500,
                    border: Border(
                        bottom: BorderSide(color: AppTheme.colors.blue500))),
              )
            ]));
  }
}

//active step

class ActiveStep extends StatelessWidget {
  @override
  String step;
  ActiveStep(this.step);

  Widget build(BuildContext context) {
    return Container(
      width: 58.65,
      height: 25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BB10(
            step,
            Colors.black,
            1,
            TextAlign.left,
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            height: 6,
            decoration: BoxDecoration(
                color: AppTheme.colors.blue500,
                border:
                    Border(bottom: BorderSide(color: AppTheme.colors.blue500))),
          )
        ],
      ),
    );
  }
}

class InActvieStep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58.65,
      height: 25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //BB10('step 1', Colors.black, 1),
          Container(
            height: 6,
            decoration: BoxDecoration(
              color: AppTheme.colors.grey400,
            ),
          )
        ],
      ),
    );
  }
}
