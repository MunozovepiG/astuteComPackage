import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../astute_components.dart';

//the header set one (back button, avtar, heading, tracker, subheading)

class BAHTSh extends StatelessWidget {
  final String imageUrl;
  final bool s1TrackerA;
  final bool s1TrackerIC;
  final bool s1TrackerC;
  final bool s3TrackerA;
  final bool s4TrackerA;
  final bool s4TrackerC;
  final String title;

  final VoidCallback cancelAction;
  bool? backButton = true;

  BAHTSh(
      {required this.imageUrl,
      required this.s1TrackerA,
      required this.s1TrackerIC,
      required this.s1TrackerC,
      required this.s3TrackerA,
      required this.s4TrackerA,
      required this.s4TrackerC,
      required this.cancelAction,
      required this.title,
      this.backButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(children: [
        StandardTopSpace(),

        CBButton(
          backButton: backButton,
          cancelAction: cancelAction,
        ),

        SS32(),
        //profile image

        // getCircleImage(imageUrl),
        if (s1TrackerA) S1trackerIC(),
        if (s1TrackerIC) S1trackerC(),
        if (s1TrackerC) S2trackerIC(),

        if (s3TrackerA) S3trackerIC(),
        if (s4TrackerA) S4trackerIC(),

        if (s4TrackerC) S4trackerC(),
        MS24(),
        SH25(
          title,
          Colors.black,
          3,
        ),
      ]),
    );
  }
}

//header 2
//back button, heading, caption, tracker, subheading

class BHCTSh extends StatelessWidget {
  final bool backButton;
  final String title;
  final String caption;
  final Color titleColor;
  final Color captionColor;
  final bool s1trackerC;
  final bool s1trackerIC;
  final bool s2trackerC;
  final bool s2trackerIC;
  final bool s3trackerC;
  final bool s3trackerIC;
  final bool s4trackerIC;
  final String subheading;
  final VoidCallback cancelAction;

  BHCTSh(
      this.backButton,
      this.title,
      this.caption,
      this.titleColor,
      this.captionColor,
      this.s1trackerC,
      this.s1trackerIC,
      this.s2trackerC,
      this.s2trackerIC,
      this.s3trackerC,
      this.s3trackerIC,
      this.s4trackerIC,
      this.subheading,
      this.cancelAction);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(children: [
        LS64(),
        if (backButton)
          CBButton(
            cancelAction: cancelAction,
          ),
        SS16(),
        if (s1trackerC) S1trackerC(),
        if (s1trackerIC) S1trackerIC(),
        if (s2trackerC) S2trackerC(),
        if (s2trackerIC) S2trackerIC(),
        if (s3trackerC) S3trackerC(),
        if (s3trackerIC) S3trackerIC(),
        if (s4trackerIC) S4trackerIC(),
        SS16(),
        BTM36(title, titleColor, 3),
        SH18(caption, captionColor, 1),
        MS24(),
        BBLM14(subheading, Colors.black, 3, TextAlign.left),
      ]),
    );
  }
}

//header for the profile page
//back button, left avtar, heading , and left text button

class HeaderwAction extends StatelessWidget {
  final String imageUrl;
  final String pageHeadng;
  final String buttonText;
  final VoidCallback onPressed;
  final VoidCallback cancelAction;

  HeaderwAction(this.imageUrl, this.pageHeadng, this.buttonText, this.onPressed,
      this.cancelAction);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(children: [
        SS36(),
        CBButton(
          cancelAction: cancelAction,
        ),
        SS8(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // getCircleImage(imageUrl),
          ],
        ),
        SS16(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BBLM14(pageHeadng, Colors.black, 3, TextAlign.left),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BasicPlainTextButton(
                color: AppTheme.colors.green800,
                text: buttonText,
                onPressed: onPressed,
                textColor: AppTheme.colors.green800),
          ],
        ),
        SS16(),
      ]),
    );
  }
}

//tracking headders
//back button, heading , description

class TrackingHeading extends StatelessWidget {
  final Color color;
  final String heading;
  final String description;
  final VoidCallback cancelAction;

  TrackingHeading(
      this.color, this.heading, this.description, this.cancelAction);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SS36(),
        CBButton(
          cancelAction: cancelAction,
        ),
        SS16(),
        BBLM14(heading, color, 1, TextAlign.center),
        BB10(description, color, 1, TextAlign.center),
      ]),
    );
  }
}
