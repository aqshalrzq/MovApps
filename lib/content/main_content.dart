import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movie_apps/components/color.dart';
import 'package:movie_apps/components/list.dart';
import 'package:movie_apps/components/movie_slider.dart';
import 'package:movie_apps/components/places_slider.dart';
import 'package:movie_apps/components/running_slider.dart';

class MainContent extends StatefulWidget {
  @override
  _MainContentState createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  ColorApps colorContent = ColorApps();
  ListApps listContent = ListApps();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorContent.colorGreyDark,
      appBar: AppBar(
        backgroundColor: colorContent.colorBlackDark,
        centerTitle: true,
        title: Text(
          'MovApps',
          style: GoogleFonts.lato(color: colorContent.colorGreen),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: colorContent.colorWhite,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: colorContent.colorWhite,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // PROFILE AREA
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    margin: const EdgeInsets.only(right: 16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                          "https://envato-shoebox-0.imgix.net/9925/4a13-f771-4bd4-b2bb-c4d01be916ba/4H1A9896.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=800&s=a1e7a158ac907e27286471de0ceb38f2"
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Halo, Selamat Datang",
                        style: GoogleFonts.lato(
                          color: colorContent.colorWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "loremIpsum@gmail.com",
                        style: GoogleFonts.montserrat(
                            color: colorContent.colorWhite,
                            fontSize: 12,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Icon(
                    Icons.settings,
                    size: 36,
                    color: colorContent.colorWhite,
                  )
                ],
              ),
              const SizedBox(
                height: 36,
              ),
              // CAROUSEL LANDSCAPE IMAGE
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  'Yuk, liburan bareng!',
                  style: GoogleFonts.poppins(
                      color: colorContent.colorWhite,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              CarouselSlider(
                options: CarouselOptions(
                    enableInfiniteScroll: false,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.95,
                    height: 360,
                    enlargeCenterPage: true),
                items: [
                  placesSlider(listContent.listImageCarousel[0],
                      listContent.listImageTitle[0], listContent.listMovieEstimation[0]),
                  placesSlider(listContent.listImageCarousel[1],
                      listContent.listImageTitle[1], listContent.listMovieEstimation[1]),
                  placesSlider(listContent.listImageCarousel[2],
                      listContent.listImageTitle[2], listContent.listMovieEstimation[2]),
                  placesSlider(listContent.listImageCarousel[3],
                      listContent.listImageTitle[3], listContent.listMovieEstimation[3]),
                  placesSlider(listContent.listImageCarousel[4],
                      listContent.listImageTitle[4], listContent.listMovieEstimation[4]),
                ],
              ),
              // CAROUSEL POTRAIT IMAGE 01
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  'Rekomendasi untuk Anda',
                  style: GoogleFonts.poppins(
                      color: colorContent.colorWhite,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: Container(
                  height: 400,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      movieSlider(listContent.listMovieImage[0], listContent.listMovieTitle[0], listContent.listMovieEstimation[0]),
                      movieSlider(listContent.listMovieImage[1], listContent.listMovieTitle[1], listContent.listMovieEstimation[1]),
                      movieSlider(listContent.listMovieImage[2], listContent.listMovieTitle[2], listContent.listMovieEstimation[2]),
                      movieSlider(listContent.listMovieImage[3], listContent.listMovieTitle[3], listContent.listMovieEstimation[3]),
                      movieSlider(listContent.listMovieImage[4], listContent.listMovieTitle[4], listContent.listMovieEstimation[4])
                    ],
                  ),
                )
              ),
              // CAROUSEL POTRAIT IMAGE 01
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  'Lanjutkan Menonton',
                  style: GoogleFonts.poppins(
                      color: colorContent.colorWhite,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8),
                  child: Container(
                    height: 340,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        runningSlider(listContent.listMovieImage[1], listContent.listMovieTitle[1], listContent.listMovieEstimation[1]),
                        runningSlider(listContent.listMovieImage[2], listContent.listMovieTitle[2], listContent.listMovieEstimation[2]),
                        runningSlider(listContent.listMovieImage[3], listContent.listMovieTitle[3], listContent.listMovieEstimation[3]),
                        runningSlider(listContent.listMovieImage[4], listContent.listMovieTitle[4], listContent.listMovieEstimation[4]),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: colorContent.colorGreen,
        unselectedItemColor: colorContent.colorWhite,
        items: [
          BottomNavigationBarItem(
              backgroundColor: colorContent.colorBlackDark,
              title: const Text(
                'Home',
              ),
              icon: const Icon(Icons.home)),
          const BottomNavigationBarItem(
              title: Text(
                'Downloaded',
              ),
              icon: Icon(Icons.file_download)),
          const BottomNavigationBarItem(
              title: Text(
                'PlayList',
              ),
              icon: Icon(Icons.playlist_play)),
          BottomNavigationBarItem(
              backgroundColor: colorContent.colorGreyDark,
              title: const Text(
                'Account',
              ),
              icon: const Icon(Icons.person)),
        ],
      ),
    );
  }
}
