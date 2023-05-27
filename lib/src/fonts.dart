import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

// the branding texts

class BTL60 extends StatelessWidget {
  @override
  final String text;
  final Color? color;
  final int? maxLines;

  BTL60(this.text, this.color, this.maxLines);

  Widget build(BuildContext context) {
    return AutoSizeText('text',
        maxLines: maxLines,
        style:
            GoogleFonts.yesevaOne(fontSize: 60, color: color ?? Colors.black));
  }
}

class BTM16 extends StatelessWidget {
  @override
  final String title;
  final Color? color;
  final int? maxLines;
  BTM16(this.title, this.color, this.maxLines);

  Widget build(BuildContext context) {
    return AutoSizeText(title,
        maxLines: maxLines,
        style: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
        ));
  }
}

class BTM36 extends StatelessWidget {
  @override
  final String title;
  final Color? color;
  final int? maxLines;
  BTM36(this.title, this.color, this.maxLines);

  Widget build(BuildContext context) {
    return AutoSizeText(title,
        maxLines: maxLines,
        textAlign: TextAlign.center,
        style:
            GoogleFonts.yesevaOne(fontSize: 36, color: color ?? Colors.black));
  }
}

// subheadings

class SH25 extends StatelessWidget {
  @override
  final String title;
  final Color? color;
  final int maxLines;
  SH25(this.title, this.color, this.maxLines);

  Widget build(BuildContext context) {
    return AutoSizeText(title,
        maxLines: maxLines,
        style: GoogleFonts.montserrat(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: color ?? Colors.black));
  }
}

class SH18 extends StatelessWidget {
  @override
  final String title;
  final Color? color;
  final int maxLines;
  SH18(this.title, this.color, this.maxLines);

  Widget build(BuildContext context) {
    return AutoSizeText(title,
        maxLines: maxLines,
        style: GoogleFonts.montserrat(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: color ?? Colors.black));
  }
}

class SH12 extends StatelessWidget {
  @override
  final String title;
  final Color? color;
  final int maxLines;
  SH12(this.title, this.color, this.maxLines);

  Widget build(BuildContext context) {
    return AutoSizeText(title,
        maxLines: maxLines,
        style: GoogleFonts.montserrat(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: color ?? Colors.black));
  }
}

//body text

class BBLM14 extends StatelessWidget {
  @override
  final String title;
  final Color? color;
  final int maxLines;
  BBLM14(this.title, this.color, this.maxLines);

  Widget build(BuildContext context) {
    return AutoSizeText(title,
        maxLines: maxLines,
        style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: color ?? Colors.black));
  }
}

class BBRM14 extends StatelessWidget {
  @override
  final String title;
  final Color? color;
  final int maxLines;
  BBRM14(this.title, this.color, this.maxLines);

  Widget build(BuildContext context) {
    return AutoSizeText(title,
        maxLines: maxLines,
        style:
            GoogleFonts.montserrat(fontSize: 14, color: color ?? Colors.black));
  }
}

class BBRS12 extends StatelessWidget {
  @override
  final String title;
  final Color? color;
  final int maxLines;
  BBRS12(this.title, this.color, this.maxLines);

  Widget build(BuildContext context) {
    return AutoSizeText(title,
        maxLines: maxLines,
        style:
            GoogleFonts.montserrat(fontSize: 12, color: color ?? Colors.black));
  }
}

class BBBS12 extends StatelessWidget {
  @override
  final String title;
  final Color? color;
  final int maxLines;
  BBBS12(this.title, this.color, this.maxLines);

  Widget build(BuildContext context) {
    return AutoSizeText(title,
        maxLines: maxLines,
        style: GoogleFonts.montserrat(
            fontSize: 12,
            color: color ?? Colors.black,
            fontWeight: FontWeight.bold));
  }
}

class BB10 extends StatelessWidget {
  @override
  final String title;
  final Color? color;
  final int maxLines;
  BB10(this.title, this.color, this.maxLines);

  Widget build(BuildContext context) {
    return AutoSizeText(title,
        maxLines: maxLines,
        style: GoogleFonts.montserrat(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: color ?? Colors.black));
  }
}

class BR10 extends StatelessWidget {
  @override
  final String title;
  final Color? color;
  final int maxLines;
  BR10(this.title, this.color, this.maxLines);

  Widget build(BuildContext context) {
    return AutoSizeText(title,
        maxLines: maxLines,
        style:
            GoogleFonts.montserrat(fontSize: 10, color: color ?? Colors.black));
  }
}

//button text

class TB8 extends StatelessWidget {
  @override
  final String title;
  final Color? color;
  final int maxLines;
  TB8(this.title, this.color, this.maxLines);

  Widget build(BuildContext context) {
    return AutoSizeText(title,
        maxLines: maxLines,
        style: GoogleFonts.montserrat(
            fontSize: 8,
            fontWeight: FontWeight.bold,
            color: color ?? Colors.black));
  }
}

class TBM14 extends StatelessWidget {
  @override
  final String title;
  final Color? color;
  final int maxLines;
  TBM14(this.title, this.color, this.maxLines);

  Widget build(BuildContext context) {
    return AutoSizeText(title,
        maxLines: maxLines,
        style: GoogleFonts.roboto(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: color ?? Colors.black));
  }
}

//text + icon font

//Lable fonts
//input lable field
class ILM12 extends StatelessWidget {
  @override
  final String title;
  final Color? color;
  final int maxLines;
  ILM12(this.title, this.color, this.maxLines);

  Widget build(BuildContext context) {
    return AutoSizeText(title,
        maxLines: maxLines,
        style: GoogleFonts.roboto(fontSize: 12, color: color ?? Colors.black));
  }
}

class PLS10 extends StatelessWidget {
  @override
  final String title;
  final Color? color;
  final int maxLines;
  PLS10(this.title, this.color, this.maxLines);

  Widget build(BuildContext context) {
    return AutoSizeText(title,
        maxLines: maxLines,
        style: GoogleFonts.roboto(
          fontSize: 10,
          color: color ?? Colors.black,
          fontWeight: FontWeight.w500,
        ));
  }
}
