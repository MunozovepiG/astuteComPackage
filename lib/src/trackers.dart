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
      width: MediaQuery.of(context).size.width * 0.61,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //item 1 - the first step

          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BB10('step 1', Colors.black, 1, TextAlign.center),
                Container(
                  height: 6,
                  decoration: BoxDecoration(
                      color: AppTheme.colors.blue200,
                      border: Border(
                          bottom: BorderSide(color: AppTheme.colors.blue500))),
                )
              ],
            ),
          ),

          //item 2 - the second step

          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
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
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
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
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
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

//step1 compeleted

class S1trackerC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.61,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //item 1 - the first step

          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.028,
                  height: MediaQuery.of(context).size.height * 0.028,
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

          //item 2 - the second step

          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
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
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
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
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
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
      width: MediaQuery.of(context).size.width * 0.61,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.028,
                  height: MediaQuery.of(context).size.height * 0.028,
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

          //item 2 - the second step

          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BB10('step 2', Colors.black, 1, TextAlign.center),
                Container(
                  height: 6,
                  decoration: BoxDecoration(
                      color: AppTheme.colors.blue200,
                      border: Border(
                          bottom: BorderSide(color: AppTheme.colors.blue500))),
                )
              ],
            ),
          ),

          //item 3 - the third step

          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
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
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
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

// second step completed

class S2trackerC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.61,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //item 1 - the first step
          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.028,
                  height: MediaQuery.of(context).size.height * 0.028,
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

          //item 2 - the second step

          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.028,
                  height: MediaQuery.of(context).size.height * 0.028,
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
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
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
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
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
      width: MediaQuery.of(context).size.width * 0.61,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //item 1 - the first step
          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.028,
                  height: MediaQuery.of(context).size.height * 0.028,
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

          //item 2 - the second step

          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.028,
                  height: MediaQuery.of(context).size.height * 0.028,
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
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BB10('step 3', Colors.black, 1, TextAlign.center),
                Container(
                  height: 6,
                  decoration: BoxDecoration(
                      color: AppTheme.colors.blue200,
                      border: Border(
                          bottom: BorderSide(color: AppTheme.colors.blue500))),
                )
              ],
            ),
          ),

          //item 4 - the fourth step

          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
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

//third step completed
class S3trackerC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.61,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //item 1 - the first step
          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.028,
                  height: MediaQuery.of(context).size.height * 0.028,
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

          //item 2 - the second step

          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.028,
                  height: MediaQuery.of(context).size.height * 0.028,
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
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.028,
                  height: MediaQuery.of(context).size.height * 0.028,
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
          //item 4 - the fourth step

          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
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
      width: MediaQuery.of(context).size.width * 0.61,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //item 1 - the first step
          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.028,
                  height: MediaQuery.of(context).size.height * 0.028,
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

          //item 2 - the second step

          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.028,
                  height: MediaQuery.of(context).size.height * 0.028,
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
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.028,
                  height: MediaQuery.of(context).size.height * 0.028,
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

          //item 4 - the final step

          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BB10('step 4', Colors.black, 1, TextAlign.center),
                Container(
                  height: 6,
                  decoration: BoxDecoration(
                      color: AppTheme.colors.blue200,
                      border: Border(
                          bottom: BorderSide(color: AppTheme.colors.blue500))),
                )
              ],
            ),
          ),
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
      width: MediaQuery.of(context).size.width * 0.61,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //item 1 - the first step
          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.028,
                  height: MediaQuery.of(context).size.height * 0.028,
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

          //item 2 - the second step

          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.028,
                  height: MediaQuery.of(context).size.height * 0.028,
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
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.028,
                  height: MediaQuery.of(context).size.height * 0.028,
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
          //item 4 - the fourth step

          Container(
            width: MediaQuery.of(context).size.width * 0.142,
            height: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.028,
                  height: MediaQuery.of(context).size.height * 0.028,
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
        ],
      ),
    );
  }
}
