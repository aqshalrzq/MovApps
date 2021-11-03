import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_apps/components/color.dart';

Widget runningSlider(String movie, String name, String estimation) {
  ColorApps colorContent = ColorApps();

  return Container(
    margin: const EdgeInsets.only(right: 8),
    height: 320,
    width: 200,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image(
            height: 200,
            width: 200,
            fit: BoxFit.cover,
            image: NetworkImage(movie),
          ),
        ),
        LinearProgressIndicator(
          minHeight: 4,
          value: 0.7,
          valueColor: AlwaysStoppedAnimation(colorContent.colorGreen),
          backgroundColor: colorContent.colorWhite,
        ),
        Container(
          width: 200,
          decoration: BoxDecoration(
              color: colorContent.colorBlackDark.withOpacity(0.5),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8))),
          child: Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 4),
            child: Icon(
              Icons.play_arrow,
              color: colorContent.colorWhite,
              size: 24,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.montserrat(
                    color: colorContent.colorWhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                estimation,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.montserrat(
                    color: colorContent.colorWhite.withOpacity(0.5),
                    fontSize: 12,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
