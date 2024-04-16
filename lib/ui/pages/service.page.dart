import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:layout/layout.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:website/ui/home/section_seven.home.dart';
import 'package:website/ui/widgets/action_button.dart';
import 'package:website/ui/widgets/contact_floating_button.dart';
import 'package:website/widgets/menu.widget.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key, required this.service});

  final String service;

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  final AutoScrollController autoScrollController = AutoScrollController();

  get getContent {
    switch (widget.service) {
      case 'Privatumzug':
        return 'Erleben Sie einen reibungslosen Übergang in Ihr neues Zuhause mit unseren professionellen Privatumzugsservices. Von der Planung bis zur Durchführung kümmern sich unsere erfahrenen Umzugsspezialisten um jedes Detail, damit Sie sich entspannt zurücklehnen können. Verlassen Sie sich auf uns, um Ihren Umzug stressfrei und effizient zu gestalten.';

      case 'Firmenumzug':
        return 'Ihr Unternehmen verdient einen reibungslosen Umzug, der Ihren Betrieb nicht beeinträchtigt. Mit unseren maßgeschneiderten Firmenumzugslösungen minimieren wir Ausfallzeiten und maximieren die Effizienz. Vertrauen Sie den Umzug Profis Bayern, um Ihren Geschäftsumzug nahtlos und erfolgreich zu gestalten, damit Sie sich auf das konzentrieren können, was wirklich zählt: Ihr Unternehmen.';

      case 'Entrümpelung':
        return 'Befreien Sie sich von unnötigem Ballast und schaffen Sie Platz für Neues mit unserer professionellen Entrümpelungsservice. Unsere geschulten Teams kümmern sich um jede Art von Entrümpelungsaufgabe, sei es im Privathaushalt oder im gewerblichen Bereich. Nutzen Sie unseren Service, um sich von altem Gerümpel zu trennen und Ihrem Raum neues Leben einzuhauchen.';

      case 'Fernumzug':
        return 'Entdecken Sie neue Horizonte ohne den Stress eines Fernumzugs. Unsere erfahrenen Umzugsspezialisten kümmern sich um alle Aspekte Ihres Fernumzugs, von der Planung bis zur Ausführung. Egal, ob es sich um einen Umzug innerhalb Deutschlands oder international handelt, verlassen Sie sich auf die Umzug Profis Bayern, um Ihren Fernumzug reibungslos und effizient zu gestalten.';

      case 'USM Haller Montage':
        return 'Verleihen Sie Ihrem neuen Raum Stil und Funktionalität mit unserer professionellen USM Haller Montageservice. Unsere Experten kennen sich bestens mit der Montage dieser hochwertigen Möbel aus und sorgen dafür, dass Ihr Raum genau nach Ihren Wünschen gestaltet wird. Lassen Sie uns Ihnen helfen, Ihren Raum mit unseren erstklassigen Montagedienstleistungen zu verwandeln.';

      case 'Einlagerung':
        return 'Benötigen Sie zusätzlichen Lagerraum für Ihre Möbel oder persönlichen Gegenstände? Unsere sicheren und zuverlässigen Einlagerungslösungen bieten Ihnen die Flexibilität, die Sie benötigen. Egal, ob Sie kurz- oder langfristige Lagerung benötigen, verlassen Sie sich auf die Umzug Profis Bayern, um Ihre wertvollen Besitztümer sicher aufzubewahren.';
    }
  }

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

  List<bool> isHoverList = List.filled(6, false);
  CarouselController controller = CarouselController();

  openProfile() {
    showDialog(
      context: context,
      builder: (builder) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          padding: context.breakpoint > LayoutBreakpoint.xs
              ? const EdgeInsets.all(20.0)
              : null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.close_rounded,
                    size: 50,
                    shadows: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Material(
                  color: Colors.white,
                  child: SingleChildScrollView(
                      child: SectionSevenHome(
                    modal: context.breakpoint == LayoutBreakpoint.xs,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Menu(
        isService: true,
        scrollController: autoScrollController,
      ),
      endDrawer: SideBar(
        isService: true,
        buildContext: context,
        scrollController: autoScrollController,
      ),
      backgroundColor: const Color.fromRGBO(160, 160, 161, 1),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Row(
            children: [
              if (context.breakpoint > LayoutBreakpoint.xs)
                Expanded(
                  flex: 2,
                  child: LayoutBuilder(
                    builder: (context, constraints) => Stack(
                      children: [
                        Container(
                          height: double.maxFinite,
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.white,
                                Color.fromRGBO(160, 160, 161, 1),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                          child: CarouselSlider(
                            carouselController: controller,
                            items: services.map((service) {
                              return MouseRegion(
                                cursor: SystemMouseCursors.click,
                                onHover: (event) {
                                  setState(() {
                                    isHoverList[services.indexOf(service)] =
                                        true;
                                  });
                                },
                                onExit: (event) {
                                  setState(() {
                                    isHoverList[services.indexOf(service)] =
                                        false;
                                  });
                                },
                                child: GestureDetector(
                                  onTap: () {
                                    context.go(Uri(
                                      path: '/',
                                      queryParameters: {'service': service},
                                    ).toString());
                                  },
                                  child: LayoutBuilder(
                                    builder: (context, constraints) =>
                                        Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/img/box-2.webp'),
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 40,
                                        ),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: constraints.maxHeight *
                                                    0.17,
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: LayoutBuilder(
                                                  builder:
                                                      (context, constraints) {
                                                    return Text(
                                                      service,
                                                      style: TextStyle(
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 24,
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
                                                  'assets/img/privatumzueg.webp',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              const Gap(10),
                                              SizedBox(
                                                height: 80,
                                                child: RichText(
                                                  textAlign: TextAlign.center,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            servicesDescription[
                                                                services.indexOf(
                                                                    service)],
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: ' Mehr',
                                                        style: TextStyle(
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                          fontSize: 14,
                                                          shadows: const [
                                                            Shadow(
                                                              color:
                                                                  Colors.black,
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
                              aspectRatio: 0.85,
                              enlargeFactor: 0.5,
                              disableCenter: true,
                              viewportFraction: 0.5,
                              enlargeCenterPage: true,
                              autoPlayInterval: const Duration(seconds: 5),
                              enlargeStrategy: CenterPageEnlargeStrategy.scale,
                              autoPlay: true,
                              scrollDirection: Axis.vertical,
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {
                                    controller.previousPage();
                                  },
                                  child: const RotatedBox(
                                    quarterTurns: 1,
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      size: 50,
                                    ),
                                  ),
                                ),
                              ),
                              Gap(constraints.maxWidth * 0.9),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {
                                    controller.nextPage();
                                  },
                                  child: const RotatedBox(
                                    quarterTurns: 3,
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      size: 50,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              Expanded(
                flex: 6,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 20,
                  ),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(160, 160, 161, 1),
                        Color.fromRGBO(122, 122, 122, 1),
                        Color.fromRGBO(65, 65, 65, 1),
                        Color(0xFF2d2d2f),
                      ],
                      stops: [0.03, 0.1, 0.8, 1],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: context.breakpoint > LayoutBreakpoint.xs ? 50 : 0,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              children: [
                                const TextSpan(
                                  text: 'Willkommen bei Umzug Profis',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                  ),
                                ),
                                TextSpan(
                                  text: ' Bayern! ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 40,
                                  ),
                                ),
                                const TextSpan(
                                  text:
                                      'Wir bieten erstklassige Umzugs-, Entrümpelungs-, Fernumzugs-, USM Haller Montage- und Einlagerungsdienste von Bayern aus an – und das zu ehrlichen Preisen. Egal ob innerhalb Bayerns, deutschlandweit oder sogar in ganz Europa, wir sorgen für einen reibungslosen Umzug, ohne versteckte Kosten. Entdecken Sie unsere Dienstleistungen und lassen Sie uns Ihnen helfen, Ihren Umzug stressfrei zu gestalten.',
                                )
                              ],
                            ),
                          ),
                          const Gap(20),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.service,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Gap(20),
                                    Text(
                                      getContent,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Gap(20),
                              if (context.breakpoint > LayoutBreakpoint.xs)
                                Expanded(
                                  child: Image.asset(
                                    'assets/img/privatumzueg.webp',
                                  ),
                                ),
                            ],
                          ),
                          if (context.breakpoint <= LayoutBreakpoint.xs)
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Image.asset(
                                'assets/img/privatumzueg.webp',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          if (context.breakpoint <= LayoutBreakpoint.xs)
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.35,
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: CarouselSlider(
                                        carouselController: controller,
                                        items: services.map((service) {
                                          return MouseRegion(
                                            cursor: SystemMouseCursors.click,
                                            onHover: (event) => setState(() {
                                              controller.stopAutoPlay();
                                            }),
                                            onEnter: (event) {
                                              setState(() {
                                                isHoverList[services
                                                    .indexOf(service)] = true;
                                              });
                                            },
                                            onExit: (event) {
                                              setState(() {
                                                isHoverList[services
                                                    .indexOf(service)] = false;
                                              });
                                              controller.startAutoPlay();
                                            },
                                            child: GestureDetector(
                                              onTap: () {
                                                context.go(Uri(
                                                  path: '/',
                                                  queryParameters: {
                                                    'service': service
                                                  },
                                                ).toString());
                                              },
                                              child: LayoutBuilder(
                                                builder:
                                                    (context, constraints) =>
                                                        Container(
                                                  width: constraints.maxHeight *
                                                      1.06024,
                                                  decoration:
                                                      const BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/img/box-2.webp'),
                                                      fit: BoxFit.fitHeight,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: context
                                                                  .breakpoint >
                                                              LayoutBreakpoint
                                                                  .xs
                                                          ? 40
                                                          : 20,
                                                    ),
                                                    child: Center(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width:
                                                                double.infinity,
                                                            height: constraints
                                                                    .maxHeight *
                                                                0.13,
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child:
                                                                LayoutBuilder(
                                                              builder: (context,
                                                                  constraints) {
                                                                return Text(
                                                                  service,
                                                                  style:
                                                                      TextStyle(
                                                                    color: Theme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        context.breakpoint >
                                                                                LayoutBreakpoint.xs
                                                                            ? 30
                                                                            : 18,
                                                                    shadows: const [
                                                                      Shadow(
                                                                        color: Colors
                                                                            .black,
                                                                        blurRadius:
                                                                            5,
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
                                                              'assets/img/privatumzueg.webp',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          const Gap(10),
                                                          SizedBox(
                                                            height: 70,
                                                            child: RichText(
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: servicesDescription[
                                                                        services
                                                                            .indexOf(service)],
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: context.breakpoint >
                                                                              LayoutBreakpoint.xs
                                                                          ? 20
                                                                          : 14,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        ' Mehr',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      fontSize: context.breakpoint >
                                                                              LayoutBreakpoint.xs
                                                                          ? 16
                                                                          : 14,
                                                                      shadows: const [
                                                                        Shadow(
                                                                          color:
                                                                              Colors.black,
                                                                          blurRadius:
                                                                              5,
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
                                          scrollPhysics:
                                              const ClampingScrollPhysics(),
                                          enlargeFactor: 0.5,
                                          autoPlayInterval:
                                              const Duration(seconds: 5),
                                          enlargeStrategy:
                                              CenterPageEnlargeStrategy.scale,
                                          aspectRatio: 540 / 509,
                                          viewportFraction:
                                              context.layout.value(
                                            xs: 0.7,
                                            sm: 0.6,
                                            md: 0.5,
                                            lg: 0.3,
                                          ),
                                          enlargeCenterPage: true,
                                          autoPlay: true,
                                        ),
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              controller.previousPage();
                                            },
                                            child: const Icon(
                                              Icons.arrow_back_ios,
                                              size: 50,
                                            ),
                                          ),
                                          Gap(context.breakpoint >
                                                  LayoutBreakpoint.xs
                                              ? 400
                                              : 200),
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
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          const Gap(50),
                          const Text(
                            'Bereit, Ihren Umzug stressfrei zu gestalten? Kontaktieren Sie die Umzug Profis Bayern noch heute und lassen Sie uns Ihnen helfen, Ihren Umzugstraum zu verwirklichen – ganz leicht!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const Gap(20),
                          ActionButton(
                            text: 'JETZT KONTAKT AUFNEHMEN',
                            width: 260,
                            onPressed: openProfile,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // contakt floating
          Positioned(
            bottom: 20,
            right: 20,
            child: ContactFloatingButton(context: context),
          ),
        ],
      ),
    );
  }
}
