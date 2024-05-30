import 'package:astute_components/astute_components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AstuteChip extends StatelessWidget {
  final String chipText;

  AstuteChip(this.chipText);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: ShapeDecoration(
          color: AppTheme.colors.blue500,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0x8C1C1B1F)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Text(
            chipText,
            style: GoogleFonts.roboto(
                fontSize: 9.19,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),
        ));
  }
}
