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

class CityPage extends StatefulWidget {
  const CityPage({super.key, required this.city});

  final String city;

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  final AutoScrollController autoScrollController = AutoScrollController();
  int currentIndex = 0;

  get getCity {
    return cities.firstWhere((element) => element['name'] == widget.city);
  }

  get getContent {
    switch (widget.city) {
      case 'Berlin':
        return 'Willkommen in Berlin, der pulsierenden Hauptstadt Deutschlands! Bei Umzug Profis Bayern verstehen wir, dass ein Umzug in diese dynamische Metropole eine aufregende, aber auch anspruchsvolle Aufgabe sein kann. Wir bieten Ihnen maßgeschneiderte Lösungen für Privatumzüge, Firmenumzüge und sogar internationale Fernumzüge, damit Sie Ihren Umzug stressfrei genießen können. Zusätzlich zu unseren Umzugsdienstleistungen bieten wir auch Entrümpelungsdienste an, um Ihren Wohn- oder Arbeitsraum optimal vorzubereiten. Vertrauen Sie uns auch für die Montage Ihres USM Haller Möbels und sichere Einlagerungsmöglichkeiten für Ihre wertvollen Besitztümer.';

      case 'München':
        return 'Willkommen in München, der charmanten bayerischen Hauptstadt! Bei Umzug Profis Bayern sind wir stolz darauf, Ihnen einen erstklassigen Umzugsservice anzubieten, der auf Ihre individuellen Bedürfnisse zugeschnitten ist. Egal, ob Sie einen Privatumzug in eine gemütliche Wohnung in Schwabing planen oder einen Firmenumzug in das lebhafte Stadtzentrum durchführen müssen, wir sind für Sie da. Unsere Dienstleistungen umfassen nicht nur Umzüge, sondern auch professionelle Entrümpelungen, Fernumzüge, fachgerechte Montage von USM Haller Möbeln und sichere Einlagerungsoptionen.';

      case 'Hamburg':
        return 'Herzlich willkommen in Hamburg, der lebendigen Hafenstadt im Norden Deutschlands! Bei Umzug Profis Bayern wissen wir, dass jeder Umzug einzigartig ist, und deshalb bieten wir Ihnen maßgeschneiderte Umzugslösungen für Ihren Umzug nach Hamburg. Von Privatumzügen in gemütliche Altbauwohnungen bis hin zu Firmenumzügen in moderne Bürokomplexe - wir kümmern uns um jeden Schritt Ihres Umzugsprozesses. Darüber hinaus bieten wir professionelle Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsmöglichkeiten, um Ihnen ein stressfreies Umzugserlebnis zu ermöglichen.';

      case 'Frankfurt':
        return 'Willkommen in Frankfurt, der pulsierenden Finanzmetropole Deutschlands! Umzug Profis Bayern steht Ihnen zur Seite, um Ihren Umzug nach Frankfurt reibungslos und effizient zu gestalten. Egal, ob Sie eine Privatwohnung in der Innenstadt oder ein Büro in einem Wolkenkratzer beziehen, unsere erfahrenen Umzugsspezialisten stehen Ihnen zur Seite. Zusätzlich zu unseren Privatumzügen und Firmenumzügen bieten wir auch Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsmöglichkeiten an, damit Ihr Umzug nach Frankfurt stressfrei verläuft.';

      case 'Köln':
        return 'Herzlich willkommen in Köln, der lebendigen Domstadt am Rhein! Umzug Profis Bayern begleitet Sie gerne auf Ihrem Umzug nach Köln und bietet Ihnen maßgeschneiderte Umzugslösungen für Privat- und Firmenumzüge. Egal, ob Sie in eine charmante Altbauwohnung im Belgischen Viertel oder in ein modernes Bürogebäude am Rheinufer ziehen, wir sorgen für einen reibungslosen Übergang. Neben Umzügen bieten wir auch professionelle Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsoptionen an, um Ihren Umzug nach Köln so stressfrei wie möglich zu gestalten.';

      case 'Stuttgart':
        return 'Willkommen in Stuttgart, der grünen Oase im Herzen von Baden-Württemberg! Bei Umzug Profis Bayern verstehen wir, dass ein Umzug nach Stuttgart eine aufregende neue Phase in Ihrem Leben markiert. Wir stehen Ihnen zur Seite, um diesen Übergang so reibungslos wie möglich zu gestalten. Unser erfahrenes Team bietet Ihnen maßgeschneiderte Umzugslösungen für Privatumzüge, Firmenumzüge und Fernumzüge. Darüber hinaus bieten wir Entrümpelungsdienste, Montage von USM Haller Möbeln und sichere Einlagerungsmöglichkeiten, um Ihren Umzug nach Stuttgart zu einem stressfreien Erlebnis zu machen.';

      case 'Düsseldorf':
        return 'Herzlich willkommen in Düsseldorf, der modebewussten Landeshauptstadt Nordrhein-Westfalens! Umzug Profis Bayern steht Ihnen zur Seite, um Ihren Umzug nach Düsseldorf so angenehm wie möglich zu gestalten. Ob Sie eine neue Wohnung in der trendigen Altstadt beziehen oder ein Büro im modernen Medienhafen einrichten, wir bieten maßgeschneiderte Umzugslösungen für Privat- und Firmenkunden. Zusätzlich zu unseren Umzugsdienstleistungen bieten wir auch professionelle Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsoptionen an, um Ihnen ein stressfreies Umzugserlebnis zu ermöglichen.';

      case 'Leipzig':
        return 'Willkommen in Leipzig, der geschichtsträchtigen Stadt im Herzen Sachsens! Umzug Profis Bayern begleitet Sie gerne auf Ihrem Umzug nach Leipzig und bietet Ihnen einen umfassenden Umzugsservice, der auf Ihre individuellen Bedürfnisse zugeschnitten ist. Egal, ob Sie in eine charmante Altbauwohnung im Zentrum ziehen oder ein Büro in einem der aufstrebenden Stadtteile eröffnen, wir stehen Ihnen zur Seite. Neben Umzügen bieten wir auch Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsmöglichkeiten an, damit Ihr Umzug nach Leipzig reibungslos verläuft.';

      case 'Dresden':
        return 'Herzlich willkommen in Dresden, der bezaubernden Landeshauptstadt von Sachsen! Umzug Profis Bayern unterstützt Sie bei Ihrem Umzug nach Dresden und bietet Ihnen einen erstklassigen Umzugsservice, der auf Ihre Bedürfnisse zugeschnitten ist. Egal, ob Sie in eine historische Wohnung in der Altstadt ziehen oder ein Büro in einem der aufstrebenden Stadtviertel eröffnen, wir sind für Sie da. Neben unseren Umzugsdienstleistungen bieten wir auch professionelle Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsoptionen an, um Ihnen ein stressfreies Umzugserlebnis zu ermöglichen.';

      case 'Nürnberg':
        return 'Willkommen in Nürnberg, der charmanten Stadt in Bayern mit einer reichen Geschichte! Umzug Profis Bayern begleitet Sie gerne auf Ihrem Umzug nach Nürnberg und bietet Ihnen maßgeschneiderte Umzugslösungen für Privat- und Firmenumzüge. Egal, ob Sie in eine gemütliche Wohnung in der Altstadt ziehen oder ein Büro in einem der modernen Geschäftsviertel eröffnen, wir sind für Sie da. Neben unseren Umzugsdienstleistungen bieten wir auch Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsoptionen an, um Ihren Umzug nach Nürnberg so stressfrei wie möglich zu gestalten.';

      case 'Wien':
        return 'Willkommen in Wien, der prächtigen Hauptstadt Österreichs! Umzug Profis Bayern begleitet Sie gerne auf Ihrem Umzug nach Wien und bietet Ihnen maßgeschneiderte Umzugslösungen für Privat- und Firmenumzüge. Egal, ob Sie in eine elegante Altbauwohnung im Zentrum ziehen oder ein Büro in einem der lebendigen Viertel eröffnen, wir stehen Ihnen zur Seite. Neben unseren Umzugsdienstleistungen bieten wir auch professionelle Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsmöglichkeiten an, um Ihren Umzug nach Wien so stressfrei wie möglich zu gestalten.';

      case 'Salzburg':
        return 'Herzlich willkommen in Salzburg, der malerischen Stadt im Herzen von Österreich! Umzug Profis Bayern unterstützt Sie gerne bei Ihrem Umzug nach Salzburg und bietet Ihnen einen erstklassigen Umzugsservice, der auf Ihre individuellen Bedürfnisse zugeschnitten ist. Egal, ob Sie in eine historische Wohnung in der Altstadt ziehen oder ein Büro in einem der charmanten Stadtviertel eröffnen, wir sind für Sie da. Neben unseren Umzugsdienstleistungen bieten wir auch professionelle Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsoptionen an, um Ihren Umzug nach Salzburg reibungslos zu gestalten.';

      case 'Bonn':
        return 'Willkommen in Bonn, der lebendigen Stadt am Rhein! Umzug Profis Bayern begleitet Sie gerne auf Ihrem Umzug nach Bonn und bietet Ihnen maßgeschneiderte Umzugslösungen für Privat- und Firmenumzüge. Egal, ob Sie in eine moderne Wohnung im Zentrum ziehen oder ein Büro in einem der geschäftigen Viertel eröffnen, wir stehen Ihnen zur Seite. Neben unseren Umzugsdienstleistungen bieten wir auch professionelle Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsmöglichkeiten an, um Ihren Umzug nach Bonn so stressfrei wie möglich zu gestalten.';

      case 'Augsburg':
        return 'Herzlich willkommen in Augsburg, der historischen Stadt in Bayern! Umzug Profis Bayern unterstützt Sie gerne bei Ihrem Umzug nach Augsburg und bietet Ihnen einen erstklassigen Umzugsservice, der auf Ihre individuellen Bedürfnisse zugeschnitten ist. Egal, ob Sie in eine charmante Altbauwohnung in der Altstadt ziehen oder ein Büro in einem der modernen Geschäftsviertel eröffnen, wir sind für Sie da. Neben unseren Umzugsdienstleistungen bieten wir auch professionelle Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsoptionen an, um Ihren Umzug nach Augsburg so stressfrei wie möglich zu gestalten.';

      case 'Lindau':
        return 'Willkommen in Lindau, der idyllischen Stadt am Bodensee! Umzug Profis Bayern begleitet Sie gerne auf Ihrem Umzug nach Lindau und bietet Ihnen maßgeschneiderte Umzugslösungen für Privat- und Firmenumzüge. Egal, ob Sie in eine charmante Wohnung in der Altstadt ziehen oder ein Büro in einem der malerischen Viertel eröffnen, wir stehen Ihnen zur Seite. Neben unseren Umzugsdienstleistungen bieten wir auch professionelle Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsmöglichkeiten an, um Ihren Umzug nach Lindau so stressfrei wie möglich zu gestalten.';

      case 'Basel':
        return 'Herzlich willkommen in Basel, der kulturellen Metropole der Schweiz! Umzug Profis Bayern unterstützt Sie gerne bei Ihrem Umzug nach Basel und bietet Ihnen einen erstklassigen Umzugsservice, der auf Ihre individuellen Bedürfnisse zugeschnitten ist. Egal, ob Sie in eine moderne Wohnung in der Innenstadt ziehen oder ein Büro in einem der dynamischen Viertel eröffnen, wir sind für Sie da. Neben unseren Umzugsdienstleistungen bieten wir auch professionelle Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsoptionen an, um Ihren Umzug nach Basel so stressfrei wie möglich zu gestalten.';

      case 'Linz':
        return 'Willkommen in Linz, der dynamischen Stadt an der Donau! Umzug Profis Bayern begleitet Sie gerne auf Ihrem Umzug nach Linz und bietet Ihnen maßgeschneiderte Umzugslösungen für Privat- und Firmenumzüge. Egal, ob Sie in eine moderne Wohnung im Stadtzentrum ziehen oder ein Büro in einem der aufstrebenden Viertel eröffnen, wir stehen Ihnen zur Seite. Neben unseren Umzugsdienstleistungen bieten wir auch professionelle Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsmöglichkeiten an, um Ihren Umzug nach Linz so stressfrei wie möglich zu gestalten.';

      case 'Luxemburg':
        return 'Herzlich willkommen in Luxemburg, der multikulturellen Hauptstadt des gleichnamigen Großherzogtums! Umzug Profis Bayern unterstützt Sie gerne bei Ihrem Umzug nach Luxemburg und bietet Ihnen einen erstklassigen Umzugsservice, der auf Ihre individuellen Bedürfnisse zugeschnitten ist. Egal, ob Sie in eine moderne Wohnung im Stadtzentrum ziehen oder ein Büro in einem der geschäftigen Viertel eröffnen, wir sind für Sie da. Neben unseren Umzugsdienstleistungen bieten wir auch professionelle Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsoptionen an, um Ihren Umzug nach Luxemburg so stressfrei wie möglich zu gestalten.';

      case 'Warschau':
        return 'Willkommen in Warschau, der dynamischen Hauptstadt Polens! Umzug Profis Bayern begleitet Sie gerne auf Ihrem Umzug nach Warschau und bietet Ihnen maßgeschneiderte Umzugslösungen für Privat- und Firmenumzüge. Egal, ob Sie in eine moderne Wohnung im Stadtzentrum ziehen oder ein Büro in einem der aufstrebenden Geschäftsviertel eröffnen, wir stehen Ihnen zur Seite. Neben unseren Umzugsdienstleistungen bieten wir auch professionelle Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsmöglichkeiten an, um Ihren Umzug nach Warschau so stressfrei wie möglich zu gestalten.';

      case 'Prag':
        return 'Herzlich willkommen in Prag, der malerischen Hauptstadt Tschechiens! Umzug Profis Bayern unterstützt Sie gerne bei Ihrem Umzug nach Prag und bietet Ihnen einen erstklassigen Umzugsservice, der auf Ihre individuellen Bedürfnisse zugeschnitten ist. Egal, ob Sie in eine historische Wohnung in der Altstadt ziehen oder ein Büro in einem der belebten Viertel eröffnen, wir sind für Sie da. Neben unseren Umzugsdienstleistungen bieten wir auch professionelle Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsoptionen an, um Ihren Umzug nach Prag so stressfrei wie möglich zu gestalten.';

      case 'Pilsen':
        return 'Willkommen in Pilsen, der charmanten Stadt in Tschechien! Umzug Profis Bayern begleitet Sie gerne auf Ihrem Umzug nach Pilsen und bietet Ihnen maßgeschneiderte Umzugslösungen für Privat- und Firmenumzüge. Egal, ob Sie in eine gemütliche Wohnung im Stadtzentrum ziehen oder ein Büro in einem der aufstrebenden Viertel eröffnen, wir stehen Ihnen zur Seite. Neben unseren Umzugsdienstleistungen bieten wir auch professionelle Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsmöglichkeiten an, um Ihren Umzug nach Pilsen so stressfrei wie möglich zu gestalten.';

      case 'Cham':
        return 'Herzlich willkommen in Cham, der idyllischen Stadt im Herzen Bayerns! Umzug Profis Bayern unterstützt Sie gerne bei Ihrem Umzug nach Cham und bietet Ihnen einen erstklassigen Umzugsservice, der auf Ihre individuellen Bedürfnisse zugeschnitten ist. Egal, ob Sie in eine moderne Wohnung im Stadtzentrum ziehen oder ein Büro in einem der ruhigen Vororte eröffnen, wir sind für Sie da. Neben unseren Umzugsdienstleistungen bieten wir auch professionelle Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsoptionen an, um Ihren Umzug nach Cham so stressfrei wie möglich zu gestalten.';

      case 'Mannheim':
        return 'Herzlich willkommen in Mannheim, der lebendigen Stadt am Zusammenfluss von Rhein und Neckar! Umzug Profis Bayern begleitet Sie gerne auf Ihrem Umzug nach Mannheim und bietet Ihnen maßgeschneiderte Umzugslösungen für Privat- und Firmenumzüge. Egal, ob Sie in eine moderne Wohnung im Stadtzentrum ziehen oder ein Büro in einem der aufstrebenden Viertel eröffnen, wir stehen Ihnen zur Seite. Neben unseren Umzugsdienstleistungen bieten wir auch professionelle Entrümpelungsdienste, Fernumzüge, Montage von USM Haller Möbeln und sichere Einlagerungsmöglichkeiten an, um Ihren Umzug nach Mannheim so stressfrei wie möglich zu gestalten.';
    }
  }

  List cities = [
    {
      'name': 'Berlin',
      'img': 'assets/img/berlin.jpg',
    },
    {
      'name': 'München',
      'img': 'assets/img/muenchen.jpg',
    },
    {
      'name': 'Bonn',
      'img': 'assets/img/bonn.jpg',
    },
    {
      'name': 'Cham',
      'img': 'assets/img/cham.jpg',
    },
    {
      'name': 'Dresden',
      'img': 'assets/img/dresden.jpg',
    },
    {
      'name': 'Düsseldorf',
      'img': 'assets/img/duesseldorf.jpg',
    },
    {
      'name': 'Frankfurt',
      'img': 'assets/img/frankfurt.jpg',
    },
    {
      'name': 'Hamburg',
      'img': 'assets/img/hamburg.jpg',
    },
    {
      'name': 'Köln',
      'img': 'assets/img/koeln.jpg',
    },
    {
      'name': 'Leipzig',
      'img': 'assets/img/leipzig.jpg',
    },
    {
      'name': 'Linz',
      'img': 'assets/img/linz.jpg',
    },
    {
      'name': 'Mannheim',
      'img': 'assets/img/mannheim.jpg',
    },
    {
      'name': 'Luxemburg',
      'img': 'assets/img/luxemburg.jpg',
    },
    {
      'name': 'Pilsen',
      'img': 'assets/img/pilsen.jpg',
    },
    {
      'name': 'Prag',
      'img': 'assets/img/prag.jpg',
    },
    {
      'name': 'Stuttgart',
      'img': 'assets/img/stuttgart.jpg',
    },
    {
      'name': 'Warschau',
      'img': 'assets/img/warschau.jpg',
    },
    {
      'name': 'Salzburg',
      'img': 'assets/img/salzburg.jpg',
    },
    {
      'name': 'Wien',
      'img': 'assets/img/wien.jpg',
    }
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
        scrollController: autoScrollController,
      ),
      backgroundColor: const Color.fromRGBO(160, 160, 161, 1),
      body: Stack(
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
                            items: List.generate(
                              cities.length - 1,
                              (index) {
                                final list = cities
                                    .where((element) =>
                                        element['name'] !=
                                        cities[index]['name'])
                                    .toList();

                                return GestureDetector(
                                  onTap: () {
                                    context.go('/?city=${list[index]['name']}');
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
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 300,
                                        height: 200,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              list[index]['img'],
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(15),
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
                                            list[index]['name'],
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            options: CarouselOptions(
                              aspectRatio: 1.6,
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
                              const Gap(300),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.city,
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
                              if (context.breakpoint > LayoutBreakpoint.sm)
                                Expanded(
                                  child: Image.asset(
                                    getCity['img'],
                                  ),
                                ),
                            ],
                          ),
                          if (context.breakpoint <= LayoutBreakpoint.xs)
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: SizedBox(
                                height: 215,
                                width: MediaQuery.of(context).size.width,
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: CarouselSlider(
                                        carouselController: controller,
                                        items: List.generate(
                                          cities.length,
                                          (index) {
                                            return Opacity(
                                              opacity: currentIndex == index
                                                  ? 1
                                                  : 0.5,
                                              child: GestureDetector(
                                                onTap: () {
                                                  context.go(
                                                      '/?city=${cities[index]['name']}');
                                                },
                                                child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                        top: 15,
                                                        left: 15,
                                                      ),
                                                      child: Container(
                                                        width: 300,
                                                        height: 200,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .secondary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 300,
                                                      height: 200,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                            cities[index]
                                                                ['img'],
                                                          ),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                        width: 300,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(15),
                                                        decoration:
                                                            const BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    15),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    15),
                                                          ),
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Colors
                                                                  .transparent,
                                                              Colors.black,
                                                            ],
                                                            begin: Alignment
                                                                .topCenter,
                                                            end: Alignment
                                                                .bottomCenter,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          cities[index]['name'],
                                                          style:
                                                              const TextStyle(
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
                                          autoPlayInterval:
                                              const Duration(seconds: 5),
                                          viewportFraction:
                                              context.layout.value(
                                            xs: 0.7,
                                            sm: 0.6,
                                            md: 0.4,
                                            lg: 0.3,
                                          ),
                                          aspectRatio: 1.6,
                                          enlargeCenterPage:
                                              context.breakpoint <
                                                  LayoutBreakpoint.md,
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
                                          const Gap(210),
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
                          if (context.breakpoint > LayoutBreakpoint.sm)
                            Row(
                              children: [
                                ActionButton(
                                  text: 'JETZT KONTAKT AUFNEHMEN',
                                  width: 260,
                                  onPressed: openProfile,
                                ),
                                const Gap(20),
                                ActionButton(
                                  text: 'ERFAHRE MEHR ÜBER UNS',
                                  width: 260,
                                  onPressed: () {
                                    context.go(Uri(path: '/', queryParameters: {
                                      '#': 'about',
                                    }).toString());
                                  },
                                ),
                              ],
                            )
                          else
                            Column(
                              children: [
                                ActionButton(
                                  text: 'JETZT KONTAKT AUFNEHMEN',
                                  width: 260,
                                  onPressed: openProfile,
                                ),
                                const Gap(20),
                                ActionButton(
                                  text: 'ERFAHRE MEHR ÜBER UNS',
                                  width: 260,
                                  onPressed: () {
                                    context.go(Uri(path: '/', queryParameters: {
                                      '#': 'about',
                                    }).toString());
                                  },
                                ),
                              ],
                            ),
                          const Gap(20),
                          RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              style: const TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                const TextSpan(
                                  text: 'Willkommen bei Umzug Profis ',
                                ),
                                TextSpan(
                                  text: 'Bayern!',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Gap(20),
                          const Text(
                            'Wir sind Ihre vertrauenswürdigen Partner für einen reibungslosen und stressfreien Umzug in Bayern und darüber hinaus. Unsere breite Palette von Dienstleistungen wird Ihren Umzug zu einem angenehmen Erlebnis machen.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const Gap(20),
                          Text(
                            'Firmenumzug:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                              fontSize: 18,
                            ),
                          ),
                          const Text(
                            'Ein nahtloser Übergang für Ihr Unternehmen ist unser Ziel. Wir übernehmen die komplette Organisation Ihres Firmenumzugs, damit Sie sich auf Ihr Kerngeschäft konzentrieren können. Von der Planung bis zur Durchführung, wir sind für Sie da.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const Gap(20),
                          Text(
                            'Fernumzug:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                              fontSize: 18,
                            ),
                          ),
                          const Text(
                            'Ob in eine neue Stadt oder ein neues Land, unsere Fernumzugsspezialisten sorgen dafür, dass Ihr Umzug problemlos verläuft. Wir kümmern uns um alle Details, damit Sie sich entspannt zurücklehnen können, während wir Ihren Umzug bewältigen.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const Gap(20),
                          Text(
                            'USM Haller Montage:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                              fontSize: 18,
                            ),
                          ),
                          const Text(
                            'Verleihen Sie Ihrem neuen Raum Stil und Funktionalität mit unseren professionellen USM Haller Montagediensten. Unsere Experten stellen sicher, dass Ihre Möbel sicher und korrekt montiert werden, damit Sie sich sofort zuhause fühlen.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const Gap(20),
                          Text(
                            'Einlagerung:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                              fontSize: 18,
                            ),
                          ),
                          const Text(
                            'Brauchen Sie zusätzlichen Stauraum? Unsere sicheren und klimatisierten Lagermöglichkeiten bieten Platz für Ihre persönlichen oder geschäftlichen Gegenstände. Vertrauen Sie uns, um Ihre Sachen sicher aufzubewahren, bis Sie sie wieder benötigen.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const Gap(20),
                          Text(
                            'Privatumzug:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                              fontSize: 18,
                            ),
                          ),
                          const Text(
                            'Ihr Zuhause ist unser Anliegen. Wir bieten maßgeschneiderte Privatumzugslösungen an, die auf Ihre Bedürfnisse abgestimmt sind. Lassen Sie uns Ihren Umzug zu einem stressfreien Erlebnis machen, damit Sie sich auf das freuen können, was vor Ihnen liegt.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const Gap(20),
                          Text(
                            'Entrümpelung:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                              fontSize: 18,
                            ),
                          ),
                          const Text(
                            'Wir helfen Ihnen, Platz zu schaffen und Ballast loszuwerden. Unsere Entrümpelungsdienste sorgen dafür, dass Ihr Zuhause oder Büro vor einem Umzug oder einer Renovierung frei von überflüssigem Ballast ist. Lassen Sie uns aufräumen, während Sie sich auf Ihren neuen Anfang freuen.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const Gap(20),
                          const Text(
                            'Verlassen Sie sich auf Umzug Profis Bayern, um Ihren Umzug zu einem Erfolg zu machen. Kontaktieren Sie uns noch heute für eine maßgeschneiderte Lösung für Ihre Umzugsbedürfnisse.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
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
