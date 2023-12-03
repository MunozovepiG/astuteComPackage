import 'package:flutter/material.dart';

import '../astute_components.dart';

class HeadingTemplate extends StatelessWidget {
  @override
  final String headingText;
  final Color headingColor;
  final String subheadingText;

  HeadingTemplate(this.headingText, this.headingColor, this.subheadingText);
  Widget build(BuildContext context) {
    return Column(
      children: [
        StandardTopSpace(),
        CBButton(),
        SS16(),
        BTM36(headingText, headingColor, 1),
        SH18(subheadingText, headingColor, 1)
      ],
    );
  }
}

//Centred picture + heading + tracker + subheading

class PHTSHeader extends StatelessWidget {
  final String imageUrl;
  final bool showTracker; // the controller

  PHTSHeader(this.imageUrl, this.showTracker);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StandardTopSpace(),
        CBButton(),
        //profile image

        getCircleImage(imageUrl),

        MS24(),
        SH25('title', AppTheme.colors.blue500, 1),
        SS16(),
        //the conditional fields

        if (showTracker) S1trackerC(),
        SS36(),
        BBLM14('Subheading', Colors.black, 1, TextAlign.center)
      ],
    );
  }
}

//the avtar
Container getCircleImage(String imageUrl) {
  return Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
      shape: BoxShape.circle,
    ),
  );
}

//the header set one (back button, avtar, heading, tracker, subheading)

class BAHTSh extends StatelessWidget {
  final String imageUrl;
  final bool s1TrackerIC;
  final bool s1TrackerC;
  final bool s4TrackerC;
  final String title;
  final String subheading;
  final bool backButton;

  BAHTSh(this.imageUrl, this.s1TrackerIC, this.s1TrackerC, this.s4TrackerC,
      this.title, this.subheading, this.backButton);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(children: [
        StandardTopSpace(),
        if (backButton) CBButton(),

        //profile image

        // getCircleImage(imageUrl),
        if (s1TrackerC) S1trackerC(),
        if (s1TrackerIC) S1trackerIC(),
        if (s4TrackerC) S4trackerC(),
        MS24(),
        SH25(title, AppTheme.colors.blue500, 1),

        MS24(),
        BBLM14(subheading, Colors.black, 1, TextAlign.center)
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
      this.subheading);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(children: [
        LS64(),
        if (backButton) CBButton(),
        SS16(),
        if (s1trackerC) S1trackerC(),
        if (s1trackerIC) S1trackerIC(),
        if (s2trackerC) S2trackerC(),
        if (s2trackerIC) S2trackerIC(),
        if (s3trackerC) S3trackerC(),
        if (s3trackerIC) S3trackerIC(),
        if (s4trackerIC) S4trackerIC(),
        SS16(),
        BTM36(title, titleColor, 1),
        SH18(caption, captionColor, 1),
        MS24(),
        BBLM14(subheading, Colors.black, 1, TextAlign.center),
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

  HeaderwAction(
      this.imageUrl, this.pageHeadng, this.buttonText, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(children: [
        SS36(),
        CBButton(),
        SS8(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            getCircleImage(imageUrl),
          ],
        ),
        SS16(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BBLM14(pageHeadng, Colors.black, 1, TextAlign.center),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BasicPlainTextButton(
              color: AppTheme.colors.green800,
              text: buttonText,
              onPressed: onPressed,
              textColor: AppTheme.colors.green800,
            ),
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

  TrackingHeading(this.color, this.heading, this.description);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SS36(),
        CBButton(),
        SS16(),
        BBLM14(heading, color, 1, TextAlign.center),
        BB10(description, color, 1, TextAlign.center),
      ]),
    );
  }
}
