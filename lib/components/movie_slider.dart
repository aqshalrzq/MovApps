import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_apps/components/color.dart';

Widget movieSlider(String image, String title, String estimation) {

  ColorApps colorContent = ColorApps();

  return Container(
    margin: const EdgeInsets.only(right: 8),
    width: 240,
    height: 300,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 240,
          height: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover)),
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
                title,
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
    ),
  );
}
