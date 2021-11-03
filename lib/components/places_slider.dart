import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_apps/components/color.dart';

Widget placesSlider(String img, String movieName, String estimation) {

  ColorApps colorContent = ColorApps();

  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: NetworkImage(img),
            fit: BoxFit.cover
          )
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              movieName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.montserrat(
                  color: colorContent.colorWhite,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              estimation,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.montserrat(
                  color: colorContent.colorWhite.withOpacity(0.5),
                  fontSize: 12,
                  fontWeight: FontWeight.w300
              ),
            ),
          ],
        ),
      )
    ],
  );
}