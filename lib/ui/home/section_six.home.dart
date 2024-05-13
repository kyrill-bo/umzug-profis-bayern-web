import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:layout/layout.dart';

class SectionSixHome extends StatefulWidget {
  const SectionSixHome({super.key});

  @override
  State<SectionSixHome> createState() => _SectionSixHomeState();
}

class _SectionSixHomeState extends State<SectionSixHome> {
  CarouselController controller = CarouselController();
  int currentIndex = 0;

  List cities = [
    {
      'name': 'Berlin',
      'img': 'assets/img/berlin.webp',
    },
    {
      'name': 'München',
      'img': 'assets/img/muenchen.webp',
    },
    {
      'name': 'Bonn',
      'img': 'assets/img/bonn.webp',
    },
    {
      'name': 'Cham',
      'img': 'assets/img/cham.webp',
    },
    {
      'name': 'Dresden',
      'img': 'assets/img/dresden.webp',
    },
    {
      'name': 'Düsseldorf',
      'img': 'assets/img/duesseldorf.webp',
    },
    {
      'name': 'Frankfurt',
      'img': 'assets/img/frankfurt.webp',
    },
    {
      'name': 'Hamburg',
      'img': 'assets/img/hamburg.webp',
    },
    {
      'name': 'Köln',
      'img': 'assets/img/koeln.webp',
    },
    {
      'name': 'Leipzig',
      'img': 'assets/img/leipzig.webp',
    },
    {
      'name': 'Linz',
      'img': 'assets/img/linz.webp',
    },
    {
      'name': 'Mannheim',
      'img': 'assets/img/mannheim.webp',
    },
    {
      'name': 'Luxemburg',
      'img': 'assets/img/luxemburg.webp',
    },
    {
      'name': 'Pilsen',
      'img': 'assets/img/pilsen.webp',
    },
    {
      'name': 'Prag',
      'img': 'assets/img/prag.webp',
    },
    {
      'name': 'Stuttgart',
      'img': 'assets/img/stuttgart.webp',
    },
    {
      'name': 'Warschau',
      'img': 'assets/img/warschau.webp',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        vertical: 50,
        horizontal: context.breakpoint > LayoutBreakpoint.xs ? 100 : 0,
      ),
      child: Column(
        children: [
          if (context.breakpoint > LayoutBreakpoint.xs)
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(
                  height: 0.8,
                ),
                children: [
                  TextSpan(
                    text: 'National\n',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                    ),
                  ),
                  const TextSpan(
                    text: 'und International für Sie im Einsatz',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ],
              ),
            )
          else
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(
                  height: 0.8,
                ),
                children: [
                  TextSpan(
                    text: 'National & International\n',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const TextSpan(
                    text: 'für Sie im Einsatz',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
          const Gap(20),
          SizedBox(
            height: 215,
            width: context.breakpoint > LayoutBreakpoint.xs
                ? MediaQuery.of(context).size.width * 0.8
                : MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned.fill(
                  child: CarouselSlider(
                    carouselController: controller,
                    items: List.generate(
                      cities.length,
                      (index) {
                        return Opacity(
                          opacity: currentIndex == index ? 1 : 0.5,
                          child: GestureDetector(
                            onTap: () {
                              context.go('/?city=${cities[index]['name']}');
                            },
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 15,
                                    left: 15,
                                  ),
                                  child: Container(
                                    width: 300,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 300,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        cities[index]['img'],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    width: 300,
                                    padding: const EdgeInsets.all(15),
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      ),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.transparent,
                                          Colors.black,
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                    ),
                                    child: Text(
                                      cities[index]['name'],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    options: CarouselOptions(
                      autoPlayInterval: const Duration(seconds: 5),
                      viewportFraction: context.layout.value(
                        xs: 0.7,
                        sm: 0.6,
                        md: 0.4,
                        lg: 0.3,
                      ),
                      aspectRatio: 1.6,
                      enlargeCenterPage:
                          context.breakpoint < LayoutBreakpoint.md,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.previousPage();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 50,
                        ),
                      ),
                      Gap(context.breakpoint > LayoutBreakpoint.xs ? 400 : 250),
                      GestureDetector(
                        onTap: () {
                          controller.nextPage();
                        },
                        child: const RotatedBox(
                          quarterTurns: 2,
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 50,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
