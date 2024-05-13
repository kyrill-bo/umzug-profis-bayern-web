import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:layout/layout.dart';

class SectionTwoHome extends StatefulWidget {
  const SectionTwoHome({super.key});

  @override
  State<SectionTwoHome> createState() => _SectionTwoHomeState();
}

class _SectionTwoHomeState extends State<SectionTwoHome>
    with AutomaticKeepAliveClientMixin {
  List<String> services = [
    'Privatumzug',
    'Firmenumzug',
    'Entrümpelung',
    'Fernumzug',
    'USM Haller Montage',
    'Einlagerung',
  ];

  List<String> servicesDescription = [
    "Ein stressfreies Zuhause in Sicht! So funktioniert's",
    "Business ohne Unterbrechung. Wie!",
    "Raum für Neues schaffen. Auf die Kleinigkeiten kommt es an Warum?",
    "Entdecken Sie neue Horizonte. Hier kommt es auf die Erfahrung an!",
    "Stilvolle Raumgestaltung. Jede Schraube zählt!",
    "Sicherheit für Ihre Schätze. PRIVATSPHÄRE wird bei uns groß geschrieben!",
  ];

  List<String> servicesImg = [
    'assets/img/privatumzug.webp',
    'assets/img/firmenumzug.webp',
    'assets/img/entruempelung.webp',
    'assets/img/fernumzug.webp',
    'assets/img/haller-montage.webp',
    'assets/img/einlagerung.webp',
  ];

  List<bool> isHoverList = List.filled(6, false);
  CarouselController controller = CarouselController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      height: MediaQuery.of(context).size.height *
          (context.breakpoint > LayoutBreakpoint.xs ? 0.6 : 0.5),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 202, 202, 202),
            Color.fromARGB(255, 116, 116, 116),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                height: 0.8,
              ),
              children: [
                TextSpan(
                  text: 'Wie können wir\n',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                  ),
                ),
                const TextSpan(
                  text: 'behilflich sein?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ],
            ),
          ),
          const Gap(20),
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                CarouselSlider(
                  carouselController: controller,
                  items: services.map((service) {
                    return MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onHover: (event) => setState(() {
                        controller.stopAutoPlay();
                      }),
                      onEnter: (event) {
                        setState(() {
                          isHoverList[services.indexOf(service)] = true;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          isHoverList[services.indexOf(service)] = false;
                        });
                        controller.startAutoPlay();
                      },
                      child: GestureDetector(
                        onTap: () {
                          context.go(Uri(
                            path: '/',
                            queryParameters: {'service': service},
                          ).toString());
                        },
                        child: LayoutBuilder(
                          builder: (context, constraints) => Container(
                            // width: constraints.maxHeight * 1.06024,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/img/box-2.webp'),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal:
                                    context.breakpoint > LayoutBreakpoint.xs
                                        ? 40
                                        : 20,
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: constraints.maxHeight * 0.13,
                                      alignment: Alignment.bottomCenter,
                                      child: LayoutBuilder(
                                        builder: (context, constraints) {
                                          return Text(
                                            service,
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: context.breakpoint >
                                                      LayoutBreakpoint.xs
                                                  ? 30
                                                  : 18,
                                              shadows: const [
                                                Shadow(
                                                  color: Colors.black,
                                                  blurRadius: 5,
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    const Gap(10),
                                    Expanded(
                                      child: Image.asset(
                                        servicesImg[services.indexOf(
                                          service,
                                        )],
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Gap(10),
                                    SizedBox(
                                      height: 70,
                                      child: RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: servicesDescription[
                                                  services.indexOf(service)],
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: context.breakpoint >
                                                        LayoutBreakpoint.xs
                                                    ? 20
                                                    : 14,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' Mehr',
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontSize: context.breakpoint >
                                                        LayoutBreakpoint.xs
                                                    ? 16
                                                    : 14,
                                                shadows: const [
                                                  Shadow(
                                                    color: Colors.black,
                                                    blurRadius: 5,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const Gap(5),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    scrollPhysics: const ClampingScrollPhysics(),
                    enlargeFactor: 0.5,
                    autoPlayInterval: const Duration(seconds: 5),
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    aspectRatio: 540 / 509,
                    viewportFraction: context.layout.value(
                      xs: 0.65,
                      sm: 0.6,
                      md: 0.5,
                      lg: 0.3,
                    ),
                    enlargeCenterPage: true,
                    autoPlay: true,
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
                      Gap(context.breakpoint > LayoutBreakpoint.xs ? 400 : 200),
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
